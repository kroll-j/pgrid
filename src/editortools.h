#ifndef EDITORTOOLS_H
#define EDITORTOOLS_H

#include "main.h"
#include "editor.h"
#include "grid.h"


class t_tool_paintgrid_singlepixel: public t_editortool
{
    private:
    
    public:
	t_tool_paintgrid_singlepixel(t_editor *e): t_editortool(e)
    	{
	    mouse_buttons= 0;
	}
	
	void phys_tick(float time)
	{
	    t_editortool::phys_tick(time);
	    
	    t_grid *grid= t_pgrid::getinstance()->current_workspace()->image->current_layer()->grid;
	    
	    float intensity= 50;
	    float f= (mouse_buttons&SDL_BUTTON(1)? +intensity*time: mouse_buttons&SDL_BUTTON(3)? -intensity*time: 0);
	    
	    if(f) for(int i= 0; i<10; i++)
	    {
		img_vec pos(mouse_img_pos);
	    	pos.random_deviation(50);
		grid->paint_pixel_additive(pos, f);
	    }
	}
};
    


class t_tool_paintgrid_spraycan: public t_editortool
{
    private:
	float intensity;
    	float radius;
    	int amount;
    
    public:
	t_tool_paintgrid_spraycan(t_editor *e): t_editortool(e), intensity(0.25), radius(3.0), amount(8)
    	{
	    mouse_buttons= 0;
	}
	
	void phys_tick(float time)
	{
	    t_editortool::phys_tick(time);

	    if(mouse_buttons&(SDL_BUTTON(1)|SDL_BUTTON(3)))
	    {
		t_grid *grid= t_pgrid::getinstance()->current_workspace()->image->current_layer()->grid;
		t_brush *brush= editor->getbrush();
		for(int i= 0; i<amount; i++)
		{
		    vec pos(mouse_img_pos.x - brush->getwidth()*GRIDGRANULARITY*0.5, mouse_img_pos.y - brush->getheight()*GRIDGRANULARITY*0.5);
		    pos.random_deviation(radius);
		    grid->paint_pixels_additive( pos.mul(1.0/GRIDGRANULARITY), 
						 brush->getpixels(), brush->getwidth(), brush->getheight(), mouse_buttons&SDL_BUTTON(1)? time*intensity: -time*intensity );
		}
	    }
	}
};

class t_tool_paintgrid_brush: public t_editortool
{
    private:
	float intensity;
    
    public:
	t_tool_paintgrid_brush(t_editor *e): t_editortool(e), intensity(0.05)
    	{
	    mouse_buttons= 0;
	}
	
	void phys_tick(float time)
	{
	    t_editortool::phys_tick(time);
	}
	
	void mousepaint()
	{
	    t_grid *grid= t_pgrid::getinstance()->current_workspace()->image->current_layer()->grid;
	    t_brush *brush= editor->getbrush();
	    vec pos(lerpedmousepos.x - brush->getwidth()*GRIDGRANULARITY*0.5, lerpedmousepos.y - brush->getheight()*GRIDGRANULARITY*0.5);
	    grid->paint_pixels_additive( pos.mul(1.0/GRIDGRANULARITY), brush->getpixels(), brush->getwidth(), brush->getheight(), mouse_buttons&SDL_BUTTON(1)? intensity: -intensity );
	}
	
	void mouse_button_event(SDL_MouseButtonEvent &evt)
	{
	    t_editortool::mouse_button_event(evt);
	    if(mouse_buttons&(SDL_BUTTON(1)|SDL_BUTTON(3))) mousepaint();
	}
	
	void mouse_motion_event(SDL_MouseMotionEvent &evt)
	{
	    t_editortool::mouse_motion_event(evt);
	    if(mouse_buttons&(SDL_BUTTON(1)|SDL_BUTTON(3))) mousepaint();
	}
};

class t_tool_push: public t_editortool
{
    private:
	float intensity;
    
    public:
	t_tool_push(t_editor *e);
	
	void phys_tick(float time)
	{
	    t_editortool::phys_tick(time);
	}
	
	void mousepaint();
	
	void mouse_button_event(SDL_MouseButtonEvent &evt);
	
	void mouse_motion_event(SDL_MouseMotionEvent &evt);
};

/*
todo: 	Tool das Klumpen verteilt (linke Maustaste), oder hervorruft (rechte Maustaste)
class t_tool_diffuse: public t_editortool
{
    private:
	float intensity;
    	polarvec dir;
    
    public:
	t_tool_diffuse(t_editor *e);
	
	void phys_tick(float time);
	
	void mousepaint();
	
	void mouse_button_event(SDL_MouseButtonEvent &evt);
	
	void mouse_motion_event(SDL_MouseMotionEvent &evt);
};
*/

class t_tool_drag: public t_editortool
{
    private:
    
    public:
	t_tool_drag(t_editor *e);
	
	void phys_tick(float time);
	
	void mouse_button_event(SDL_MouseButtonEvent &evt);
	
	void mouse_motion_event(SDL_MouseMotionEvent &evt);
};

class t_tool_addparticles: public t_editortool
{
    private:
	vec smoothedmousedelta;

	float radius;
    	float amount;
    	float amountleft;
  	
    public:
	t_tool_addparticles(t_editor *e): t_editortool(e)
    	{
	    mouse_buttons= 0;
	    radius= 35, amount= 10, amountleft= 0;
	}
	
	void phys_tick(float time);
	
	void paint();
	void erase();
	
	void mouse_button_event(SDL_MouseButtonEvent &evt)
	{
	    t_editortool::mouse_button_event(evt);
	}
	
	void mouse_motion_event(SDL_MouseMotionEvent &evt)
	{
	    t_editortool::mouse_motion_event(evt);
	    
	    vec v(evt.xrel-smoothedmousedelta.x, evt.yrel-smoothedmousedelta.y);
	    v.mul(0.5);
	    smoothedmousedelta.add(v);
	}
};





#endif
