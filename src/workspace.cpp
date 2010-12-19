#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <time.h>
#include <math.h>
#include <unistd.h>
#include <string>
#include <GL/gl.h>
#include <GL/glext.h>
#include <GL/glu.h>
#include <SDL/SDL.h>
#include "main.h"
#include "workspace.h"

t_texture *t_workspace::bgtexture;

t_workspace::t_workspace(t_pgrid *_pgrid): pgrid(_pgrid), zoom(0.5), dragging(false)
{
    image= new t_image(this);
    centerimage();
    
    if(!bgtexture)
    {
	//~ #define tsize 32
	
	//~ u8 bgtex[tsize*tsize];
	//~ mkblobu8(bgtex, tsize, 0.5);
	//~ bgtexture= new t_texture(tsize, tsize, 8, bgtex, true);
	
	//~ #undef tsize
	
	#define tsize 16
	u8 bgtex[tsize*tsize];
	memset(bgtex, 16, tsize*tsize);
	for(int i= 0; i<tsize; i++)
	{
	    if(!(i&1)) bgtex[i]+= 32,
		       bgtex[i*tsize]+= 32,
		       bgtex[i*tsize+tsize/2]+= 16,
		       bgtex[i+tsize/2*tsize]+= 16;
	}
	bgtexture= new t_texture(tsize, tsize, 8, bgtex, true);
	#undef tsize
    }
}

t_workspace::~t_workspace()
{
    delete image;
}

void t_workspace::bgrect(float x, float y, float rgt, float btm)
{
    double tx= -floor(img.x-x)/bgtexture->width, 
	   ty= -floor(img.y-y)/bgtexture->height,
	   tw= float(rgt-x)/bgtexture->width,
	   th= float(btm-y)/bgtexture->height;
    glBegin(GL_QUADS);
    glTexCoord2f(tx+0,  ty+0);	glVertex2f(x, y);
    glTexCoord2f(tx+tw, ty+0);	glVertex2f(rgt, y);
    glTexCoord2f(tx+tw, ty+th);	glVertex2f(rgt, btm);
    glTexCoord2f(tx+0,  ty+th);	glVertex2f(x, btm);
    glEnd();
}
	
void t_workspace::renderbg()
{
    bgtexture->bind();
    glColor3f(1, 1, 1);
    glDepthMask(false);
    glEnable(GL_TEXTURE_2D);
    glMatrixMode(GL_TEXTURE);
    glLoadIdentity();
    glScalef(1.0/zoom, 1.0/zoom, 1);
    
    glDisable(GL_BLEND);
    glColor3f(1,1,1);
    bgrect(0,0, 	pgrid->screen.width,img.y);
    bgrect(0,img.y, 	img.x,image->height);
    bgrect(img.x+image->width*zoom,img.y, pgrid->screen.width,pgrid->screen.height);
    bgrect(img.x,img.y+image->height*zoom, img.x+image->width*zoom,pgrid->screen.height);
    
    glDisable(GL_TEXTURE_2D);
    glDepthMask(true);
}

void t_workspace::render()
{
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    if(!pgrid->screen.ortho)
    {
	glScalef(1, -1, 1);
	glTranslatef(-pgrid->screen.width/2, -pgrid->screen.height/2, -pgrid->screen.planedist);
    }
    
    glEnable(GL_DEPTH_TEST);
    renderbg();
    
    glMatrixMode(GL_MODELVIEW);
    glPushMatrix();

    //~ gluLookAt(0,1,1, 0,0,0, 0,1,0);

    glTranslatef(img.x, img.y, 0);
    glScalef(zoom, zoom, 100.0f*zoom);
    
    float x= 0, y= 0, w= image->width, h= image->height;
    image->render(x,y, w,h);
    
    glMatrixMode(GL_MODELVIEW);
    glPopMatrix();
}


void t_workspace::keyboard_event(SDL_KeyboardEvent &event)
{
    int step= pgrid->getkeystate(SDLK_LSHIFT)||pgrid->getkeystate(SDLK_RSHIFT)? 16: 
	      pgrid->getkeystate(SDLK_LCTRL)||pgrid->getkeystate(SDLK_RCTRL)? 4: 
	      8;
    if(event.state==SDL_PRESSED) switch(event.keysym.sym)
    {
	case SDLK_RIGHT:	img.x-= step; break;
	case SDLK_LEFT:		img.x+= step; break;
	case SDLK_DOWN:		img.y-= step; break;
	case SDLK_UP:		img.y+= step; break;
	case SDLK_KP_PLUS:
	case SDLK_PLUS:		dozoom(2.0); break;
	case SDLK_KP_MINUS:
	case SDLK_MINUS:	dozoom(0.5); break;
	case 'c':		centerimage(); break;
	case 'f':		pgrid->screen.togglefullscreen(); centerimage(); break;
	case 'o':		if(pgrid->screen.ortho) puts("Perspective Mode"), pgrid->screen.setperspective(); else puts("Ortho Mode"), pgrid->screen.setortho(); break;
	case ' ':		pgrid->pausephysics(pgrid->isphysicspaused()^1); printf("physics %s\n", pgrid->isphysicspaused()? "paused": "un-paused"); break;
	case 's':		image->stopphysics(); pgrid->pausephysics(false); break;
	case 'g':		image->showgrid^= 1, printf("grid display %s\n", image->showgrid? "on": "off"); break;
	case '^':		printstatus(); break;
	case SDLK_INSERT:	image->new_layer(); break;
	case SDLK_DELETE:	image->delete_layer(); break;
	case SDLK_PAGEUP:	image->next_layer(); break;
	case SDLK_PAGEDOWN:	image->prev_layer(); break;
    }
}

void t_workspace::mouse_motion_event(SDL_MouseMotionEvent &event)
{
    if(dragging)
    {
	vec p(event.xrel, event.yrel);
	img.add(p);
    }
}

void t_workspace::mouse_button_event(SDL_MouseButtonEvent &evt)
{
    if(evt.type==SDL_MOUSEBUTTONDOWN) switch(evt.button)
    {
	case SDL_BUTTON_MIDDLE:
	    dragging= true;
	    dragstart= pgrid->time();
	    dragstartpos= pgrid->mouse;
	    break;
	case SDL_BUTTON_WHEELUP:
	    dozoom(2.0, pgrid->getkeystate(SDLK_LSHIFT)||pgrid->getkeystate(SDLK_RSHIFT)? true: false);
	    break;
	case SDL_BUTTON_WHEELDOWN:
	    dozoom(0.5, pgrid->getkeystate(SDLK_LSHIFT)||pgrid->getkeystate(SDLK_RSHIFT)? true: false);
	    break;
    }
    else if(evt.button==SDL_BUTTON_MIDDLE)
    {
	if(dragging && pgrid->time()-dragstart<250)
	{
	    vec d(dragstartpos); d.sub(pgrid->mouse);
	    if(d.len()<3.0)
	    {
		vec v= screen2img(evt.x, evt.y);
		setcenter(v.x, v.y);
	    }
	}
	dragging= false;
    }
}
