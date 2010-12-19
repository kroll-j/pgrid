#ifndef PARTICLES_H
#define PARTICLES_H

#include <vector>
#include "pgrid.h"
#include "texture.h"

struct vert3
{
    float x, y, z;
};

struct vec2s
{
    short x, y;
} __attribute__((packed));

struct t_quad
{
    vec2s t0;
    vec v0;
    vec2s t1;
    vec v1;
    vec2s t2;
    vec v2;
    vec2s t3;
    vec v3;
} __attribute__((packed));

struct t_particle
{
    img_vec pos;
    float height;	// von phys. berechnet
    vec speed;
};

class t_particles: public dyninputhandler
{
    friend class t_particle_snapshot;
    private:
	void scissor(float x, float y, float width, float height);
	void renderquads(float x, float y, float w, float h);
	void renderarrays(float x, float y, float width, float height);
    	void renderVBOs(float x, float y, float width, float height);
    	void completephysics(float time);
    	bool iscurrent();
    	void generate_texture();
    	
    	float r, g, b, a;
    	float size, smoothness;
    	
    	GLuint vertex_buffer;
    	
    	static int rendermode; // quads/arrays
    	
    	class t_offscreen_renderer *renderer;
	
    public:
	typedef vector<t_particle> t_particlecontainer;
	
	t_grid *grid;
	t_editor *editor;
	t_particlecontainer particles;
	t_texture *texture;
    	std::vector<t_quad> quads;
    
	t_particles(t_grid *g);
	~t_particles();
    
    	float get_size() { return size; }
	void set_size(float s) { size= s; }
	
    	void setcolor(float _r, float _g, float _b, float _a)
    	{ r= _r; g= _g; b= _b; a= _a; }
	
	void set_smoothness(float s) { smoothness= s; generate_texture(); }
	float get_smoothness() { return smoothness; }
	
    	
    	void keyboard_event(SDL_KeyboardEvent &evt);
	
	void phys_tick(float time);
    	void simplephysics(float time);
    	void complexphysics(float time);
	
	void render(float x, float y, float w, float h);
	
	void add(t_particle &p);
    	void remove(int idx);
	
    	void updatequad(int idx);
	void clamp_particle(t_particle &p)
	{
	    if(editor->dowrap())
	    {
		float w= grid->width*GRIDGRANULARITY, h= grid->height*GRIDGRANULARITY;
		while(p.pos.x<0) p.pos.x+= w;
		while(p.pos.y<0) p.pos.y+= h;
		while(p.pos.x>w) p.pos.x-= w;
		while(p.pos.y>h) p.pos.y-= h;
	    }
	    else
	    {
		if(p.pos.x<0)
		    p.speed.x= -p.speed.x,
		    p.pos.x= 0;
		else if(p.pos.x>grid->width*GRIDGRANULARITY)
		    p.speed.x= -p.speed.x,
		    p.pos.x= grid->width*GRIDGRANULARITY;
		
		if(p.pos.y<0)
		    p.speed.y= -p.speed.y,
		    p.pos.y= 0;
		else if(p.pos.y>grid->height*GRIDGRANULARITY)
		    p.speed.y= -p.speed.y,
		    p.pos.y= grid->height*GRIDGRANULARITY;
	    }
	}
	
	void stopphysics();
	
	void add_random(int n);
	
	class t_particle_snapshot *create_snapshot();
	void load_snapshot(class t_particle_snapshot *snapshot);
};


// angefangen
struct t_particle_snapshot
{
    t_particles::t_particlecontainer particles;
};





#endif
