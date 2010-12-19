#ifndef GUI_H
#define GUI_H

class flux_prim
{
    protected:
	unsigned long id;
    	int timer_id;
    	
    	flux_prim() { id= -1; }
	~flux_prim() { if(id>=0) wnd_destroy(id); }
    	
	static int cb_mouse_base(flux_prim *self, struct primitive *prim, int type, int x, int y, int btn)
	{ return self->mouse_event(prim, type, x, y, btn); }
    	static int cb_status_base(flux_prim *self, struct primitive *prim, int type)
	{ return self->status_event(prim, type); }
	static prop_t cb_props_base(flux_prim *self, struct primitive *prim, int type, char *name, int id, prop_t value)
	{ return self->props_event(prim, type, name, id, value); }
	static void cb_keyboard_base(flux_prim *self, struct primitive *prim, int isdown, int scancode, int chr)
	{ self->keyboard_event(prim, isdown, scancode, chr); }
	static void cb_paint_base(flux_prim *self, struct primitive *prim, rect *abspos, rect *upd)
	{ self->paint_event(prim, abspos, upd); }
	static void timer_event_base(flux_prim *self, int idtimer, dword time)
	{ self->timer_event(idtimer, time); }
    
    	void install_callbacks(bool custom_paint= false, bool handle_keyboard= false)
	{
	    primitive *p= findprim(id);
	    if(!p) { printf("install_callbacks: ID %d not found...\n", id); abort(); }
	    
	    p->callbacks.mouse= (cb_mouse)cb_mouse_base;
	    p->callbacks.status= (cb_status)cb_status_base;
	    p->callbacks.props= (cb_props)cb_props_base;
	    if(handle_keyboard) p->callbacks.keybd= (cb_keybd)cb_keyboard_base;
	    if(custom_paint) p->callbacks.paint= (cb_paint)cb_paint_base;
	    
	    for(int i= 0; i<=primitive::CB_PAINT; i++)
		p->cb_array[i].arg= (prop_t)this;
	}
	
	void install_timer(dword interval)
	{
	    timer_id= timer_create((timer_func)timer_event_base, (prop_t)this, interval);
	}
    	
	void kill_timer()
	{
	    if(timer_id>=0) timer_kill(timer_id);
	    timer_id= -1;
	}
	
    
    public:
	virtual int mouse_event(primitive *prim, int type, int x, int y, int btn) {}
	virtual int status_event(primitive *self, int type) {}
	virtual prop_t props_event(primitive *self, int type, char *name, int id, prop_t value) {}
	virtual void keyboard_event(primitive *self, int isdown, int scancode, int chr) {}
	virtual void paint_event(primitive *self, rect *abspos, rect *upd) {}
	virtual void timer_event(int idtimer, dword time) {}
	
	dword get_id() { return id; }
	
	void show(bool on) { wnd_show(id, on); }
};

class flux_rect: public flux_prim
{
    public:
	flux_rect(dword parent, int x,int y, int width,int height, int col, int align= 0)
    	{
	    id= create_rect(parent, x,y, width,height, col, align);
	}
};

class flux_frame: public flux_prim
{
    public:
	flux_frame(dword parent, int x,int y, int width,int height, int framewidth, dword col_left, dword col_top, dword col_right, dword col_btm, int align= 0)
	{
	    id= create_frame(parent, x,y, width,height, framewidth, col_left, col_top, col_right, col_btm, align);
	}
};

class flux_button: public flux_prim
{
    protected:
	dword idframe;
    	dword idtext;
    	dword color_default, color_hi, color_lo;
    	bool pressed;
    	
    public:
	flux_button(dword parent, int x,int y, int width,int height, char *text, int align= 0)
	{
	    id= create_rect(parent, x,y, width,height, COL_ITEMLO, align);
	    idframe= create_frame(id, 0,0, 0,0, 1, COL_FRAMEHI|TRANSL_2, COL_FRAMEHI|TRANSL_2, COL_FRAMELO|TRANSL_2, COL_FRAMELO|TRANSL_2, 
				  ALIGN_LEFT|ALIGN_TOP|ALIGN_RIGHT|ALIGN_BOTTOM);
	    idtext= create_text(id, 0,0, 0,0, text, COL_ITEMTEXT, FONT_DEFAULT, ALIGN_HCENTER|ALIGN_VCENTER);
	    settext(text);
	    install_callbacks();
	    color_default= COL_ITEM;
	    color_hi= COL_ITEMHI;
	    color_lo= COL_ITEMLO;
	}
	
	void settext(char *text)
	{
	    text_settext(idtext, text);
	    int w= font_gettextwidth(FONT_DEFAULT, text),
	    	h= font_gettextheight(FONT_DEFAULT, text);
	    wnd_setsize(idtext, w, h);
	}
	
	int mouse_event(primitive *prim, int type, int x, int y, int btn)
	{
	    switch(type)
	    {
		case MOUSE_IN:
		    if(!btn) rect_setcolor(id, color_hi);
		    break;
		case MOUSE_OUT:
		    pressed= false;
		    rect_setcolor(id, color_default);
		    frame_setcolors(idframe, COL_FRAMEHI|TRANSL_2, COL_FRAMEHI|TRANSL_2,
				    COL_FRAMELO|TRANSL_2, COL_FRAMELO|TRANSL_2);
		    break;
		case MOUSE_DOWN:
		    pressed= true;
		    rect_setcolor(id, color_lo);
		    frame_setcolors(idframe, COL_FRAMELO|TRANSL_2, COL_FRAMELO|TRANSL_2, 
				    COL_FRAMEHI|TRANSL_2, COL_FRAMEHI|TRANSL_2);
		    break;
		case MOUSE_UP:
		    pressed= false;
		    rect_setcolor(id, color_hi);
		    frame_setcolors(idframe, COL_FRAMEHI|TRANSL_2, COL_FRAMEHI|TRANSL_2,
				    COL_FRAMELO|TRANSL_2, COL_FRAMELO|TRANSL_2);
		    break;
	    }
	}
	
};



class flux_skin_area: public flux_prim
{
    protected:
	t_texture *texture;
    	int tx, ty, tw, th;
    	flux_rgba color;
    
    public:
	flux_skin_area(dword parent, int x, int y, int w, int h, int tx, int ty, int tw, int th, t_texture *texture, int align= 0)
    	{
	    id= create_rect(parent, x,y, w,h, 0, align);
	    
	    this->texture= texture;
	    this->tx= tx; this->ty= ty;
	    this->tw= tw; this->th= th;
	    
	    primitive *p= findprim(id);
	    if(!p) { printf("flux_skin_area: ID %d not found...\n", id); return; }
	    p->callbacks.paint= (cb_paint)cb_paint_base;
	    p->cb_array[primitive::CB_PAINT].arg= (prop_t)this;
	    
	    *(int*)&color= 0xFFFFFFFF;
	}
	
	~flux_skin_area()
	{
	    wnd_destroy(id);
	}
	
	void set_color(flux_rgba col)
	{
	    color= col;
	}
	
	void set_color(unsigned col)
	{
	    *(unsigned*)&color= col;
	}
	
	void paint_event(primitive *self, rect *abspos, rect *upd)
	{
	    glColor4ubv((GLubyte*)&color);
	    texture->bind();
	    glMatrixMode(GL_TEXTURE);
	    glLoadIdentity();
	    glScalef(1.0f/texture->width, 1.0f/texture->height, 1.0f);
	    glEnable(GL_TEXTURE_2D);
	    
	    int upd_w= upd->rgt-upd->x,
	    	upd_h= upd->btm-upd->y;
	    int pos_w= abspos->rgt-abspos->x,
	    	pos_h= abspos->btm-abspos->y;
	    
	    float tex_x0= float(upd->x-abspos->x) / pos_w * tw + tx;
	    float tex_y0= float(upd->y-abspos->y) / pos_h * th + ty;
	    
	    float tex_x1= float(upd->rgt-abspos->x) / pos_w * tw + tx;
	    float tex_y1= float(upd->btm-abspos->y) / pos_h * th + ty;
	    
	    glBegin(GL_QUADS);
	    glTexCoord2f(tex_x0, tex_y0);	glVertex2f(upd->x, upd->y);
	    glTexCoord2f(tex_x1, tex_y0);	glVertex2f(upd->rgt, upd->y);
	    glTexCoord2f(tex_x1, tex_y1);	glVertex2f(upd->rgt, upd->btm);
	    glTexCoord2f(tex_x0, tex_y1);	glVertex2f(upd->x, upd->btm);
	    glEnd();
	    glDisable(GL_TEXTURE_2D);
	}
};
    

class flux_skin_frame: public flux_prim
{
    protected:
	t_texture *texture;
    	int tx, ty, tw, th;
    	flux_skin_area *sas[3*3];
    
    public:
	flux_skin_frame() { }
    	
	flux_skin_frame(dword parent, int x, int y, int w, int h, int tx, int ty, int tw, int th, t_texture *tex, 
    			int corner_size, int align= 0)
	{
	    create(parent, x,y, w,h, tx,ty, tw,th, tex, corner_size, align);
	}
	
	void create(dword parent, int x, int y, int w, int h, int tx, int ty, int tw, int th, t_texture *tex, 
		    int corner_size, int align= 0)
    	{
	    id= create_rect(parent, x,y, w,h, INVISIBLE, align);
	    
	    texture= tex;
	    this->tx= tx; this->ty= ty;
	    this->tw= tw; this->th= th;
	    
	    sas[0]= new flux_skin_area(id, 0,0, corner_size,corner_size, tx+0,ty+0, 
				       corner_size,corner_size, tex, ALIGN_LEFT);
	    sas[1]= new flux_skin_area(id, corner_size,0, corner_size,corner_size, tx+corner_size,ty, 
				       tw-corner_size*2,corner_size, tex, ALIGN_LEFT|ALIGN_RIGHT);
	    sas[2]= new flux_skin_area(id, 0,0, corner_size,corner_size, tx+tw-corner_size,ty+0, 
				       corner_size,corner_size, tex, ALIGN_RIGHT);

//~ flux_skin_area(dword parent, int x, int y, int w, int h, int tx, int ty, int tw, int th, t_texture *texture, int align= 0)
	    sas[3]= new flux_skin_area(id, 0,corner_size, corner_size,corner_size, tx+0,ty+corner_size, 
				       corner_size,th-corner_size*2, tex, ALIGN_TOP|ALIGN_BOTTOM);
	    sas[4]= new flux_skin_area(id, corner_size,corner_size, corner_size,corner_size, tx+corner_size,ty+corner_size, 
				       tw-(corner_size*2),th-(corner_size*2), tex, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);
	    sas[5]= new flux_skin_area(id, 0,corner_size, corner_size,corner_size, tx+tw-corner_size,ty+corner_size, 
				       corner_size,th-(corner_size*2), tex, ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);

	    sas[6]= new flux_skin_area(id, 0,0, corner_size,corner_size, tx+0,ty+th-corner_size, 
				       corner_size,corner_size, tex, ALIGN_BOTTOM);
	    sas[7]= new flux_skin_area(id, corner_size,0, corner_size,corner_size, tx+corner_size,ty+th-corner_size, 
				       tw-corner_size*2,corner_size, tex, ALIGN_BOTTOM|ALIGN_LEFT|ALIGN_RIGHT);
	    sas[8]= new flux_skin_area(id, 0,0, corner_size,corner_size, tx+tw-corner_size,ty+th-corner_size,
				       corner_size,corner_size, tex, ALIGN_BOTTOM|ALIGN_RIGHT);
	}
	
	~flux_skin_frame()
    	{
	    for(int i= 0; i<9; i++)
		delete sas[i];
	    
	    wnd_destroy(id);
	}
	
	void set_color(flux_rgba col)
	{
	    for(int i= 0; i<9; i++)
		sas[i]->set_color(col);
	}
	
	void set_color(unsigned col)
	{
	    set_color(*(flux_rgba*)&col);
	}

};


class flux_skin_button: public flux_prim
{
    protected:
	flux_skin_area *icon;
    	flux_skin_frame *frames[3];	// frames für default, hilight, pressed
    	bool mouse_down;
    	bool pressed;
    	
    	void show_frame(int i)
    	{
	    frames[i]->show(true);
	    frames[++i%3]->show(false);
	    frames[++i%3]->show(false);
	}
    	
    public:
	flux_skin_button() { }
	flux_skin_button(dword parent, int x,int y, int width,int height, int tw,int th, 
			 int corner_size,
    			 int icon_x,int icon_y,
    			 int default_x,int default_y, int hilight_x,int hilight_y, int pressed_x,int pressed_y, 
			 t_texture *texture, 
    			 int align= 0)
	{
	    create(parent, x,y, width,height, tw,th, corner_size, icon_x,icon_y,
		   default_x,default_y, hilight_x,hilight_y, pressed_x,pressed_y, 
		   texture, align);
	}
	
	void create(dword parent, int x,int y, int width,int height, int tw,int th, 
		     int corner_size,
		     int icon_x,int icon_y,
		     int default_x,int default_y, int hilight_x,int hilight_y, int pressed_x,int pressed_y, 
		     t_texture *texture, 
		     int align= 0)
	{
	    id= create_rect(parent, x,y, width,height, INVISIBLE, align);
	    install_callbacks();
	    frames[0]= new flux_skin_frame(id, 0,0, 0,0, default_x,default_y, tw,th, texture, corner_size, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);
	    frames[1]= new flux_skin_frame(id, 0,0, 0,0, hilight_x,hilight_y, tw,th, texture, corner_size, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);
	    frames[2]= new flux_skin_frame(id, 0,0, 0,0, pressed_x,pressed_y, tw,th, texture, corner_size, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);
	    icon= new flux_skin_area(id, 0,0, 0,0, icon_x,icon_y, tw,th, texture, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);
	    icon->set_color((flux_rgba){0xC0, 0xC0, 0xC0, 0xFF});
	    
	    frames[0]->show(false);
	    frames[1]->show(false);
	    frames[2]->show(false);
	    
	    mouse_down= pressed= false;
	}
	
	~flux_skin_button()
	{
	    delete icon;
	    for(int i= 0; i<3; i++) delete frames[i];
	}
	
	int mouse_event(primitive *prim, int type, int x, int y, int btn)
	{
	    switch(type)
	    {
		case MOUSE_IN:
		    show_frame(1);
		    break;
		case MOUSE_OUT:
		    if(pressed) show_frame(2);
		    else show_frame(0);
		    break;
		case MOUSE_DOWN:
		    mouse_down= true;
		    show_frame(2);
		    break;
		case MOUSE_UP:
		    if(mouse_down) press(!pressed);
		    mouse_down= false;
		    break;
	    }
	}
	
	bool is_pressed() { return pressed; }
	
	void press(bool down, bool callback= true)
	{
	    if(down==pressed) return;
	    
	    if(down)
	    {
		show_frame(2), icon->set_color((flux_rgba){0xFF, 0xFF, 0xFF, 0xFF});
		pressed= true;
		if(callback) on_press(true);
	    }
	    else
	    {
		show_frame(0), icon->set_color((flux_rgba){0xC0, 0xC0, 0xC0, 0xFF});
		pressed= false;
		if(callback) on_press(false);
	    }
	}
	
	virtual void on_press(bool enabled) { }
};


class flux_toolbar: public flux_skin_frame
{
    protected:
	std::vector<flux_skin_button*> buttons;
    
    public:
	flux_toolbar(t_texture *tex);
    	~flux_toolbar()
	{
	    for(int i= buttons.size()-1; i>=0; i--) delete(buttons[i]);
	}
	
	t_texture *get_texture() { return texture; }
	
	void select_button(int btn)
	{
	    select_button(buttons[btn]);
	}
	
	void select_button(flux_skin_button *btn)
	{
	    for(int i= buttons.size()-1; i>=0; i--)
	    {
		if(buttons[i]==btn) btn->press(true);
		else buttons[i]->press(false);
	    }
	}
	
	virtual int mouse_event(primitive *prim, int type, int x, int y, int btn);
};


class flux_tool_button: public flux_skin_button
{
    protected:
	int toolnr;
    	flux_toolbar *toolbar;
    
    public:
	flux_tool_button(flux_toolbar *toolbar, t_texture *texture, int x, int y, int icon_x, int icon_y, int toolnr, int align= 0)
    	{
	    flux_skin_button::create(toolbar->get_id(), x,y, 32,32, 48,48, 12, 
				     icon_x, icon_y,
				     208,208, 8,128, 8,72, 
				     texture, align);
	    this->toolnr= toolnr;
	    this->toolbar= toolbar;
	}
	
	flux_tool_button(flux_toolbar *toolbar, t_texture *texture, int x, int y, int width, int height, int icon_x, int icon_y, int toolnr, int align= 0)
    	{
	    flux_skin_button::create(toolbar->get_id(), x,y, width,height, 48,48, 12, 
				     icon_x, icon_y,
				     208,208, 8,128, 8,72, 
				     texture, align);
	    this->toolnr= toolnr;
	    this->toolbar= toolbar;
	}
	
	virtual void on_press(bool enabled)
	{
	    if(enabled)
	    {
		t_pgrid::getinstance()->editor->select_tool(toolnr);
		toolbar->select_button(this);
	    }
	}
};



class flux_stop_button: public flux_skin_button
{
    public:
	flux_stop_button(dword parent, int x, int y, t_texture *texture, int align);

	virtual void on_press(bool enabled)
	{
	    if(enabled)
	    {
		t_pgrid::getinstance()->current_workspace()->image->stopphysics();
		t_pgrid::getinstance()->pausephysics(false);
		press(false, false);
	    }
	}
};

class flux_pause_button: public flux_skin_button
{
    protected:
	flux_skin_area *icon2;
    	int timer_counter;
    	
    public:
	flux_pause_button(dword parent, int x, int y, t_texture *texture, int align);
	~flux_pause_button();
	virtual void on_press(bool enabled);
    	virtual void timer_event(int idtimer, dword time);
};

class flux_dragthing: public flux_prim
{
    protected:
    	bool mouse_down;
    	struct pos drag_start;
    	struct pos movement;
	int mousewheel_step;
    
    public:
	flux_dragthing(dword parent, int x, int y, int w, int h, int align= 0)
    	{
	    id= create_rect(parent, x,y, w,h, INVISIBLE/*0x404040|TRANSL_2*/, align);
	    install_callbacks();
	    mouse_down= false;
	    movement.x= movement.y= 0;
	    mousewheel_step= 100;
	}

	int mouse_event(primitive *prim, int type, int x, int y, int btn)
	{
	    switch(type)
	    {
		case MOUSE_DOWN: 
		    switch(btn)
		    {
			case 1: 
			    if(!mouse_down)
			    {
				mouse_down= true;
				drag_start.x= x; drag_start.y= y;
				wnd_set_mouse_capture(id);
				on_drag_start();
			    }
			    break;
			case 2:
			    movement.x= movement.y= 0;
			    mouse_down= false;
			    on_drag(movement);
			    break;
			case 1<<3:
			    if(mousewheel_step)
			    {
			    	movement.x= movement.x/mousewheel_step*mousewheel_step+mousewheel_step;
			    	on_drag(movement);
			    }
			    break;
			case 1<<4:
			    if(mousewheel_step)
			    {
				movement.x= (movement.x-mousewheel_step)/mousewheel_step*mousewheel_step;
				on_drag(movement);
			    }
			    break;
		    }
		    break;
		    
		case MOUSE_UP:
		    if(mouse_down)
		    {
			on_drag_end(movement);
			wnd_set_mouse_capture(0);
			mouse_down= false;
		    }
		    break;

		case MOUSE_OVER:
		    if(btn==1 && mouse_down)
		    {
			rect p;
			prim_get_abspos(prim, &p, false);
			SDL_WarpMouse(drag_start.x+p.x, drag_start.y+p.y);
			movement.x+= x-drag_start.x;
			movement.y+= y-drag_start.y;
			on_drag(movement);
		    }
		    break;
	    }
	    
	    return 0;
    	}
	
	virtual void on_drag_start() { }
	virtual void on_drag(struct pos &movement) { }
	virtual void on_drag_end(struct pos &movement) { }
};

class flux_draglabel: public flux_dragthing
{
    protected:
    	dword value_display;
    	dword idtext, idhilight;
    
    public:
	flux_draglabel(dword parent, int x, int y, int w, int h, char *text, int align= 0)
    	: flux_dragthing(parent, x,y, w,h, align)
    	{
	    idtext= create_text(id, 48,0, 0,0, text, COL_ITEMTEXT, FONT_DEFAULT, ALIGN_RIGHT|ALIGN_VCENTER);
	    idhilight= create_rect(id, 0,5, 1,1, COL_ITEMTEXT|TRANSL_2, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_VCENTER);
	    value_display= create_text(id, 0,0, 52,13, "", COL_ITEMTEXT, FONT_DEFAULT, ALIGN_RIGHT|ALIGN_VCENTER);
	    wnd_show(idhilight, false);
	    settext(text);
	}

	void settext(char *text)
	{
	    text_settext(idtext, text);
	    int w= font_gettextwidth(FONT_DEFAULT, text),
	    	h= font_gettextheight(FONT_DEFAULT, text);
	    wnd_setsize(idtext, w, h);
	    
	    rect pos;
	    wnd_get_abspos(id, &pos);
	    wnd_setx(idhilight, pos.rgt-pos.x - 48-w-1);
	}
	
	
	int mouse_event(primitive *prim, int type, int x, int y, int btn)
	{
	    switch(type)
	    {
		case MOUSE_IN:
		    wnd_show(idhilight, true);
		    break;
		
		case MOUSE_OUT:
		    wnd_show(idhilight, false);
		    break;
	    }
	    return flux_dragthing::mouse_event(prim, type, x, y, btn);
	}
	
	
	virtual void on_drag_start() { }
	virtual void on_drag(struct pos &movement) { }
	virtual void on_drag_end(struct pos &movement) { }
};


class flux_speed_draglabel: public flux_draglabel
{
    protected:
    
    public:
	flux_speed_draglabel(dword parent, int x, int y, int w, int h, char *text, int align= 0):
    		flux_draglabel(parent, x, y, w, h, text, align)
    	{
	    on_drag(movement);
	}
	
	void on_drag(pos &movement)
	{
	    float spd= 1.0f + (movement.x*0.001);
	    
	    t_pgrid::getinstance()->set_physics_speed(spd);
	    
	    char text[128];
	    sprintf(text, "%3.1f%%", spd*100);
	    text_settext(value_display, text);
	    wnd_setwidth(value_display, font_gettextwidth(FONT_DEFAULT, text));
	}
};


class flux_gradient: public flux_rect
{
    private:
	bool vertical;
    	flux_rgba color1, color2;
    
    public:
	flux_gradient(dword parent, int x, int y, int w, int h, dword align,
		      float r1, float g1, float b1, float r2, float g2, float b2, bool vertical= false)
    		: flux_rect(parent, x,y, w,h, 0, align)
    	{
	    primitive *p= findprim(id);
	    if(!p) { printf("ID %d not found...\n", id); abort(); }
	    
	    p->callbacks.paint= (cb_paint)cb_paint_base;
	    p->cb_array[primitive::CB_PAINT].arg= (prop_t)this;
	    
	    color1.r= byte(r1*255);
	    color1.g= byte(g1*255);
	    color1.b= byte(b1*255);
	    color1.a= 255;
	    color2.r= byte(r2*255);
	    color2.g= byte(g2*255);
	    color2.b= byte(b2*255);
	    color2.a= 255;
	    
	    this->vertical= vertical;
	}
	
	void paint_event(primitive *self, rect *abspos, rect *upd)
	{
	    glScissor(upd->x, viewport.btm-upd->btm, upd->rgt-upd->x, upd->btm-upd->y);
	    glEnable(GL_SCISSOR_TEST);
	    
	    glBegin(GL_QUADS);
	    if(vertical)
	    {
		glColor3ub(color1.r, color1.g, color1.b);
		glVertex2i(upd->x, upd->y);
		glVertex2i(upd->rgt, upd->y);
		glColor3ub(color2.r, color2.g, color2.b);
		glVertex2i(upd->rgt, upd->btm);
		glVertex2i(upd->x, upd->btm);
	    }
	    else
	    {
		glColor3ub(color1.r, color1.g, color1.b);
		glVertex2i(upd->x, upd->y);
		glVertex2i(upd->x, upd->btm);
		glColor3ub(color2.r, color2.g, color2.b);
		glVertex2i(upd->rgt, upd->btm);
		glVertex2i(upd->rgt, upd->y);
	    }
	    glEnd();
	    
	    glDisable(GL_SCISSOR_TEST);
	}
};



class flux_slider: public flux_rect
{
    protected:
	flux_skin_area *marker;
    	bool mouse_down;
    	double position;
    
	int mouse_event(primitive *prim, int type, int x, int y, int btn)
	{
	    switch(type)
	    {
		case MOUSE_DOWN:
		    wnd_set_mouse_capture(id);
		    mouse_down= true;
		    // fall through
		
		case MOUSE_OVER:
		    if(mouse_down)
		    {
		    	int p= x-5;
			rect pos;
			prim_get_abspos(prim, &pos, false);
			int max= pos.rgt-pos.x-10;
			if(p<0) p= 0;
			if(p>max) p= max;
			position= double(p)/max;
			position_changing();
			wnd_setx(marker->get_id(), int(round(position*max)));
		    }
		    break;
		
		case MOUSE_UP:
		    wnd_set_mouse_capture(NOWND);
		    if(mouse_down) position_changed();
		    mouse_down= false;
		    break;
	    }
	    return 0;
	}
	
    public:
    	flux_slider(dword parent, int x,int y, int w,int h, int align, t_texture *tex)
    	: flux_rect(parent, x,y, w,h, INVISIBLE, align), mouse_down(false), position(0)
    	{
	    install_callbacks();
	    marker= new flux_skin_area(id, 0,0, 11,6, 0,0, 11,6, tex);
	}
	
	float get_position() 
	{
	    return position;
	}
	
	void set_position(float p)
	{
	    if(p<0) p= 0; else if(p>1) p= 1;
	    rect pos;
	    prim_get_abspos(findprim(id), &pos, false);
	    int max= pos.rgt-pos.x-10;
	    wnd_setx(marker->get_id(), int(p*max));
	    position= p;
	    position_changed();
	}
	
	virtual void position_changing() { }
	virtual void position_changed() { }
};

class flux_gradient_slider: public flux_slider
{
    public:
	flux_gradient_slider(dword parent, int x,int y, int w,int h, int align, t_texture *tex, 
			     float r1, float g1, float b1, float r2, float g2, float b2)
    	: flux_slider(parent, x,y, w,h, align, tex)
    	{
	    flux_gradient *gradient= new flux_gradient(id, 5,0, 5,8, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_BOTTOM, r1,g1,b1, r2,g2,b2, false);
	    flux_frame *frame= new flux_frame(gradient->get_id(), 0,0, 0,0, 1, 0xFFFFFF|TRANSL_1, 0xFFFFFF|TRANSL_1, 0xFFFFFF|TRANSL_1, 0xFFFFFF|TRANSL_1, ALIGN_LEFT|ALIGN_RIGHT|ALIGN_TOP|ALIGN_BOTTOM);
	    wnd_totop(marker->get_id());
	}
};






class flux_gui
{
    private:
    public:
	flux_toolbar *toolbar;
    	flux_pause_button *pause_button;
	flux_stop_button *stop_button;
    	flux_draglabel *testdraglabel;
    	
    	t_texture *misc_tex;
    	t_texture *toolbar_tex;
    	
	flux_gui();
    	~flux_gui();
    	
    	void tick(float time);
};






#endif //GUI_H

