#ifndef GRID_H
#define GRID_H

#include "main.h"
#include "editor.h"
#include "x86.h"

inline float quantize_height(float h)
{
    #define QF 32.0f
    return int(h*QF)*(1.0f/QF);
}


struct t_gridpoint
{
    enum
    {
	IDX_HEIGHT= 4,
	IDX_SPEEDMOD_X, IDX_SPEEDMOD_Y
    };
    
    union {
	float values[];
	struct {
	    int nparticles;
	    rgbabcolor color;
	    float x, y;	// für drawArrays
	    
	    union { float height; float disp_height; };
	    float speedmod_x, speedmod_y;
	    float _dummy2;
	};
    };
    
    bool looks_equal(t_gridpoint &other);
};

class t_grid
{
    friend class t_particles;
    friend class t_interpolated_point;
    friend class t_grid_snapshot;
    private:
	u8 *gridpoint_data;
    	t_gridpoint *gridpoints;	// 32-byte aligned
    	class t_editor *editor;
	int *drawing_indices;
	
    public:
    	struct t_interpolated_point
	{
	    int x0, y0;
	    float dx, dy;
	    union {
		t_gridpoint *points[4];
		struct {
		    t_gridpoint *v0, *v1, *v2, *v3;
		};
	    };
	    
	    t_interpolated_point(t_grid *grid, img_vec &img_pos)
	    {
		img_pos.mul(1.0/GRIDGRANULARITY);
		
		x0= int(img_pos.x); 
		y0= int(img_pos.y);
		v0= &grid->getpoint_editing(x0, y0),	v1= &grid->getpoint_editing(x0+1, y0),
		v2= &grid->getpoint_editing(x0, y0+1),  v3= &grid->getpoint_editing(x0+1, y0+1);
		
		dx= fabs(img_pos.x-x0), dy= fabs(img_pos.y-y0);
	    }
	    
	    t_interpolated_point(t_grid *grid, grid_vec &grid_pos)
	    {
		x0= int(grid_pos.x); 
		y0= int(grid_pos.y);
		v0= &grid->getpoint_editing(x0, y0),	v1= &grid->getpoint_editing(x0+1, y0),
		v2= &grid->getpoint_editing(x0, y0+1),  v3= &grid->getpoint_editing(x0+1, y0+1);
		
		dx= fabs(grid_pos.x-x0), dy= fabs(grid_pos.y-y0);
	    }
	    
	    void add(int nval, float d)
	    {
		v0->values[nval]+= d*(1.0-dx)*(1.0-dy);	v1->values[nval]+= d*dx*(1.0-dy);
		v2->values[nval]+= d*(1.0-dx)*(dy);	v3->values[nval]+= d*dx*dy;
	    }
	    
	    void mix(int nval, float v, float factor)
	    {
		v0->values[nval]+= (v-v0->values[nval])*factor * (1.0-dx)*(1.0-dy);
		v1->values[nval]+= (v-v1->values[nval])*factor * dx*(1.0-dy);
		v2->values[nval]+= (v-v2->values[nval])*factor * (1.0-dx)*(dy);
		v3->values[nval]+= (v-v3->values[nval])*factor * dx*dy;
	    }
	    
	    float lerp(int nval)
	    {
		return v0->values[nval]*(1.0-dx)*(1.0-dy) +	v1->values[nval]*dx*(1.0-dy) +
		       v2->values[nval]*(1.0-dx)*(dy) +		v3->values[nval]*dx*dy;
	    }
	    
	    void clamp(int nval, float min, float max)
	    {
		for(int i= 3; i>=0; i--)
		{
		    t_gridpoint &pt= *points[i];
		    if(pt.values[nval]<min) pt.values[nval]= min;
		    else if(pt.values[nval]>max) pt.values[nval]= max;
		}
	    }
	};

	int width, height;
    	
	t_grid(int w, int h);
	
	~t_grid()
	{
	    delete gridpoint_data;
	    delete drawing_indices;
	}
	
    	int wrap(int val, int c)
    	{
	    return (val<0? c+val%c: val>=c? val%c: val);
	}
	int clamp(int val, int c)
	{
	    return (val<0? 0: val>=c? c: val);
	}
    
	t_gridpoint &getpoint(int x, int y)
	{
	    return (editor->dowrap()? gridpoints[ wrap(y, height)*(width+1) + wrap(x, width) ]:
				      gridpoints[ clamp(y, height)*(width+1) + clamp(x, width) ] );
	}
	
	t_gridpoint &getpoint_editing(int x, int y)
	{
	    static t_gridpoint dummy;
	    return (editor->dowrap()? gridpoints[ wrap(y, height)*(width+1) + wrap(x, width) ]:
				      (y>height||y<0||x>width||x<0? dummy: gridpoints[ y*(width+1) + x ]) );
	}
	

	void paint_pixel_additive(img_vec img_pos, float d)
	{
	    t_interpolated_point p(this, img_pos);
	    p.add(t_gridpoint::IDX_HEIGHT, d);
	    //~ p.clamp(offset, -1.0, +1.0);
	}
	
	void paint_antialiased_additive(vec pos, float *pixels, int w, int h, float amount, int idx= t_gridpoint::IDX_HEIGHT, int stride= 0)
	{
	    if(!stride) stride= w;
	    float *s= pixels;
	    
	    for(int y= 0; y<h; y++)
	    {
		for(int x= w-1; x>=0; x--)
		{
		    grid_vec v(x+pos.x, y+pos.y);
		    t_interpolated_point pt(this, v);
		    pt.add(idx, s[x]*amount);
		}
		s+= stride;
	    }
	}
	
	void paint_antialiased_mix(vec pos, float *pixels, int w, int h, float val, int idx= t_gridpoint::IDX_HEIGHT, int stride= 0)
	{
	    if(!stride) stride= w;
	    float *s= pixels;
	    
	    for(int y= 0; y<h; y++)
	    {
		for(int x= w-1; x>=0; x--)
		{
		    grid_vec v(x+pos.x, y+pos.y);
		    t_interpolated_point pt(this, v);
		    pt.mix(idx, val, s[x]);
		}
		s+= stride;
	    }
	}
	
	void paint_pixels_additive(int px, int py, float *pixels, int w, int h, float amount, int stride= 0)
	{
	    if(!stride) stride= w;
	    float *s= pixels;
	    
	    for(int y= 0; y<h; y++)
	    {
		for(int x= w-1; x>=0; x--)
		{
		    t_gridpoint &pt= getpoint_editing(x+px, y+py);
		    pt.height+= s[x]*amount;
		    //~ if(pt.height>1.0) pt.height= 1.0;
		    //~ else if(pt.height<-1.0) pt.height= -1.0;
		}
		s+= stride;
	    }
	}
	

	void paint_pixels_additive(vec pos, float *pixels, int w, int h, float amount, int stride= 0)
	{
	    int x= int(pos.x), y= int(pos.y);
	    float dx= fabs(pos.x-x), dy= fabs(pos.y-y);
	    float v0= amount*(1.0-dx)*(1.0-dy),	v1= amount*dx*(1.0-dy),
		  v2= amount*(1.0-dx)*dy,	v3= amount*dx*dy;
	    paint_pixels_additive(x,   y,   pixels, w, h, v0, stride);
	    paint_pixels_additive(x+1, y,   pixels, w, h, v1, stride);
	    paint_pixels_additive(x,   y+1, pixels, w, h, v2, stride);
	    paint_pixels_additive(x+1, y+1, pixels, w, h, v3, stride);
	}
	

	void render_quadstrips(float img_x, float img_y, float img_w, float img_h);
	void render_quads(float img_x, float img_y, float img_w, float img_h);
	void render_scanlines(float img_x, float img_y, float img_w, float img_h);
	void render_arrays(float img_x, float img_y, float img_w, float img_h);
	void render(float img_x, float img_y, float img_w, float img_h);
	
	void fade(float time);
	
	void frame_tick(float time);
	
	//~ void phys_tick(float time);
	
	void simplephysics(float time);
	void complexphysics(float time);
	
	void stopphysics();
};



class t_grid_snapshot
{
    private:
    public:
	t_grid_snapshot(t_grid *);
};


#endif
