#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string>
#define GL_GLEXT_PROTOTYPES
#include <GL/gl.h>
#include <GL/glu.h>
#include <SDL/SDL.h>
#include "main.h"
#include "pgrid.h"
#include "image.h"
#include "workspace.h"
#include "editor.h"
#include "editortools.h"
#include "brush.h"
#include "offscreen_renderer.h"


int t_particles::rendermode= 1;


bool t_particles::iscurrent()
{
    return t_pgrid::getinstance()->current_workspace()->image->current_layer()->grid == grid;
}

t_particles::t_particles(t_grid *g): grid(g), texture(0), size(12), smoothness(1.0)
{
    editor= t_pgrid::getinstance()->editor;
    
    renderer= new t_offscreen_renderer(grid->width*GRIDGRANULARITY, grid->height*GRIDGRANULARITY);
    
    generate_texture();
    
    add_random(15000);

    glGenBuffers(1, &vertex_buffer);
    //~ glBindBuffer(GL_ARRAY_BUFFER, vertex_buffer);
    //~ glBufferData(GL_ARRAY_BUFFER, quads.size()*sizeof(t_quad), 0, GL_DYNAMIC_DRAW);
    //~ glEnableClientState(GL_VERTEX_ARRAY);
    //~ glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    //~ glVertexPointer(3, GL_FLOAT, sizeof(vert3)+sizeof(vec), (void*)4);
    //~ glTexCoordPointer(2, GL_FLOAT, sizeof(vert3)+sizeof(vec), 0);
    //~ glBindBuffer(GL_ARRAY_BUFFER, 0);
}

t_particles::~t_particles()
{
}


void t_particles::generate_texture()
{
    #define tsize 128
    u8 bgtex[tsize*tsize];
    mkblobu8(bgtex, tsize, 1.0f-smoothness);
    if(texture) delete(texture);
    texture= new t_texture(tsize, tsize, 8, bgtex, true);
    #undef tsize
}


void t_particles::add(t_particle &p)
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
	if( p.pos.x<0 || p.pos.y<0 || p.pos.x>=grid->width*GRIDGRANULARITY || p.pos.y>=grid->height*GRIDGRANULARITY )
	    return;
    }
    particles.add(p);
    t_quad q;
    q.t0.x= 0; q.t0.y= 0;
    q.t1.x= 1; q.t1.y= 0;
    q.t2.x= 1; q.t2.y= 1;
    q.t3.x= 0; q.t3.y= 1;
    quads.push_back(q);
    updatequad(quads.size()-1);
}

void t_particles::remove(int idx)
{
    particles.remove(idx);
    quads.erase(quads.begin()+idx);
}

void t_particles::add_random(int n)
{
    int w= grid->width*GRIDGRANULARITY, h= grid->height*GRIDGRANULARITY;
    for(int i= n; i>0; i--)
    {
	img_vec pos(rand()%w, rand()%h), spd(0,0);
	t_particle p= { pos, 0, spd };
	add(p);
    }
}



void t_particles::updatequad(int idx)
{
    float sz= size*0.5;
    t_particle &p= particles[idx];
    t_quad &q= quads[idx];
    
    q.v0.x= p.pos.x-sz;
    q.v0.y= p.pos.y-sz;
    
    q.v1.x= p.pos.x+sz;
    q.v1.y= p.pos.y-sz;
    
    q.v2.x= p.pos.x+sz;
    q.v2.y= p.pos.y+sz;

    q.v3.x= p.pos.x-sz;
    q.v3.y= p.pos.y+sz;
}



void t_particles::completephysics(float time)
{
    const float backlash= 15.0,
    		speedmod= 1,
    		slopemod= 100,
    		slowdown= 0.75;
    
    float backlash_mult= -backlash*time;
    float slowdown_mult= (time-slowdown*time)/time;
    
    for(int i= particles.size()-1; i>=0; i--)
    {
	t_particle &p= particles[i];

	img_vec pos(p.pos);
	t_grid::t_interpolated_point pi(grid, pos);
	float h0= pi.v0->height + (pi.v1->height-pi.v0->height)*pi.dx;
	float h1= pi.v2->height + (pi.v3->height-pi.v2->height)*pi.dx;
	float v0= pi.v0->height + (pi.v2->height-pi.v0->height)*pi.dy;
	float v1= pi.v1->height + (pi.v3->height-pi.v1->height)*pi.dy;
	float yd= h0 - h1;
	float xd= v0 - v1;
	
	//~ p.height= pi.lerp(t_gridpoint::IDX_HEIGHT);

	vec mv= p.speed;
	mv.x+= pi.lerp(t_gridpoint::IDX_SPEEDMOD_X)*speedmod;
	mv.y+= pi.lerp(t_gridpoint::IDX_SPEEDMOD_Y)*speedmod;
	
	mv.x+= xd*time*slopemod*100;
	mv.y+= yd*time*slopemod*100;

	float f= mv.squaredlen();
	if(f<.25) { p.speed.x= p.speed.y= 0.0f; continue; }

	mv.random_deviation(time*100);
	
	p.speed= mv;
	mv.mul(time);
	//~ p.pos.add(mv);
	p.speed.mul(slowdown_mult);
	
	clamp_particle(p);
	
	updatequad(i);
	
	//~ pi.add(t_gridpoint::IDX_HEIGHT, 0.000003);
	if(fabs(mv.x)>0.2) pi.add(t_gridpoint::IDX_SPEEDMOD_X, (mv.x+(mv.x<0? +.2: -.2))*backlash_mult);	// gute werte von ca. -10 bis +.5
	if(fabs(mv.y)>0.2) pi.add(t_gridpoint::IDX_SPEEDMOD_Y, (mv.y+(mv.y<0? +.2: -.2))*backlash_mult);
    }
}

void t_particles::simplephysics(float time)
{
    for(int i= particles.size()-1; i>=0; i--)
    {
	t_particle &p= particles[i];

	vec mv= p.speed;

	mv.mul(time);
	p.pos.add(mv);
	
	clamp_particle(p);
	
	updatequad(i);
    }
}

void t_particles::complexphysics(float time)
{
     float backlash= 1.0,
	   speedmod= 0.5,
	   slopemod= 0.5*30000,
	   slowdown= 0.5;
    
    float backlash_mult= -backlash*time;
    float slowdown_mult= (time-slowdown*time)/time;
    if(time<0) slopemod= -slopemod;
    
    for(int i= grid->height*(grid->width+1)-1; i>=0; i--)
    {
	grid->gridpoints[i].nparticles= 0;
    }
    
    for(int i= particles.size()-1; i>=0; i--)
    {
	t_particle &p= particles[i];

	img_vec pos(p.pos);
	t_grid::t_interpolated_point pi(grid, pos);
	float h0= pi.v0->height + (pi.v1->height-pi.v0->height)*pi.dx;
	float h1= pi.v2->height + (pi.v3->height-pi.v2->height)*pi.dx;
	float v0= pi.v0->height + (pi.v2->height-pi.v0->height)*pi.dy;
	float v1= pi.v1->height + (pi.v3->height-pi.v1->height)*pi.dy;
	float yd= h0 - h1;
	float xd= v0 - v1;
	
	//~ pi.v0->nparticles++;
	//~ pi.points[ int(pi.dy>=0.1)*2 + int(pi.dx>=0.1) ]->nparticles++;
	pi.points[ 3 ]->nparticles++;
	
	//~ p.height= pi.lerp(t_gridpoint::IDX_HEIGHT);

	vec mv= p.speed;
	mv.x+= pi.lerp(t_gridpoint::IDX_SPEEDMOD_X)*speedmod;
	mv.y+= pi.lerp(t_gridpoint::IDX_SPEEDMOD_Y)*speedmod;
	
	mv.x+= xd*time*slopemod;
	mv.y+= yd*time*slopemod;

	float f= mv.squaredlen();
	if(f<.1) { p.speed.x= p.speed.y= 0.0f; continue; }
	
	
	//~ printf("%.2f\n", f);
	mv.random_deviation(time*20);
	
	//~ float fmul= (f*0.000001);
	//~ if(fmul>1.0) fmul= 1.0;
	mv.mul(slowdown_mult);
	p.speed= mv;
	
	//~ clamp_particle(p);
	
	//~ updatequad(i);
	
	//~ pi.add(t_gridpoint::IDX_HEIGHT, sqrt(f)*0.00002);//0.000005);
	pi.add(t_gridpoint::IDX_HEIGHT, 0.00001);
	if(fabs(mv.x)>0.2) pi.add(t_gridpoint::IDX_SPEEDMOD_X, (mv.x+(mv.x<0? +.2: -.2))*backlash_mult);	// gute werte von ca. -10 bis +.5
	if(fabs(mv.y)>0.2) pi.add(t_gridpoint::IDX_SPEEDMOD_Y, (mv.y+(mv.y<0? +.2: -.2))*backlash_mult);
    }
    
/*
    t_gridpoint *points= grid->gridpoints;
    int w= grid->width, h= grid->height;
    int diffs[w*h*2];
    int *d= diffs;
    for(int y= grid->height-1; y>=0; y--)
    {
	for(int x= grid->width-1; x>=0; x--)
	{
	    t_gridpoint *p= &points[x];
	    d[x*2+0]= (p[1].nparticles-p->nparticles);
	    d[x*2+1]= (p[w+1].nparticles-p->nparticles);
	}
	points+= w+1;
	d+= w*2;
    }
    
    points= grid->gridpoints;
    d= diffs;
    for(int y= grid->height-1; y>=0; y--)
    {
	for(int x= grid->width; x>=0; x--)
	{
	    t_gridpoint &p= points[x];
	    p.speedmod_x-= d[x*2+0]*time*20;
	    p.speedmod_y-= d[x*2+1]*time*20;
	}
	points+= w+1;
	d+= w*2;
    }
*/
}

void t_particles::phys_tick(float time)
{
}

void t_particles::scissor(float x, float y, float width, float height)
{
    t_workspace *w= t_pgrid::getinstance()->current_workspace();
    int scrh= t_pgrid::getinstance()->screen.height;
    float zoom= w->getzoom();
    vec p1= w->img2screen(x, y);
    glScissor(int(p1.x), int(scrh-p1.y-height*zoom), int(width*zoom), int(height*zoom));
    glEnable(GL_SCISSOR_TEST);
}

void t_particles::renderquads(float x, float y, float width, float height)
{
    glBegin(GL_QUADS);
    for(int i= 0; i<particles.size(); i++)
    {
	//~ t_particle &p= particles[i];
    	//~ const float sz= 4; //2+(i&7);
	//~ vec &pos= p.pos;
	//~ float height= p.height;
	//~ glTexCoord2f(0,0);	glVertex3f(pos.x-sz, pos.y-sz, height);
	//~ glTexCoord2f(1,0);	glVertex3f(pos.x+sz, pos.y-sz, height);
	//~ glTexCoord2f(1,1);	glVertex3f(pos.x+sz, pos.y+sz, height);
	//~ glTexCoord2f(0,1);	glVertex3f(pos.x-sz, pos.y+sz, height);
	
	t_quad &q= quads[i];
	glTexCoord2f(0,0);	glVertex2f(q.v0.x, q.v0.y);
	glTexCoord2f(1,0);	glVertex2f(q.v1.x, q.v1.y);
	glTexCoord2f(1,1);	glVertex2f(q.v2.x, q.v2.y);
	glTexCoord2f(0,1);	glVertex2f(q.v3.x, q.v3.y);
    }
    glEnd();
}



void t_particles::renderarrays(float x, float y, float width, float height)
{
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    
    glVertexPointer(2, GL_FLOAT, sizeof(vec2s)+sizeof(vec), &quads[0].v0);
    glTexCoordPointer(2, GL_SHORT, sizeof(vec2s)+sizeof(vec), &quads[0].t0);
    
    glDrawArrays(GL_QUADS, 0, quads.size()*4);
    
    //~ glDisableClientState(GL_VERTEX_ARRAY);
    //~ glDisableClientState(GL_TEXTURE_COORD_ARRAY);
}

void t_particles::renderVBOs(float x, float y, float width, float height)
{
    glBindBuffer(GL_ARRAY_BUFFER, vertex_buffer);
    glBufferData(GL_ARRAY_BUFFER, quads.size()*sizeof(t_quad), &quads[0], GL_DYNAMIC_DRAW);
    glVertexPointer(2, GL_FLOAT, sizeof(vec2s)+sizeof(vec), (void*)sizeof(vec2s));
    glTexCoordPointer(2, GL_SHORT, sizeof(vec2s)+sizeof(vec), 0);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glDrawArrays(GL_QUADS, 0, quads.size()*4);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void t_particles::render(float x, float y, float w, float h)
{
    if(!editor->showparticles())
	return;
    
    scissor(x,y, w,h);
    
    //~ t_pgrid::getinstance()->screen.gl_init(1024, 768);
    //~ glViewport(0,0, 1024,768);
    
    glEnable(GL_TEXTURE_2D);
    glMatrixMode(GL_TEXTURE);
    glLoadIdentity();
    texture->bind();
    glBlendFunc(GL_SRC_ALPHA, GL_ONE);
    glDisable(GL_DEPTH_TEST);
    //~ glColor4f(0.25, 0.75, 1.0, 0.125);
    glColor4f(r, g, b, a);
    if(rendermode==0) renderquads(x,y, w,h);
    else if(rendermode==1) renderarrays(x,y, w,h);
    else renderVBOs(x,y, w,h);
    glDisable(GL_SCISSOR_TEST);
    
    //~ static t_texture *tex;
    //~ if(!tex) tex= new t_texture(64, 64, 32);
    //~ tex->bind();
    //~ glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 0,t_pgrid::getinstance()->screen.height-64, 64,64, 0);
    //~ glDisable(GL_BLEND);
    //~ glColor3f(1,1,1);
    //~ glBegin(GL_QUADS);
    //~ glTexCoord2f(0,1);	glVertex2f(64, 64);
    //~ glTexCoord2f(1,1);	glVertex2f(64+64, 64);
    //~ glTexCoord2f(1,0);	glVertex2f(64+64, 64+64);
    //~ glTexCoord2f(0,0);	glVertex2f(64, 64+64);
    //~ glEnd();
    
    
/*
    renderer->startcapturing();
    do
    {
	renderer->nextcapture(x,y, w,h);
    } while(renderer->capture());
    
    for(int y= 0; y<renderer->texarray_h; y++)
    {
    	for(int x= 0; x<renderer->texarray_w; x++)
	{
	    t_texture *tex= renderer->texarray[y*renderer->texarray_w+x];
	    
	    tex->bind();
	    glDisable(GL_BLEND);
	    glColor3f(1,1,1);
	    glBegin(GL_QUADS);
	    glTexCoord2f(0,1);	glVertex2f(x*64, 	y*64);
	    glTexCoord2f(1,1);	glVertex2f(x*64+64, 	y*64);
	    glTexCoord2f(1,0);	glVertex2f(x*64+64, 	y*64+64);
	    glTexCoord2f(0,0);	glVertex2f(x*64, 	y*64+64);
	    glEnd();
	}
    }
*/
}


void t_particles::stopphysics()
{
    for(int i= particles.size()-1; i>=0; i--)
    {
	t_particle &p= particles[i];
	p.speed.x= p.speed.y= 0.0f;
    }
}


void t_particles::keyboard_event(SDL_KeyboardEvent &evt)
{
    if(!iscurrent()) return;
    if(evt.state==SDL_PRESSED) switch(evt.keysym.sym)
    {
	case 'q':
	{
	    static char *names[]= { "quads", "quad arrays", "VBO" };
	    rendermode++, rendermode%= 2,
	    printf("particle render mode: %s\n", names[rendermode]);
	    break;
	}
	case 'r':
	    //~ particles.setsize_fast(0);
	    //~ quads.clear();
	    for(int i= 0; i<1000; i++)
	    {
		vec pos(rnd()*grid->width*GRIDGRANULARITY, rnd()*grid->height*GRIDGRANULARITY), spd(0, 0);
		t_particle p= { pos, 0, spd };
		add(p);
	    }
	    break;
    }
}



t_particle_snapshot *t_particles::create_snapshot()
{
    t_particle_snapshot *snap= new t_particle_snapshot();
    
    for(int i= 0; i<particles.size(); i++)
    	snap->particles.add(particles[i]);
    
    return snap;
}




