#ifndef LAYER_H
#define LAYER_H

#include "main.h"
#include "grid.h"
#include "particles.h"

class t_layer
{
    private:
	class t_image *image;
	
    public:
	t_grid *grid;
    	t_particles *particles;
    	
    	rgbafcolor color;

	t_layer(t_image *img);
    	~t_layer();
    	
	void render(float x, float y, float w, float h);

	void frame_tick(float time)
    	{
	    //~ if(grid) grid->frame_tick(time);
	}
	
	void phys_tick(float time)
	{
	}
	
	void stopphysics()
	{
	    grid->stopphysics();
	    particles->stopphysics();
	}
};

#endif
