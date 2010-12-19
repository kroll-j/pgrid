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
#include "screen.h"
#include "texture.h"
#include "offscreen_renderer.h"


t_offscreen_renderer::t_offscreen_renderer(float image_w, float image_h): 
	img_w(image_w), img_h(image_h), rendering(false), texture_size(64)
{
    texarray_w= int(img_w)/texture_size + (img_w - int(img_w)/texture_size*texture_size>0? 1: 0);
    texarray_h= int(img_h)/texture_size + (img_h - int(img_h)/texture_size*texture_size>0? 1: 0);
    
    for(int i= 0; i<texarray_w*texarray_h; i++)
	texarray.push_back(new t_texture(texture_size, texture_size, 32));
}

t_offscreen_renderer::~t_offscreen_renderer()
{
    for(int i= 0; i<texarray.size(); i++)
	delete texarray[i];
}
    	
void t_offscreen_renderer::startcapturing()
{
    cur_x= cur_y= 0;
    rendering= true;
}

void t_offscreen_renderer::nextcapture(float &x, float &y, float &w, float &h)
{
    if(!rendering) return;
    t_screen &screen= t_pgrid::getinstance()->screen;
    x= cur_x; y= cur_y;
    w= cur_w= MIN(img_w-cur_x, screen.width)/texture_size*texture_size;
    h= cur_h= MIN(img_h-cur_y, screen.height)/texture_size*texture_size;
}

bool t_offscreen_renderer::capture()
{
    if(!rendering) return false;
    
    for(int y= int(cur_y); y<cur_y+cur_h; y+= texture_size)
    {
    	for(int x= int(cur_x); x<cur_x+cur_w; x+= texture_size)
	{
	    t_texture *tex= texarray[(y/texture_size)*texarray_w+(x/texture_size)];
	    
	    tex->bind();
	    glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, x,t_pgrid::getinstance()->screen.height-texture_size-y, texture_size,texture_size, 0);
	    //~ glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 0,t_pgrid::getinstance()->screen.height-texture_size, texture_size,texture_size, 0);
	}
    }
    
    cur_x+= cur_w; cur_y+= cur_h;
    if(cur_x>=img_w)
	cur_x= 0, cur_y+= cur_h;
    if(cur_y>=img_h)
	return false;
    return true;
}


