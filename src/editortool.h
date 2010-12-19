#ifndef EDITORTOOL_H
#define EDITORTOOL_H

#include "main.h"

class t_editortool: public input_handler
{
    protected:
	class t_editor *editor;
	int mouse_buttons;
	img_vec mouse_img_pos;
	vec lastmousemove;
    	img_vec lerpedmousepos;	// nur im phys_tick verwenden... wenn überhaupt
    	
    public:
    	t_editortool(t_editor *e): editor(e), mouse_buttons(0)
    	{
	    mouse_img_pos.x= mouse_img_pos.y= 0;
	}
	virtual ~t_editortool() { };

	void keyboard_event(SDL_KeyboardEvent &evt) { }
	void mouse_motion_event(SDL_MouseMotionEvent &evt);
    	void mouse_button_event(SDL_MouseButtonEvent &evt);
    	
	virtual void phys_tick(float time);
	virtual void drawhint();
};



#endif
