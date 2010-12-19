#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string>
#include <GL/gl.h>
#include <GL/glu.h>
#include <SDL/SDL.h>
#include "main.h"
#include "pgrid.h"
#include "image.h"
#include "workspace.h"
#include "editor.h"
#include "editortools.h"
#include "brush.h"


void t_editortool::mouse_motion_event(SDL_MouseMotionEvent &evt)
{
    mouse_img_pos= t_pgrid::getinstance()->current_workspace()->screen2img(evt.x, evt.y);
    mouse_buttons= evt.state;
    float zoom= 1.0/t_pgrid::getinstance()->current_workspace()->getzoom();
    lastmousemove.x= evt.xrel*zoom;
    lastmousemove.y= evt.yrel*zoom;
}

void t_editortool::mouse_button_event(SDL_MouseButtonEvent &evt)
{
    mouse_img_pos= t_pgrid::getinstance()->current_workspace()->screen2img(evt.x, evt.y);
    if(evt.type==SDL_MOUSEBUTTONUP) mouse_buttons&= ~(SDL_BUTTON(evt.button));
    else mouse_buttons|= SDL_BUTTON(evt.button);
}

void t_editortool::phys_tick(float time)
{
    if(editor->lerpmouse())
    {
	t_pgrid *g= t_pgrid::getinstance();
	vec v= g->getmousevel();
	v.mul(1.0/g->current_workspace()->getzoom());
	float t= g->phystime()*0.001 - g->framephystime()*0.001;
	v.mul(t);
	lerpedmousepos= g->current_workspace()->screen2img(int(g->mousepos.x), int(g->mousepos.y));
	lerpedmousepos.add(v);
    }
    else
	lerpedmousepos= mouse_img_pos;
}

void t_editortool::drawhint()
{
    t_brush *b= editor->getbrush();
    t_texture *t= b->gettexture();
    int bw= b->getwidth(),
    	bh= b->getheight();
    float tw= float(bw)/t->width,
    	  th= float(bh)/t->height;
    vec &mouse= t_pgrid::getinstance()->mousepos;
    float zoom= t_pgrid::getinstance()->current_workspace()->getzoom();
    float ix= mouse.x-(bw*GRIDGRANULARITY*zoom*.5),
	  iy= mouse.y-(bh*GRIDGRANULARITY*zoom*.5);
    
    t->bind();
    glEnable(GL_TEXTURE_2D);
    glMatrixMode(GL_TEXTURE);
    glLoadIdentity();
    
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_COLOR, GL_ONE_MINUS_SRC_COLOR);
    glColor4f(1.0, 1.0, 1.0, 1.0);
    
    //~ glEnable(GL_ALPHA_TEST);
    //~ glAlphaFunc(GL_GREATER, 0.7f);
    glDisable(GL_DEPTH_TEST);
    
    glBegin(GL_QUADS);
    glTexCoord2f(0, 0); glVertex2f(ix, iy);
    glTexCoord2f(tw, 0); glVertex2f(ix+bw*GRIDGRANULARITY*zoom, iy);
    glTexCoord2f(tw, th); glVertex2f(ix+bw*GRIDGRANULARITY*zoom, iy+bh*GRIDGRANULARITY*zoom);
    glTexCoord2f(0, th); glVertex2f(ix, iy+bh*GRIDGRANULARITY*zoom);
    glEnd();
    glDisable(GL_BLEND);
    //~ glDisable(GL_ALPHA_TEST);
}



void t_tool_addparticles::paint()
{
    t_particles *particles= t_pgrid::getinstance()->current_workspace()->image->current_layer()->particles;
    vec spd(smoothedmousedelta);
    spd.mul(5);
    float radius= editor->getbrush()->getwidth()*GRIDGRANULARITY*0.5;
    while(amountleft>0)
    {
	vec pos(lerpedmousepos);
	pos.random_deviation(radius);
	t_particle p= { pos, 0, spd };
	particles->add(p);
	amountleft-= 1.0;
    }
    amountleft= amount+amountleft;
}

void t_tool_addparticles::erase()
{
    if(amountleft<=0) return;
    
    t_particles *particles= t_pgrid::getinstance()->current_workspace()->image->current_layer()->particles;
    float radius= editor->getbrush()->getwidth()*GRIDGRANULARITY*0.5;
    for(int i= particles->particles.size()-1; i>=0; i--)
    {
	vec d= particles->particles[i].pos; d.sub(lerpedmousepos);
	if(d.squaredlen()<radius*radius)
	{
	    particles->remove(i);
	    amountleft-= 1.0;
	    if(amountleft<=0) break;
	}
    }
    if(amountleft<=0) amountleft= amount*0.5-amountleft;
}


void t_tool_addparticles::phys_tick(float time)
{
    t_editortool::phys_tick(time);
    if(mouse_buttons&(SDL_BUTTON(1)))
	paint();
    else if(mouse_buttons&SDL_BUTTON(3))
	erase();
}



// -------------------------

t_tool_push::t_tool_push(t_editor *e): t_editortool(e), intensity(6.0) { mouse_buttons= 0; }

void t_tool_push::mousepaint()
{
    t_grid *grid= t_pgrid::getinstance()->current_workspace()->image->current_layer()->grid;
    t_brush *brush= editor->getbrush();
    vec pos(mouse_img_pos.x - brush->getwidth()*GRIDGRANULARITY*0.5f, mouse_img_pos.y - brush->getheight()*GRIDGRANULARITY*0.5f);
    
    pos.mul(1.0f/GRIDGRANULARITY);
    
    grid->paint_antialiased_additive( pos, brush->getpixels(), 
				      brush->getwidth(), brush->getheight(), 
				      lastmousemove.x * (mouse_buttons&SDL_BUTTON(1)? intensity: -intensity),
				      t_gridpoint::IDX_SPEEDMOD_X );
    
    grid->paint_antialiased_additive( pos, brush->getpixels(), 
				      brush->getwidth(), brush->getheight(), 
				      lastmousemove.y * (mouse_buttons&SDL_BUTTON(1)? intensity: -intensity),
				      t_gridpoint::IDX_SPEEDMOD_Y );
}

void t_tool_push::mouse_button_event(SDL_MouseButtonEvent &evt)
{
    t_editortool::mouse_button_event(evt);
    if(mouse_buttons&(SDL_BUTTON(1)|SDL_BUTTON(3))) mousepaint();
}

void t_tool_push::mouse_motion_event(SDL_MouseMotionEvent &evt)
{
    t_editortool::mouse_motion_event(evt);
    if(mouse_buttons&(SDL_BUTTON(1)|SDL_BUTTON(3))) mousepaint();
}


// -------------------------------------------------


t_tool_drag::t_tool_drag(t_editor *e): t_editortool(e)
{
    mouse_buttons= 0;
}

//~ void t_tool_drag::mousepaint()
//~ {
    //~ t_grid *grid= t_pgrid::getinstance()->current_workspace()->image->current_layer()->grid;
    //~ t_brush *brush= editor->getbrush();
    //~ vec pos(mouse_img_pos.x - brush->getwidth()*GRIDGRANULARITY*0.5f, mouse_img_pos.y - brush->getheight()*GRIDGRANULARITY*0.5f);
    
    //~ pos.mul(1.0f/GRIDGRANULARITY);
    
    
    //~ vec mv(dir);
    //~ mv.mul(mouse_buttons&SDL_BUTTON(1)? intensity: -intensity);
    
    
    //~ grid->paint_antialiased_additive( pos, brush->getpixels(), 
				      //~ brush->getwidth(), brush->getheight(), 
				      //~ mv.x,
				      //~ t_gridpoint::IDX_SPEEDMOD_X );
    
    //~ grid->paint_antialiased_additive( pos, brush->getpixels(), 
				      //~ brush->getwidth(), brush->getheight(), 
				      //~ mv.y,
				      //~ t_gridpoint::IDX_SPEEDMOD_Y );
//~ }

void t_tool_drag::mouse_button_event(SDL_MouseButtonEvent &evt)
{
    t_editortool::mouse_button_event(evt);
}

void t_tool_drag::mouse_motion_event(SDL_MouseMotionEvent &evt)
{
    t_editortool::mouse_motion_event(evt);
    if(mouse_buttons&(SDL_BUTTON(1)|SDL_BUTTON(3)))
    {
	float zoom= t_pgrid::getinstance()->current_workspace()->getzoom();
	t_particles *particles= t_pgrid::getinstance()->current_workspace()->image->current_layer()->particles;
	float rx= evt.xrel/zoom, ry= evt.yrel/zoom;
	for(int i= particles->particles.size()-1; i>=0; i--)
	{
	    t_particle &p= particles->particles[i];
	    p.pos.x+= rx;
	    p.pos.y+= ry;
	    particles->clamp_particle(p);
	    particles->updatequad(i);
	}
    }
}

void t_tool_drag::phys_tick(float time)
{
    t_editortool::phys_tick(time);
}

