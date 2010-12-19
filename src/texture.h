#ifndef TEXTURE_H
#define TEXTURE_H

struct t_texture
{
    GLuint glname;
    int width, height;
    int bpp;
    bool mipmapped;
    unsigned char *pixelcache;
    char name[32];
    
    void bind()
    {
	glBindTexture(GL_TEXTURE_2D, glname);
    }
    
    void upload();
    
    void rebuild()
    {
	if(glIsTexture(glname)) glDeleteTextures(1, &glname);
	glGenTextures(1, &glname);
	upload();
    }
    
    void setpixels(int w, int h, int b, void *pixels);
    
    t_texture(int w, int h, int bpp, void *pixels= 0, bool _mipmapped= false);
    
    ~t_texture();
};


#endif
