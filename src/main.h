#ifndef MAIN_H
#define MAIN_H

typedef unsigned char 	u8;
typedef unsigned short 	u16;
typedef unsigned long 	u32;
typedef signed char 	s8;
typedef signed short 	s16;
typedef signed long 	s32;

typedef unsigned long long u64;

#define MIN(a, b) ( (a)<(b)? (a): (b) )
#define MAX(a, b) ( (a)>(b)? (a): (b) )

struct rgbafcolor
{
    float r, g, b, a;
};

struct rgbabcolor
{
    u8 r, g, b, a;
};


#define GRIDGRANULARITY	8

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


struct vec
{
    union
    {
        struct { float x, y; };
        float v[2];
    };

    vec() {}
    vec(float a, float b): x(a), y(b) {}
    vec(class polarvec &v);

    bool operator==(vec &v)	{ return x==v.x && y==v.y; }
    vec &mul(float f)        	{ x*= f; y*= f; return *this; }
    vec &div(float f)		{ x/= f; y/= f; return *this; }
    vec &add(const vec &o)	{ x+= o.x; y+= o.y; return *this; }
    vec &sub(const vec &o)	{ x-= o.x; y -= o.y; return *this; }
    float dot(const vec &o) 	{ return x*o.x + y*o.y; }
    vec &normalize() 		{ return div(len()); };
    float squaredlen() 		{ return x*x + y*y; }
    float len() 		{ return sqrt(squaredlen()); }
    float squareddist(const vec &v) { return (x-v.x)*(x-v.x) + (y-v.y)*(y-v.y); }
    float dist(const vec &v)	{ return sqrt(squareddist(v)); }
    
    vec &random_deviation(float maxradius);
} __attribute__((packed));

struct img_vec: public vec
{
    img_vec() {};
    img_vec(float x, float y): vec(x,y) {}
    img_vec(vec &v): vec(v) {}
    img_vec &operator= (vec v) { x= v.x; y= v.y; return *this; }
};

struct grid_vec: public vec
{
    grid_vec() {};
    grid_vec(float x, float y): vec(x,y) {}
    grid_vec(vec &v): vec(v) {}
};

struct polarvec
{
    float a /* in rad */, d;
    
    polarvec(): a(0), d(0) { }
    polarvec(float _a, float _d): a(_a), d(_d) { }
    polarvec(vec &v)
    {
	a= atan2(v.y, v.x);
	d= sqrt(v.y*v.y + v.x*v.x);
    }
};

inline vec::vec(polarvec &v)
{
    x= cos(v.a)*v.d;
    y= sin(v.a)*v.d;
}

inline vec &vec::random_deviation(float maxradius)
{
    float d= random()%1000*0.001;
    polarvec v(random()%360, tan(sqrt(d)*atan(1))*maxradius);
    return add(vec(v));
}



class input_handler
{
    public:
	virtual ~input_handler() { };
	virtual void keyboard_event(SDL_KeyboardEvent &evt)= 0;
    	virtual void mouse_motion_event(SDL_MouseMotionEvent &evt)= 0;
    	virtual void mouse_button_event(SDL_MouseButtonEvent &evt)= 0;
};

class dyninputhandler: public input_handler
{
    public:
	dyninputhandler();
	virtual ~dyninputhandler();
	
	virtual void keyboard_event(SDL_KeyboardEvent &evt) { }
    	virtual void mouse_motion_event(SDL_MouseMotionEvent &evt) { }
    	virtual void mouse_button_event(SDL_MouseButtonEvent &evt) { }
};


inline double rnd()
{
    return double(random())/RAND_MAX;
}


template<class T, int MIN, int MAX>
    void mkblob(T *buf, int size, float sharpness= 0.0)
{
    double kh= size*0.5;
    double max= sqrt(kh*kh);
    double rmax= 1.0/max;
    double sf= (sharpness>=0.8? (sharpness-0.8)*5*kh: 0) + 15;
    double sharpen= sharpness*sharpness*sharpness*sharpness * sf;
    for(int y= size-1; y>=0; y--)
    {
	for(int x= size-1; x>=0; x--)
	{
	    double dx= x-kh, dy= y-kh;
	    double f= 1.0 - sqrt(dx*dx+dy*dy)*rmax;
	    f+= f*sharpen;
	    if(f<0) f= 0;
	    else if(f>1.0) f= 1.0;
	    buf[y*size+x]= T( f*(MAX-MIN)+MIN );
	}
    }
}

template void mkblob<float, 0, 1>(float *buf, int size, float sharpness);
template void mkblob<u8, 0, 255>(u8* buf, int size, float sharpness);
#define mkblobu8 mkblob<u8, 0, 255>
#define mkblobf mkblob<float, 0, 1>



#define ASSERT

template <class T> struct vector
{
    T *buf;
    int alen;
    int ulen;

    vector()
    {
        alen = 8;
        buf = (T *)new u8[alen*sizeof(T)];
        ulen = 0;
    };

    ~vector() { setsize(0); delete[] (u8 *)buf; };

    vector(vector<T> &v);
    void operator=(vector<T> &v);

    T &add(const T &x)
    {
        if(ulen==alen) vrealloc();
        new (&buf[ulen]) T(x);
        return buf[ulen++];
    };

    T &add()
    {
        if(ulen==alen) vrealloc();
        new (&buf[ulen]) T;
        return buf[ulen++];
    };

    T &pop() { return buf[--ulen]; };
    T &last() { return buf[ulen-1]; };
    void drop() { buf[--ulen].~T(); };
    bool empty() const { return ulen==0; };

    int length() const { return ulen; };
    int size() const { return ulen; };
    T &operator[](int i) { ASSERT(i>=0 && i<ulen); return buf[i]; };
    const T &operator[](int i) const { ASSERT(i >= 0 && i<ulen); return buf[i]; };
    void setsize(int i) { ASSERT(i<=ulen); while(ulen>i) drop(); };
    void setsize_fast(int i) { ASSERT(i<=ulen); ulen= i; };	// doesn't use destructor
    
    void deletecontentsp() { while(!empty()) delete   pop(); };
    void deletecontentsa() { while(!empty()) delete[] pop(); };
    
    T *getbuf() { return buf; };

    void sort(void *cf) { qsort(buf, ulen, sizeof(T), (int (*)(const void *,const void *))cf); };

    void *_realloc(void *p, int oldsize, int newsize)
    {
        void *np = new u8[newsize];
        if(!oldsize) return np;
        memcpy(np, p, newsize>oldsize ? oldsize : newsize);
        delete[] (char *)p;
        return np;
    };
    
    void vrealloc()
    {
        int olen = alen;
        buf = (T *)_realloc(buf, olen*sizeof(T), (alen *= 2)*sizeof(T));
    };

    T remove(int i)
    {
        T e = buf[i];
        for(int p = i+1; p<ulen; p++) buf[p-1] = buf[p];
        ulen--;
        return e;
    };
    
    void removeobj(T &o)
    {
        for(int i= 0; i<ulen; i++) if(buf[i]==o) remove(i--);
    };

    T &insert(int i, const T &e)
    {
        add(T());
        for(int p = ulen-1; p>i; p--) buf[p] = buf[p-1];
        buf[i] = e;
        return buf[i];
    };
};


#endif
