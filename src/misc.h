#ifndef MISC_H
#define MISC_H

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;

inline void fatal(const char *msg)
{
    printf("fatal: "); puts(msg);
    exit(1);
}

inline void checkglerror()
{
    int err= glGetError();
    if(err)
    {
	std::string str= "GL Error: ";
	str+= (char*)gluErrorString(err);
	fatal(str.c_str());
    }
}


#endif
