#ifndef BRUSH_H
#define BRUSH_H

#include "texture.h"


enum
{
    BRUSHTYPE_BLOB= 0,
};

class t_brush
{
    protected:
	int width, height;
    	float *pixels;
    	int type;
    	t_texture *texture;
    	t_texture *createtexture()
    	{
	    // textur erstellen deren höhe und breite möglichst kleine zweierpotenzen sind,
	    // dann brush-pixel in die linke obere ecke hineinkopieren
	    int w= 8, h= 8;
	    while(w<width) w*= 2;
	    while(h<height) h*= 2;
	    
	    u8 tpixels[w*h*2];
	    memset(tpixels, 0, sizeof(tpixels));
	    for(int y= 0; y<height; y++)
	    {
		for(int x= 0; x<width; x++)
		{
		    int c= int(pixels[y*width+x]*255);
		    int o= (y*w+x)*2;
		    tpixels[o]= tpixels[o+1]= (c<0? 0: c>255? 255: c);
		}
	    }
	    return new t_texture(w, h, 16, tpixels, true);
	}
    
    public:
	t_brush(): width(0), height(0), pixels(0), texture(0) { }
	virtual ~t_brush() { if(pixels) free(pixels); }
	
	float *getpixels() { return pixels; }
	int getwidth() { return width; }
	int getheight() { return height; }
	
	t_texture *gettexture()
	{
	    if(texture) return texture; 
	    else return (texture= createtexture());
	}
	
	virtual void resize(int width, int height)= 0;
};


class t_blobbrush: public t_brush
{
    private:
	float sharpness;
    
    public:
	void create(int width, int height, float sharpness= 0.0)
	{
	    if(width!=height) return;	// geht (noch) nicht
	    if(width<1) width= 1;
	    if(height<1) height= 1;
	    this->width= width; this->height= height;
	    this->sharpness= sharpness;
	    type= BRUSHTYPE_BLOB;
	    pixels= (float*)realloc(pixels, width*height*sizeof(float));
	    mkblobf(pixels, width, sharpness);
	    if(texture) { delete(texture); texture= 0; }
	}
	
	t_blobbrush(int width, int height, float sharpness= 0.0)
	{
	    create(width, height, sharpness);
	}
	
	float getsharpness() { return sharpness; }
	
	void resize(int width, int height)
	{
	    create(width, height, sharpness);
	}
};

#endif
