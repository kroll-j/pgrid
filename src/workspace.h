#ifndef WORKSPACE_H
#define WORKSPACE_H

#include "main.h"
#include "pgrid.h"
#include "editor.h"
#include "texture.h"

class t_workspace: public input_handler
{
    private:
	float zoom;
    	vec img;	// bild-offset
    	bool dragging;
    	u32 dragstart;
    	vec dragstartpos;
    	static t_texture *bgtexture;
    	
    public:
    	class t_pgrid *pgrid;
	class t_image *image;
    
	t_workspace(t_pgrid *_pgrid);
	
	~t_workspace();
	
	float getzoom() { return zoom; }
	
	vec screen2img(int x, int y)
	{
	    vec ret((x-img.x)/zoom, (y-img.y)/zoom);
	    return ret;
	}
	
	vec img2screen(float x, float y)
	{
	    vec ret(img.x+(x/zoom), img.y+(y/zoom));
	    return ret;
	}
	
	void centerimage()
	{
	    float w= image->width*zoom,
	    	  h= image->height*zoom;
	    img.x= (pgrid->screen.width-w)/2;
	    img.y= (pgrid->screen.height-h)/2;
	}
	
	void bgrect(float x, float y, float rgt, float btm);
	
	void renderbg();
	
	void render();
	
	void setcenter(float img_cx, float img_cy)
	{
	    img.x= pgrid->screen.width/2 - img_cx*zoom;
	    img.y= pgrid->screen.height/2 - img_cy*zoom;
	}
	
	void dozoom(float factor, bool mousecenter= false)
	{
	    if( (zoom>64 && factor>1.0) || (zoom<1.0/64 && factor<1.0)) return;
	    vec focus= mousecenter? screen2img(int(pgrid->mouse.x), int(pgrid->mouse.y)):
		       screen2img(pgrid->screen.width/2, pgrid->screen.height/2);

	    zoom*= factor;
	    setcenter(focus.x, focus.y);
	    
	    if(zoom<1.0) printf("zoom: 1:%.0f\n", 1.0/zoom);
	    else printf("zoom: %.0f:1\n", zoom);
	}
	
	void printstatus()
	{
	    t_layer *l= image->current_layer();
	    printf("grid size: %dx%d\nparticles: %d\n", l->grid->width, l->grid->height, l->particles->particles.size());
	}
	
	void keyboard_event(SDL_KeyboardEvent &event);
	
	void mouse_motion_event(SDL_MouseMotionEvent &event);

    	void mouse_button_event(SDL_MouseButtonEvent &evt);
};


#endif
