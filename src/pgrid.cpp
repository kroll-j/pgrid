#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <sys/time.h>
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


static long double proftime()
{
    timeval tv;
    gettimeofday(&tv, 0);
    return tv.tv_sec + double(tv.tv_usec)*0.001;
}


t_pgrid::t_pgrid()
{
    if(instance) return;
    instance= this;

    gui= 0;
    
    physics_speed= 1.0f;
    
    puts("screen init");
    screen.init(800, 600, false);
    
    editor= new t_editor(this);
    
    t_workspace *newws= new t_workspace(this);
    workspaces.push_back(newws);
    
    physicstime= 0;
    hasinputfocus= hasmousefocus= true;
}

t_pgrid::~t_pgrid()
{
    for(int i= workspaces.size()-1; i>=0; i--)
	delete workspaces[i];
    delete editor;
}

void t_pgrid::pausephysics(bool on)
{
    physicspaused= on;
    if(gui) gui->pause_button->press(on);
}

void t_pgrid::runphysics()
{
    const float time= PHYSICSFRAMEMILLIS/1000.0;
    if(curmillis-physicstime > 500)
    {
	physicstime= curmillis;
	return;
    }
    while(physicstime<curmillis)
    {
	editor->phys_tick(time);
	if(!isphysicspaused()) current_workspace()->image->phys_tick(time);
	
	physicstime+= PHYSICSFRAMEMILLIS;
    }
}

void t_pgrid::run()
{
    bool quit= false;
    
    setvbuf(stdout, 0, _IONBF, 0);
    
    SDL_EnableKeyRepeat(SDL_DEFAULT_REPEAT_DELAY, SDL_DEFAULT_REPEAT_INTERVAL);
    SDL_WM_SetCaption("pgrid", "pgrid");
    
    lastmillis= curmillis= SDL_GetTicks();
    SDL_ShowCursor(0);
    SDL_EnableUNICODE(true);
    
    gui= new flux_gui();
    
    bool guimouse= false;
    
    while(!quit)
    {
	lastframephystime= physicstime;
	lastmillis= curmillis;
	curmillis= SDL_GetTicks();
	
	SDL_Event event;
	while(SDL_PollEvent(&event))
	{
	    switch(event.type)
	    {
		case SDL_KEYDOWN:
		case SDL_KEYUP:
		{
		    if(event.key.keysym.sym==SDLK_ESCAPE) quit= true;
		    
		    if(wnd_getkbdfocus()!=NOWND)
		    {
			flux_keyboard_event(event.type==SDL_KEYDOWN, event.key.keysym.sym, event.key.keysym.unicode&0x7F);
		    }
		    else
		    {
			current_workspace()->keyboard_event(event.key);
			editor->keyboard_event(event.key);
			for(t_dyninputhandler_list::iterator i= dyninputhandlers.begin(); i!=dyninputhandlers.end(); i++)
			    (*i)->keyboard_event(event.key);
		    }
		    
		    keystate[event.key.keysym.sym]= (event.key.state==SDL_PRESSED? 1: 0);
		    break;
		}
		
		case SDL_MOUSEMOTION:
		    flux_mouse_move_event(event.motion.xrel, event.motion.yrel);
		    
		    if( find_prim_pos(event.motion.x, event.motion.y, true) || 
			find_mouse_handler(event.motion.x, event.motion.y) )
			guimouse= true;
		    else
		    {
			guimouse= false;
			mouse.x= event.motion.x;
			mouse.y= event.motion.y;
			mouse.buttons= event.motion.state;
			current_workspace()->mouse_motion_event(event.motion);
			editor->mouse_motion_event(event.motion);
			for(t_dyninputhandler_list::iterator i= dyninputhandlers.begin(); i!=dyninputhandlers.end(); i++)
			    (*i)->mouse_motion_event(event.motion);
		    }
		    break;
		
		case SDL_MOUSEBUTTONUP:
		case SDL_MOUSEBUTTONDOWN:
		{
		    int b= event.button.button;
		    int fluxbutton= (b==SDL_BUTTON_RIGHT? 2: b==SDL_BUTTON_MIDDLE? 3: b)-1;
		    flux_mouse_button_event(fluxbutton, event.type==SDL_MOUSEBUTTONDOWN);
		    
		    if( find_prim_pos(event.button.x, event.button.y, true) || 
			find_mouse_handler(event.button.x, event.button.y) )
		    {
		    	guimouse= true;
		    }
		    else
		    {
			guimouse= false;
			wnd_setkbdfocus(NOWND);
			if(event.type==SDL_MOUSEBUTTONUP)
			    mouse.buttons&= ~(SDL_BUTTON(event.button.button));
			else
			    mouse.buttons|= SDL_BUTTON(event.button.button);
			mouse.x= event.button.x;
			mouse.y= event.button.y;
			current_workspace()->mouse_button_event(event.button);
			editor->mouse_button_event(event.button);
			for(t_dyninputhandler_list::iterator i= dyninputhandlers.begin(); i!=dyninputhandlers.end(); i++)
			    (*i)->mouse_button_event(event.button);
		    }
		    break;
		}

		case SDL_QUIT:
		    quit= true;
		    break;
		
		case SDL_VIDEORESIZE:
		{
		    SDL_Surface *surf= SDL_SetVideoMode(event.resize.w, event.resize.h, 0, SDL_OPENGL|SDL_RESIZABLE);
		    if(!surf) break;
		    screen.sdl_surface= surf;
		    screen.gl_init(event.resize.w, event.resize.h);
		    current_workspace()->centerimage();
		    break;
		}
		
		case SDL_ACTIVEEVENT:
		{
		    if(event.active.state&SDL_APPINPUTFOCUS)
		    {
			hasinputfocus= event.active.gain;
			SDL_ShowCursor(!hasinputfocus);
		    }
		    if(event.active.state&SDL_APPMOUSEFOCUS)
		    	hasmousefocus= event.active.gain;
		    break;
		}
		
		case SDL_VIDEOEXPOSE:
		{
		    if(!hasinputfocus)
		    {
    			glClear(GL_DEPTH_BUFFER_BIT);
			current_workspace()->render();
			SDL_GL_SwapBuffers();
			checkglerror();
		    }
		    break;
		}
	    }
	}
	
	int x, y;
	SDL_GetMouseState(&x, &y);
	mousepos.x= x; mousepos.y= y;

	SDL_GetRelativeMouseState(&x, &y);
	mousevel.x= x; mousevel.y= y;
	mousevel.mul( 1000.0/(curmillis-lastmillis) );
	
	current_workspace()->image->frame_tick((curmillis-lastmillis)*0.001);
	runphysics();
	

    	if(hasinputfocus)
	{
	    glClear(GL_DEPTH_BUFFER_BIT);
	    //~ screen.setperspective();
	    current_workspace()->render();
	    if(hasmousefocus && !guimouse) editor->render();

#if 1
	    next_event();
	    //~ aq_exec();
	    run_timers();
	    
	    glMatrixMode(GL_MODELVIEW);
	    glPushMatrix();
	    glLoadIdentity();
	    
	    glMatrixMode(GL_PROJECTION);
	    glPushMatrix();
	    glLoadIdentity();
	    glOrtho(0, screen.width,screen.height, 0, -1000, 1000);

	    glDisable(GL_DEPTH_TEST);
	    glEnable(GL_BLEND);
	    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	    //~ glEnable(GL_POINT_SMOOTH);
	    //~ glPointSize(1.0);
	    
	    //~ glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
	    //~ glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
	    glColor3f(1,1,1);
	    glDisable(GL_TEXTURE_2D);
	    
	    redraw_rect(&viewport);
	    //~ cliptext(0,0,0,0);
	    update_rect(&viewport);

	    glEnable(GL_DEPTH_TEST);
	    glDisable(GL_BLEND);
	    
	    glMatrixMode(GL_PROJECTION);
	    glPopMatrix();
	    glMatrixMode(GL_MODELVIEW);
	    glPopMatrix();
#endif
	    
	    gui->tick( (curmillis-lastmillis)*0.001 );
	    
	    if(guimouse) { glMatrixMode(GL_TEXTURE); glLoadIdentity(); glDisable(GL_DEPTH_TEST); redraw_cursor(); }
	    
	    SDL_GL_SwapBuffers();
	    checkglerror();
	}
	
	
	int delay= 10 - (curmillis-lastmillis);
	if(!hasinputfocus) SDL_Delay(100);
	if(delay>0) SDL_Delay(delay);
    }
    
    SDL_WM_GrabInput(SDL_GRAB_OFF);
    
    delete gui;
    gui= 0;
}



t_texture *t_pgrid::load_texture(char *filename)
{
    FIBITMAP *fi= FreeImage_Load(FIF_PNG, filename);
    int w= FreeImage_GetWidth(fi), h= FreeImage_GetHeight(fi);
    u32 bits[w*h];
    u32 *src= (u32*)FreeImage_GetBits(fi);
    u32 *dst= bits+w*(h-1);
    for(int y= h; y>0; y--)
    {
	memcpy(dst, src, w*4);
	src+= w;
	dst-= w;
    }
    t_texture *t= new t_texture(w, h, FreeImage_GetBPP(fi), bits);
    FreeImage_Unload(fi);
    return t;
}



t_pgrid *t_pgrid::instance;
t_pgrid *t_pgrid::getinstance()
{
    if(!instance) new t_pgrid();
    return instance;
}


dyninputhandler::dyninputhandler()
{
    t_pgrid::getinstance()->registerinputhandler(this);
}
dyninputhandler::~dyninputhandler()
{
    t_pgrid::getinstance()->unregisterinputhandler(this);
}

