#ifndef PGRID_H
#define PGRID_H

#include <vector>
#include <set>
#include "screen.h"
#include "image.h"

class t_pgrid
{
    private:
	static t_pgrid *instance;
	u32 lastmillis, curmillis;
    	u32 physicstime, lastframephystime;
    	std::vector<class t_workspace *> workspaces;
	u8 keystate[SDLK_LAST];
	vec mousevel;
	float physics_speed;
	
	bool physicspaused;
	bool hasinputfocus, hasmousefocus;
	
	typedef std::set<dyninputhandler*> t_dyninputhandler_list;
	t_dyninputhandler_list dyninputhandlers;
	
	void runphysics();
    	
    public:
	vec mousepos;	// beim start des letzten frames
	
    	enum { PHYSICSFRAMEMILLIS= 1000/100 };

	t_screen screen;
    	class t_editor *editor;
	
	struct _mouse: public vec { int buttons; } mouse;
    	
    	class flux_gui *gui;
    
	t_pgrid();
	
	~t_pgrid();
	
	static t_pgrid *getinstance();
	
	t_workspace *current_workspace()
	{
	    return workspaces[0];
	}
	
	float get_physics_speed() { return physics_speed; }
	void set_physics_speed(float f) { physics_speed= f; }
	
	u32 time()
	{
	    return curmillis;
	}
	
	u32 frametime()
	{
	    return curmillis-lastmillis;
	}
	
	u32 phystime() { return physicstime; }
	
	u32 framephystime() { return lastframephystime; }
	
	vec &getmousevel() { return mousevel; }
	
	bool getkeystate(SDLKey key)
	{
	    return bool(keystate[key]);
	}
	
	void registerinputhandler(dyninputhandler *h) { dyninputhandlers.insert(h); }
	void unregisterinputhandler(dyninputhandler *h) { dyninputhandlers.erase(h); }
	
	bool isphysicspaused() { return physicspaused|(!hasinputfocus); }
	void pausephysics(bool on);
	
	void run();
	
	static class t_texture *load_texture(char *filename);
};

#endif
