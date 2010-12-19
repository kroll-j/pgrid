#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <time.h>
#include <math.h>
#include <unistd.h>
#include <string>
#define GL_GLEXT_PROTOTYPES
#include <GL/gl.h>
#include <GL/glext.h>
#include <GL/glu.h>
#include <SDL/SDL.h>
#include <FreeImage.h>
#include "main.h"
#include "screen.h"
#include "pgrid.h"
#include "workspace.h"
#include "flux.h"
#include "gui.h"

flux_toolbar::flux_toolbar(t_texture *tex)
{
    enum
    {
	toolbar_width= 40, 
	icon_size= 40,
	icon_margin= 0,
    };
    
    texture= tex;
    flux_skin_frame::create(NOPARENT, 0,0, toolbar_width,48*1+8, 0,0, 64,64, texture, 16, ALIGN_LEFT|ALIGN_VCENTER);
    
    install_callbacks();
    
    int numtools= t_pgrid::getinstance()->editor->tools.size();
    for(int i= 0; i<numtools; i++)
    {
	flux_tool_button *button= new flux_tool_button(this, texture, 0,i*(icon_size+icon_margin)+icon_margin, icon_size,icon_size, 72,48*i, i, ALIGN_HCENTER);
	buttons.push_back(button);
    }
    
    wnd_setsize(id, toolbar_width,numtools*(icon_size+icon_margin)+icon_margin);
    select_button(buttons[t_pgrid::getinstance()->editor->selected_tool]);
}

int flux_toolbar::mouse_event(primitive *prim, int type, int x, int y, int btn)
{
    if(type==MOUSE_DOWN)
    {
    }
}



flux_stop_button::flux_stop_button(dword parent, int x, int y, t_texture *texture, int align)
{
    flux_skin_button::create(NOPARENT, x,y, 24,24, 24,24, 4, 
			     152, 0,
			     128,24, 152,24, 176,24, 
			     texture, align);
}

flux_pause_button::flux_pause_button(dword parent, int x, int y, t_texture *texture, int align)
{
    flux_skin_button::create(NOPARENT, x,y, 24,24, 24,24, 4, 
			     128, 0,
			     128,24, 152,24, 176,24, 
			     texture, align);
    icon2= new flux_skin_area(id, 0,0, 0,0, 176,0, 24,24, texture, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);
    icon2->set_color((flux_rgba){0xC0, 0xC0, 0xC0, 0xFF});
    icon->show(false);
}

flux_pause_button::~flux_pause_button()
{
    delete icon2;
}

void flux_pause_button::on_press(bool enabled)
{
    icon->show(enabled);
    icon->set_color(0xFFC0C0C0);
    icon2->show(!enabled);
    t_pgrid::getinstance()->pausephysics(enabled);
    
    timer_counter= 0;
    if(enabled) install_timer(550);
    else kill_timer();
}

void flux_pause_button::timer_event(int idtimer, dword time)
{
    if(++timer_counter&1)
    	icon->set_color(0xF0404040);
    else
    	icon->set_color(0xFFC0C0C0);
}


class flux_particle_color_slider: public flux_gradient_slider
{
    private:
	class flux_particle_properties *dlg;
	
    public:
	flux_particle_color_slider(dword parent, int x,int y, int w,int h, int align, t_texture *tex, 
				   float r1, float g1, float b1, float r2, float g2, float b2, class flux_particle_properties *d)
    	: flux_gradient_slider(parent, x,y, w,h, align, tex, r1, g1, b1, r2, g2, b2), dlg(d)
    	{
	}
	
	virtual void position_changing();
};

class flux_particle_size_draglabel: public flux_draglabel
{
    private:
    	
    public:
	flux_particle_size_draglabel(dword parent, int x, int y, int w, int h, int align= 0)
    	: flux_draglabel(parent, x,y, w,h, "Size", align)
    	{
	    changed(movement);
	}
	
	void changed(pos &movement)
	{
	    if(movement.x<-10*100) movement.x= -10*100;
	    if(movement.x>40*100) movement.x= 40*100;
	    float size= 10.0001+(movement.x*0.01);
	    
	    char text[128];
	    sprintf(text, "%.2fpx", size);
	    text_settext(value_display, text);
	    wnd_setwidth(value_display, font_gettextwidth(FONT_DEFAULT, text));
	    
	    t_pgrid::getinstance()->current_workspace()->image->current_layer()->particles->set_size(size);
	}
	
	virtual void on_drag_start() { changed(movement); }
	virtual void on_drag(struct pos &movement) { changed(movement); }
	virtual void on_drag_end(struct pos &movement) { changed(movement); }
};

class flux_particle_smoothness_draglabel: public flux_draglabel
{
    private:
    	
    public:
	flux_particle_smoothness_draglabel(dword parent, int x, int y, int w, int h, int align= 0)
    	: flux_draglabel(parent, x,y, w,h, "Smoothness", align)
    	{
	    changed(movement);
	}
	
	void changed(pos &movement)
	{
	    if(movement.x<-700) movement.x= -700;
	    if(movement.x>300) movement.x= 300;
	    float smoothness= .700001 + movement.x*0.001;
	    
	    char text[128];
	    sprintf(text, "%.1f%%", smoothness*100);
	    text_settext(value_display, text);
	    wnd_setwidth(value_display, font_gettextwidth(FONT_DEFAULT, text));
	    
	    t_pgrid::getinstance()->current_workspace()->image->current_layer()->particles->set_smoothness(smoothness);
	}
	
	virtual void on_drag_start() { changed(movement); }
	virtual void on_drag(struct pos &movement) { changed(movement); }
	virtual void on_drag_end(struct pos &movement) { changed(movement); }
};

class flux_particle_properties: public flux_rect
{
    private:
	union
	{
	    struct { flux_particle_color_slider *slider_r, *slider_g, *slider_b, *slider_a; };
	    flux_particle_color_slider *sliders[4];
	};
	flux_rect *color_rect;
	flux_particle_size_draglabel *size_draglabel;
	flux_particle_smoothness_draglabel *smoothness_draglabel;
    
    public:
	flux_particle_properties(dword parent, t_texture *misc_tex)
    	: flux_rect(parent, 200,40, 144,128, 0)
    	{
	    int y= 0;
	    slider_r= new flux_particle_color_slider(id, 0,y+0, 96,10, 0, misc_tex, 0,0,0, 1,0,0, this);
	    slider_g= new flux_particle_color_slider(id, 0,y+16, 96,10, 0, misc_tex, 0,0,0, 0,1,0, this);
	    slider_b= new flux_particle_color_slider(id, 0,y+32, 96,10, 0, misc_tex, 0,0,0, 0,0,1, this);
	    slider_a= new flux_particle_color_slider(id, 0,y+48, 96,10, 0, misc_tex, 0,0,0, 1,1,1, this);
	    color_rect= new flux_rect(id, 100,y+2, 40,56, 0xF0F000);
	    
	    size_draglabel= new flux_particle_size_draglabel(id, 0, y+64, 80,18, ALIGN_RIGHT);
	    smoothness_draglabel= new flux_particle_smoothness_draglabel(id, 0, y+76, 120,18, ALIGN_RIGHT);
	}
	
	~flux_particle_properties()
	{
	    delete[] sliders;
	}
	
	void slider_changing()
	{
	    byte color[]= { byte(slider_b->get_position()*255), byte(slider_g->get_position()*255), byte(slider_r->get_position()*255), 0 };
	    rect_setcolor(color_rect->get_id(), *(dword*)color);
	    
	    t_pgrid::getinstance()->current_workspace()->image->current_layer()->particles->setcolor(slider_r->get_position(), 
	    		slider_g->get_position(), slider_b->get_position(), slider_a->get_position());
	}
};

void flux_particle_color_slider::position_changing()
{
    dlg->slider_changing();
}


flux_gui::flux_gui()
{
    flux_init();
    setsyscolor(COL_BAKGND, TRANSL_0);
    
    create_frame_groups();
    create_textinput_group();
    create_button_groups();
    create_titleframe();
    
    misc_tex= t_pgrid::load_texture("misc.png");
    toolbar_tex= t_pgrid::load_texture("toolbar.png");
    
    toolbar= new flux_toolbar(toolbar_tex);
    pause_button= new flux_pause_button(NOPARENT, 0,0, toolbar_tex, ALIGN_LEFT|ALIGN_BOTTOM);
    stop_button= new flux_stop_button(NOPARENT, 22,0, toolbar_tex, ALIGN_LEFT|ALIGN_BOTTOM);
    
    testdraglabel= new flux_speed_draglabel(NOPARENT, 0,0, 200,16, "Physics Speed", ALIGN_RIGHT|ALIGN_VCENTER);
    
    new flux_particle_properties(NOPARENT, misc_tex);
    
    //~ dword rc= create_rect(NOPARENT, 300,0, 260,160, 0x808080|TRANSL_2, 0);
    //~ clone_frame("minititlebar", rc);
    //~ create_text(rc, 4,4, 250,160, 
//~ "Weather report for: Leipzig, Germany.\n"
//~ "\n"
//~ "Observation station located in Leipzig, Germany\n"
//~ "Last update: 31.05.2008 at 16:50:00 Local Time.\n"
//~ "\n"
//~ "Temperature\n"
//~ "	Temperature: 29 °C\n"
//~ "	Windchill: 29 °C\n"
//~ "	Description: Thunder in the Vicinity\n"
//~ "	Dew point: 17 °C\n"
//~ ,
    //~ COL_ITEMTEXT, FONT_DEFAULT, ALIGN_LEFT);
}

flux_gui::~flux_gui()
{
    delete toolbar;
    delete pause_button;
    delete stop_button;
    delete toolbar_tex;
    delete misc_tex;
}

void flux_gui::tick(float time)
{
}






