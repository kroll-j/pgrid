#ifndef EDITOR_H
#define EDITOR_H

#include "main.h"
#include "pgrid.h"
#include "image.h"
#include "editortool.h"
#include "brush.h"


class t_editor: public input_handler
{
    friend class flux_toolbar;
    private:
	struct 
	{
	    bool wrapmode;
	    bool lerpmouse;
	    bool showparticles;
	} options;
	
	std::vector<t_editortool*> tools;
	int selected_tool;
	
	t_brush *curbrush;
	
	u32 last_tool_select_time, last_selected_tool;
	
    	
    public:
	class t_pgrid *pgrid;
	
	bool dowrap() { return options.wrapmode; }
	bool lerpmouse() { return options.lerpmouse; }
	bool showparticles() { return options.showparticles; }

	t_editor(t_pgrid *_pgrid);
	
	~t_editor()
	{
	    for(int i= 0; i<tools.size(); i++)
		delete tools[i];
	    if(curbrush) delete curbrush;
	}
	
	void select_tool(int n);
	
	t_brush *getbrush()
	{
	    return curbrush? curbrush: (curbrush= new t_blobbrush(60, 60, 0.125));
	}
	
	void phys_tick(float time)
	{
	    tools[selected_tool]->phys_tick(time);
	}
	
	void render()
	{
	    tools[selected_tool]->drawhint();
	}
	
	void keyboard_event(SDL_KeyboardEvent &evt);
    	void mouse_button_event(SDL_MouseButtonEvent &evt)
	{
	    tools[selected_tool]->mouse_button_event(evt);
	}
	void mouse_motion_event(SDL_MouseMotionEvent &evt)
	{
	    tools[selected_tool]->mouse_motion_event(evt);
	}
};


#endif
