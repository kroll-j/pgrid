#ifndef OFFSCREEN_RENDERER_H
#define OFFSCREEN_RENDERER_H


class t_offscreen_renderer
{
    private:
    public:
	float img_w, img_h;
    	float cur_x, cur_y,
	      cur_w, cur_h;
    	bool rendering;
    	int texture_size; // width/height
    	std::vector<t_texture*> texarray;
    	int texarray_w, texarray_h;
    	
    	t_offscreen_renderer(float image_w, float image_h);
    	~t_offscreen_renderer();
    	
    	void startcapturing();
    	void nextcapture(float &x, float &y, float &w, float &h);
    	bool capture();
};






#endif
