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
#include "pgrid.h"
#include "main.h"


int main(void)
{
    t_pgrid::getinstance()->run();
    delete(t_pgrid::getinstance());
    
    return 0;
}
