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
#include "flux.h"


t_screen::~t_screen()
{
    std::vector<class t_texture *> tex= textures;
    for(int i= 0; i<tex.size(); i++)
	delete(tex[i]);
    
    SDL_Quit();
}

void t_screen::registertexture(t_texture *t)
{
    textures.insert(textures.begin(), t);
}

void t_screen::unregistertexture(t_texture *t)
{
    for(std::vector<t_texture*>::iterator i= textures.begin(); i!=textures.end(); i++)
	if(t==*i) { textures.erase(i); break; }
}

void t_screen::rebuildtextures()
{
    for(std::vector<t_texture*>::iterator i= textures.begin(); i!=textures.end(); i++)
	(*i)->rebuild();
}

void t_screen::setortho()
{
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, width, height, 0, -1000, 1000);
    ortho= true;
}

void t_screen::setperspective(float fov, float asp)
{
    aspmod= asp;
    this->fov= fov;
    const float farplane= 4096;
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(getyfov(), getaspect(), 0.25, farplane);
    
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    
    ortho= false;
    printf("%dx%d, yfov= %.2f, aspect= %.2f\n", width, height, getyfov(), getaspect());
    planedist= calcplanedist();
}

void t_screen::gl_init(int w, int h)
{
    glViewport(0,0, w,h);
    
    glEnable(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    
    width= w; height= h;
    
    rebuildtextures();
    if(ortho) setortho();
    else setperspective();
    
    flux_screenresize(w, h);
}

float t_screen::calcplanedist()
{
    GLdouble model_mtx[16], proj_mtx[16];
    GLint viewport[]= { 0,0, width,height };
    GLdouble half, delta, x, y, z;
    glGetDoublev(GL_MODELVIEW_MATRIX, model_mtx);
    glGetDoublev(GL_PROJECTION_MATRIX, proj_mtx);
    
    double mind= 0, maxd= 2<<14;
    
    int i;
    for(i= 0; i<1000; i++)
    {
	half= (mind+maxd)*0.5;
	gluProject(width/2, height/2, half, model_mtx, proj_mtx, viewport, &x, &y, &z);
	delta= x; //sqrt(x*x+y*y)*(x<0? -1: 1);
	if(fabs(delta)<0.0001) { printf("planedist=%.2f delta=%.2f\n", half, delta); return half; }
	else if(delta>0) maxd= half;
	else mind= half;
    }
    printf("no planedist found... mind=%.2f, maxd=%.2f, delta=%.2f\n", mind, maxd, delta);
    return planedist;
}

void t_screen::init(int w, int h, bool fullscreen)
{
    if(SDL_Init(SDL_INIT_VIDEO)<0) fatal("Unable to initialize SDL");
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
    sdl_surface= SDL_SetVideoMode(w, h, 0, SDL_OPENGL|(fullscreen? SDL_FULLSCREEN: SDL_RESIZABLE));
    if(!sdl_surface) fatal("couldn't set video mode");
    
    w= sdl_surface->w;
    h= sdl_surface->h;
    gl_init(w, h);
    this->fullscreen= fullscreen;
}

void t_screen::togglefullscreen()
{
    fullscreen^= 1;
    if(fullscreen)
    {
	SDL_Rect **modes= SDL_ListModes(0, SDL_OPENGL|SDL_FULLSCREEN);
	int bestidx= 0, bestdiff= INT_MAX;
	int scrsize= width*height;
	if(modes!=(SDL_Rect**)-1 && modes!=0 && modes[0]!=0)
	{
	    for(int i= 0; modes[i]; i++)
	    {
		int msize= modes[i]->w*modes[i]->h,
		    diff= msize-scrsize;
		if(msize>=scrsize && diff<bestdiff)
		    bestidx= i, bestdiff= diff;
	    }
	    printf("Selected fullscreen mode %dx%d\n", modes[bestidx]->w, modes[bestidx]->h);
	    init(modes[bestidx]->w, modes[bestidx]->h, fullscreen);
	}
    }
    else init(width, height, fullscreen);
}

