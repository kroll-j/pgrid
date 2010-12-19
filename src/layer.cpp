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
#include "image.h"
#include "grid.h"

t_layer::t_layer(t_image *img): image(img)
{
    grid= new t_grid(img->width/GRIDGRANULARITY, img->height/GRIDGRANULARITY);
    particles= new t_particles(grid);
}

t_layer::~t_layer()
{
    delete grid;
    delete particles;
}

void t_layer::render(float x, float y, float w, float h)
{
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    if(image->showgrid) grid->render(x,y, w,h);
    particles->render(x,y, w,h);
    glDisable(GL_BLEND);
}
