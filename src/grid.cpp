#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <time.h>
#include <math.h>
#include <assert.h>
#include <unistd.h>
#include <string>
#include <GL/gl.h>
#include <GL/glext.h>
#include <GL/glu.h>
#include <SDL/SDL.h>
#include "image.h"
#include "grid.h"
#include "editor.h"


t_grid::t_grid(int w, int h): width(w), height(h)
{
    gridpoint_data= new u8[ sizeof(t_gridpoint)*((w+1)*(h+1)+16) ];
    gridpoints= (t_gridpoint*)( gridpoint_data+(((u32)gridpoint_data+sizeof(t_gridpoint)*8)&31) );
    editor= t_pgrid::getinstance()->editor;
    for(int i= (w+1)*(h+1)-1; i>=0; i--)
    {
	gridpoints[i].height= 0.0;
	gridpoints[i].speedmod_x= gridpoints[i].speedmod_y= 0.0;
	gridpoints[i].color.r= gridpoints[i].color.g= gridpoints[i].color.b= gridpoints[i].color.a= 128;
    }
    
    for(int y= 0; y<=height; y++)
    {
	for(int x= 0; x<=width; x++)
	{
	    t_gridpoint &p= gridpoints[y*(width+1)+x];	//getpoint(x, y);
	    p.x= x*GRIDGRANULARITY; p.y= y*GRIDGRANULARITY;
	}
    }
    
    drawing_indices= new int[width*height*4];
    for(int y= 0; y<height; y++)
    {
	for(int x= 0; x<width; x++)
	{
	    drawing_indices[(y*width+x)*4+0]= (y+0)*(width+1)+(x+0);
	    drawing_indices[(y*width+x)*4+1]= (y+0)*(width+1)+(x+1);
	    drawing_indices[(y*width+x)*4+2]= (y+1)*(width+1)+(x+1);
	    drawing_indices[(y*width+x)*4+3]= (y+1)*(width+1)+(x+0);
	}
    }
}



void t_grid::render_quadstrips(float img_x, float img_y, float img_w, float img_h)
{
    static float colA[]= { 0, 0, 0, 0.5 };
    static float colB[]= { 137.0/255, 194.0/255, 255.0/255, 0.6 };
    
    //~ glEnable(GL_TEXTURE_2D);
    //~ glEnable(GL_TEXTURE_GEN_S);
    //~ glEnable(GL_TEXTURE_GEN_T);
    //~ glTexGeni(GL_S, GL_TEXTURE_GEN_MODE, GL_OBJECT_LINEAR);
    //~ glTexGeni(GL_T, GL_TEXTURE_GEN_MODE, GL_OBJECT_LINEAR);
    //~ glMatrixMode(GL_TEXTURE);
    //~ glPushMatrix();
    //~ glScalef(1.0/32, 1.0/32, 1);

    for(int y= 0; y<height; y++)
    {
	glBegin(GL_QUAD_STRIP);
	for(int x= 0; x<=width; x++)
	{
	    t_gridpoint &t0= getpoint(x,y),
			&t1= getpoint(x,y+1);
	    float ch= t0.height+.5;

	    glColor4f(colA[0]+(colB[0]-colA[0])*ch, colA[1]+(colB[1]-colA[1])*ch, colA[2]+(colB[2]-colA[2])*ch, colA[3]+(colB[3]-colA[3])*ch);
	    glVertex3f(x*GRIDGRANULARITY, y*GRIDGRANULARITY, t0.height);
	    
	    ch= t1.height+.5;
	    glColor4f(colA[0]+(colB[0]-colA[0])*ch, colA[1]+(colB[1]-colA[1])*ch, colA[2]+(colB[2]-colA[2])*ch, colA[3]+(colB[3]-colA[3])*ch);
	    glVertex3f(x*GRIDGRANULARITY, (y+1)*GRIDGRANULARITY, t1.height);
	    
	}
	glEnd();
    }
    
    //~ glPopMatrix();
    //~ glDisable(GL_TEXTURE_GEN_S);
    //~ glDisable(GL_TEXTURE_GEN_T);
}

void t_grid::render_quads(float img_x, float img_y, float img_w, float img_h)
{
    static float colA[]= { 0, 0, 0, 0.5 };
    static float colB[]= { 137.0/255, 194.0/255, 255.0/255, 0.6 };
    
    glBegin(GL_QUADS);
    for(int y= 0; y<height; y++)
    {
	for(int x= 0; x<width; x++)
	{
	    t_gridpoint &t0= getpoint(x,y),	&t1= getpoint(x+1,y),
			&t2= getpoint(x,y+1),	&t3= getpoint(x+1,y+1);
	    float ch= t0.height+.5;

	    glColor4f(colA[0]+(colB[0]-colA[0])*ch, colA[1]+(colB[1]-colA[1])*ch, colA[2]+(colB[2]-colA[2])*ch, colA[3]+(colB[3]-colA[3])*ch);
	    glVertex3f(t0.x, t0.y, t0.height);
	    
	    ch= t1.height+.5;
	    glColor4f(colA[0]+(colB[0]-colA[0])*ch, colA[1]+(colB[1]-colA[1])*ch, colA[2]+(colB[2]-colA[2])*ch, colA[3]+(colB[3]-colA[3])*ch);
	    glVertex3f(t1.x, t1.y, t1.height);
	    glVertex3f(t3.x, t3.y, t3.height);
	    glVertex3f(t2.x, t2.y, t2.height);
	    
	}
    }
    glEnd();
}

void t_grid::render_scanlines(float img_x, float img_y, float img_w, float img_h)
{
    static rgbabcolor coltable[256];
    for(int i= 0; i<256; i++)
    {
	rgbabcolor &c= coltable[i];
	int r= i*2, g= i*3/2, b= i/2;
	c.a= 255;
	c.r= r>255? 255: r;
	c.g= g>255? 255: g;
	c.b= b;
    }

    glColor4f(1,1,1,1);
    glBegin(GL_QUADS);
    bool was_empty= false;
    int first_empty_scanline= 0;
    for(int y= 0; y<height; y++)
    {
	int startx= 0;
	while(startx<width)
	{
	    t_gridpoint &p0= gridpoints[  y  *(width+1)+startx],
			&p1= gridpoints[(y+1)*(width+1)+startx],
	    		*p2= 0, *p3= 0;
	    int endx;
	    for(endx= startx+1; endx<=width; endx++)
	    {
		p2= &gridpoints[  y  *(width+1)+endx];
		p3= &gridpoints[(y+1)*(width+1)+endx];
		if( (!p0.looks_equal(p1)) || (!p0.looks_equal(*p2)) || (!p0.looks_equal(*p3)) )
		    break;
	    }
	    
	    if(startx==0 && endx==width+1)
	    {
		// leere scanline
		if(!was_empty)
		    first_empty_scanline= y,
		    was_empty= true;
		startx= width;
	    }
	    else
	    {
		// gefüllte scanline
		if(was_empty)
		{
		    t_gridpoint &p0= gridpoints[first_empty_scanline*(width+1)],
		    		&p1= gridpoints[first_empty_scanline*(width+1)+width],
		    		&p2= gridpoints[y*(width+1)+width],
		    		&p3= gridpoints[y*(width+1)];
		    int c= int(p0.disp_height*128)+128;
		    p0.color= coltable[ (c<0? 0: c>255? 255: c) ];
		    glColor4ubv((u8*)&p0.color);
		    glVertex3f(p0.x, p0.y, p0.disp_height);
		    glVertex3f(p1.x, p1.y, p1.disp_height);
		    glVertex3f(p2.x, p2.y, p2.disp_height);
		    glVertex3f(p3.x, p3.y, p3.disp_height);
		    was_empty= false;
		}
		
		if(endx-startx>1)
		{
		    startx= endx-1;
		    p2= &gridpoints[  y  *(width+1)+endx-1];
		    p3= &gridpoints[(y+1)*(width+1)+endx-1];
		    
		    t_gridpoint *p= &gridpoints[y*(width+1)+startx];
		    int c= int(p->disp_height*128)+128;
		    p->color= coltable[ (c<0? 0: c>255? 255: c) ];
		    glColor4ubv((u8*)&p->color);
		    glVertex3f(p0.x, p0.y, (p0.disp_height));
		    glVertex3f(p2->x, p2->y, (p2->disp_height));
		    glVertex3f(p3->x, p3->y, (p3->disp_height));
		    glVertex3f(p1.x, p1.y, (p1.disp_height));
		}
		else
		{
		    t_gridpoint *p= &gridpoints[y*(width+1)+startx];
		    int c= int(p->disp_height*128)+128;
		    p->color= coltable[ (c<0? 0: c>255? 255: c) ];
		    glColor4ubv((u8*)&p->color);
		    glVertex3f(p0.x, p0.y, (p0.disp_height));
		    
		    p= &gridpoints[y*(width+1)+endx];
		    c= int(p->disp_height*128)+128;
		    p->color= coltable[ (c<0? 0: c>255? 255: c) ];
		    glColor4ubv((u8*)&p->color);
		    glVertex3f(p2->x, p2->y, (p2->disp_height));
		    
		    p= &gridpoints[(y+1)*(width+1)+endx];
		    c= int(p->disp_height*128)+128;
		    p->color= coltable[ (c<0? 0: c>255? 255: c) ];
		    glColor4ubv((u8*)&p->color);
		    glVertex3f(p3->x, p3->y, (p3->disp_height));
		    
		    p= &gridpoints[(y+1)*(width+1)+startx];
		    c= int(p->disp_height*128)+128;
		    p->color= coltable[ (c<0? 0: c>255? 255: c) ];
		    glColor4ubv((u8*)&p->color);
		    glVertex3f(p1.x, p1.y, (p1.disp_height));

		    startx= endx;
		}
	    }
	}
    }
    if(was_empty)
    {
	t_gridpoint &p0= gridpoints[first_empty_scanline*(width+1)],
		    &p1= gridpoints[first_empty_scanline*(width+1)+width],
		    &p2= gridpoints[(height-1)*(width+1)+width],
		    &p3= gridpoints[(height-1)*(width+1)];
	int c= int(p0.disp_height*128)+128;
	p0.color= coltable[ (c<0? 0: c>255? 255: c) ];
	glColor4ubv((u8*)&p0.color);
	glVertex3f(p0.x, p0.y, p0.disp_height);
	glVertex3f(p1.x, p1.y, p1.disp_height);
	glVertex3f(p2.x, p2.y, p2.disp_height);
	glVertex3f(p3.x, p3.y, p3.disp_height);
	was_empty= false;
    }
    glEnd();
    return;
}

void t_grid::render_arrays(float img_x, float img_y, float img_w, float img_h)
{
    static rgbabcolor coltable[256];
    for(int i= 0; i<256; i++)
    {
	rgbabcolor &c= coltable[i];
	int r= i*2, g= i*3/2, b= i/2;
	c.a= 255;
	c.r= r>255? 255: r;
	c.g= g>255? 255: g;
	c.b= b;
    }

    for(int i= (width+1)*(height+1)-1; i>=0; i--)
    {
	t_gridpoint &p= gridpoints[i];
	int c= int(p.height*128)+128;
	p.color= coltable[ (c<0? 0: c>255? 255: c) ];
    }
    
    //~ glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    
    glDisable(GL_DEPTH_TEST);
    
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    
    glVertexPointer(3, GL_FLOAT, sizeof(t_gridpoint), &gridpoints[0].x);
    glColorPointer(4, GL_UNSIGNED_BYTE, sizeof(t_gridpoint), &gridpoints[0].color);
    
    glDrawElements(GL_QUADS, width*height*4, GL_UNSIGNED_INT, drawing_indices);
    
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    
    //~ glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}

void t_grid::render(float img_x, float img_y, float img_w, float img_h)
{
    render_arrays(img_x, img_y, img_w, img_h);
    //~ render_scanlines(img_x, img_y, img_w, img_h);
}


void t_grid::fade(float time)
{
    float f= 1.0-time*0.5;
    x86_fade_height((asm_gridpt*)gridpoints, f, (width+1)*(height+1));
}

void t_grid::frame_tick(float time)
{
}

void t_grid::simplephysics(float time)
{
    if(!t_pgrid::getinstance()->isphysicspaused())
	fade(time);
}

void t_grid::complexphysics(float time)
{
    t_gridpoint buf[(width+1)*(height+1)];
    for(int y= height; y>=0; y--)
    {
	for(int x= width; x>=0; x--)
	{
	    t_gridpoint &v0= getpoint(x-5, y-5), &v1= getpoint(x+5, y-5),
			&v2= getpoint(x-5, y+5), &v3= getpoint(x+5, y+5),
			&v= getpoint(x, y);
	    float height= v0.height*0.230 + v1.height*0.230 + 
			  v2.height*0.230 + v3.height*0.230 +
			   v.height*0.080;
	    float xd= v0.speedmod_x*0.230 + v1.speedmod_x*0.230 + 
		      v2.speedmod_x*0.230 + v3.speedmod_x*0.230 +
		      v.speedmod_x*0.080;
	    float yd= v0.speedmod_y*0.230 + v1.speedmod_y*0.230 + 
		      v2.speedmod_y*0.230 + v3.speedmod_y*0.230 +
		      v.speedmod_y*0.080;
	    buf[y*(width+1)+x].height= height;
	    buf[y*(width+1)+x].speedmod_x= xd;
	    buf[y*(width+1)+x].speedmod_y= yd;
	}
    }
    for(int i= (width+1)*(height+1)-1; i>=0; i--)
    {
	gridpoints[i].height= buf[i].height;
	gridpoints[i].speedmod_x= buf[i].speedmod_x;
	gridpoints[i].speedmod_y= buf[i].speedmod_y;
    }
}

void t_grid::stopphysics()
{
    for(int i= (width+1)*(height+1)-1; i>=0; i--)
    {
	t_gridpoint &p= gridpoints[i];
	p.height= p.speedmod_x= p.speedmod_y= 0.0f;
    }
}


// ----------------------------------------------

bool t_gridpoint::looks_equal(t_gridpoint &other)
{
    return ( disp_height==other.disp_height );
}





