#ifndef SCREEN_H
#define SCREEN_H

#include <vector>

struct t_screen
{
    int width, height;
    bool fullscreen;
    bool ortho;
    float fov, aspmod;
    float planedist;
    
    SDL_Surface *sdl_surface;
    std::vector<class t_texture *> textures;
    
    t_screen(): ortho(false), fov(90), aspmod(1.0)
    {
    }
    ~t_screen();
    
    void registertexture(t_texture *t);
    void unregistertexture(t_texture *t);
    void rebuildtextures();

    void setortho();
    
    float getaspect()
    {
	return float(width)/height / aspmod;
    }
    
    float getyfov()
    {
	return fov*float(height)/width * aspmod;
    }
    
    float calcplanedist();
    
    void setperspective(float fov= 90, float asp= 1.0);
    
    void gl_init(int w, int h);
    
    void init(int w, int h, bool fullscreen);
    
    void togglefullscreen();
};

#endif
