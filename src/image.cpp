#include <stdio.h>
#include <math.h>
#include <SDL/SDL.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include <string>
#include "image.h"

void t_image::phys_tick(float time)
{
    t_layer *l= current_layer();
    //~ l->phys_tick(time);
    //~ l->grid->phys_tick(time);
    //~ l->particles->phys_tick(time);
    
    float phys_speed= t_pgrid::getinstance()->get_physics_speed();
    
    const float cptime= 1.0/8;
    if( (nextcomplexphysics-= fabs(time))<=0 )
    {
	l->particles->complexphysics(cptime*phys_speed);
	l->grid->complexphysics(cptime*phys_speed);
	nextcomplexphysics+= cptime;
    }

    const float sptime= 1.0/40;
    if( (nextsimplephysics-= fabs(time))<=0 )
    {
	l->particles->simplephysics(sptime*phys_speed);
	l->grid->simplephysics(sptime*phys_speed);
	nextsimplephysics+= sptime;
    }
}

