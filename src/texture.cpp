#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <time.h>
#include <math.h>
#include <unistd.h>
#include <string>
#include <GL/gl.h>
#include <GL/glext.h>
#include <GL/glu.h>
#include <SDL/SDL.h>

#include "main.h"
#include "pgrid.h"
#include "image.h"
#include "workspace.h"
#include "editor.h"
#include "editortools.h"
#include "brush.h"
#include "texture.h"

#define REGISTERTEXTURE(texture) t_pgrid::getinstance()->screen.registertexture(texture)
#define UNREGISTERTEXTURE(texture) t_pgrid::getinstance()->screen.unregistertexture(texture)


t_texture::t_texture(int w, int h, int b, void *pixels, bool _mipmapped)
{
    glGenTextures(1, &glname);
    bind();
    mipmapped= _mipmapped;
    pixelcache= 0;
    if(pixels) setpixels(w, h, b, pixels);
    //~ else { unsigned char *buf= new unsigned char[w*h*(b>>3)]; setpixels(w, h, b, buf); delete buf; }
    else upload();
    REGISTERTEXTURE(this);
}

t_texture::~t_texture()
{
    glDeleteTextures(1, &glname);
    if(pixelcache) delete pixelcache;
    UNREGISTERTEXTURE(this);
}

void t_texture::setpixels(int w, int h, int b, void *pixels)
{
    width= w; height= h; bpp= b;
    if(pixelcache) delete pixelcache;
    pixelcache= new unsigned char[width*height*(bpp>>3)];
    memcpy(pixelcache, pixels, width*height*(bpp>>3));
    upload();
}

void t_texture::upload()
{
    int format= (bpp==8? GL_LUMINANCE: bpp==16? GL_LUMINANCE_ALPHA: bpp==24? GL_RGB: GL_RGBA);
    int internalformat= (bpp==32? 4: bpp==8? 1: 3);
    bind();
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, mipmapped? GL_LINEAR_MIPMAP_LINEAR: GL_LINEAR);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    if(pixelcache)
    {
	if(mipmapped) 
	    gluBuild2DMipmaps(GL_TEXTURE_2D, internalformat, width,height, format, GL_UNSIGNED_BYTE, pixelcache);
	else 
	    glTexImage2D(GL_TEXTURE_2D, 0, internalformat, width,height, 0, 
			 format, GL_UNSIGNED_BYTE, pixelcache);
    }
}
