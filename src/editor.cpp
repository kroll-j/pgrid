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
#include "pgrid.h"
#include "image.h"
#include "workspace.h"
#include "editor.h"
#include "editortools.h"
#include "brush.h"
#include "flux.h"
#include "gui.h"

t_editor::t_editor(t_pgrid *_pgrid): pgrid(_pgrid), selected_tool(0), curbrush(0)
{
    options.wrapmode= true;
    options.lerpmouse= true;
    options.showparticles= true;
    last_selected_tool= -1;
    
    tools.push_back(new t_tool_addparticles(this));
    tools.push_back(new t_tool_push(this));
    tools.push_back(new t_tool_paintgrid_spraycan(this));
    tools.push_back(new t_tool_drag(this));
    select_tool(3);
}


void t_editor::select_tool(int n)
{
    if(n<0) n= 0; 
    if(n>=tools.size()) n= tools.size()-1;
    selected_tool= n;
    
    if(t_pgrid::getinstance()->gui) t_pgrid::getinstance()->gui->toolbar->select_button(n);
}


void t_editor::keyboard_event(SDL_KeyboardEvent &evt)
{
    if(evt.type==SDL_KEYDOWN)
    {
	if(evt.keysym.sym>='1' && evt.keysym.sym<='9')
	{
	    if(selected_tool!=evt.keysym.sym-'1')
	    {
		last_tool_select_time= pgrid->time();
		last_selected_tool= selected_tool;
		select_tool(evt.keysym.sym-'1');
	    }
	    else if(!pgrid->getkeystate(evt.keysym.sym)) last_selected_tool= selected_tool;
	}
	else switch(evt.keysym.sym)
	{
	    case 'w':
		options.wrapmode^= 1;
		printf("Wrap %s\n", options.wrapmode? "on": "off");
		break;
	    case 'l':
		options.lerpmouse^= 1;
		printf("Mouse Lerping %s\n", options.lerpmouse? "on": "off");
		break;
	    case 'p':
		options.showparticles^= 1;
		printf("Show Particles %s\n", options.showparticles? "on": "off");
		break;
	    case '.':
	    {
		t_brush *b= getbrush();
		b->resize(b->getwidth()+1, b->getheight()+1);
		break;
	    }
	    case ',':
	    {
		t_brush *b= getbrush();
		b->resize(b->getwidth()-1, b->getheight()-1);
		break;
	    }
	}
    }
    else if(evt.type==SDL_KEYUP)
    {
	if(evt.keysym.sym-'1'==selected_tool && pgrid->time()-last_tool_select_time>300)
	    select_tool(last_selected_tool);
    }
}


