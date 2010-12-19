#ifndef IMAGE_H
#define IMAGE_H

#include "main.h"
#include "pgrid.h"
#include "layer.h"

class t_image
{
    typedef std::vector<t_layer *> t_layercontainer;
    private:
	t_layercontainer layers;
    	int cur_layer;
    	
    	float nextsimplephysics, nextcomplexphysics;
    
    public:
	int width, height;
    	bool showgrid;
	class t_workspace *workspace;
    	
	t_image(t_workspace *_workspace): workspace(_workspace), width(1024), height(768), showgrid(false), 
		nextsimplephysics(0), nextcomplexphysics(0)
    	{
	    layers.push_back(new t_layer(this));
	    cur_layer= 0;
    	}
	
	t_layer *current_layer()
	{
	    return layers.at(cur_layer);
	}
	
	void new_layer(int pos= -1)
	{
	    if(pos<0) pos= cur_layer+1;
	    layers.insert(layers.begin()+pos, new t_layer(this));
	    cur_layer++;
	}
	
	void delete_layer(int pos= -1)
	{
	    if(pos<0) pos= cur_layer;
	    layers.erase(layers.begin()+pos);
	    if(layers.empty()) new_layer(0);
	    if(cur_layer>layers.size()-1) cur_layer= layers.size()-1;
	}
	
	void set_current_layer(int n)
	{
	    int s= layers.size();
	    while(n>=s) n-= s;
	    while(n<0) n+= s;
	    cur_layer= n;
	}
	
	void next_layer()
	{ set_current_layer(cur_layer+1); }
	
	void prev_layer()
	{ set_current_layer(cur_layer-1); }
	
	void render(float x, float y, float w, float h)
	{
	    glDisable(GL_TEXTURE_2D);
	    glBegin(GL_QUADS);
	    glColor4f(0,0,0, 0.125);
	    glVertex2f(0, 0);
	    glVertex2f(width, 0);
	    glVertex2f(width, height);
	    glVertex2f(0, height);
	    glEnd();

	    for(int i= 0; i<layers.size(); i++)
		layers[i]->render(x,y, w,h);
	}

	void frame_tick(float time)
	{
	    for(int i= 0; i<layers.size(); i++)
		layers[i]->frame_tick(time);
	}
	
	void phys_tick(float time);
	
	void stopphysics()
	{
	    current_layer()->stopphysics();
	}
};


#endif
