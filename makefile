all:	pgrid

CPPFLAGS+= -O2 -ffast-math -Iflux/src

SRC= main.cpp pgrid.cpp screen.cpp layer.cpp editor.cpp workspace.cpp image.cpp \
     grid.cpp editortools.cpp texture.cpp particles.cpp offscreen_renderer.cpp gui.cpp

OBJS= $(addprefix obj/,$(SRC:.cpp=.o)) obj/x86.o
DEPS= $(addprefix obj/.,$(SRC:.cpp=.d))

obj/.%.d: src/%.cpp
	@set -e; rm -f $@; \
		$(CC) -M $(CPPFLAGS) $< > $@.$$$$; \
		sed 's,\($*\)\.o[:]*,obj/\1.o $@ : ,g' < $@.$$$$ > $@; \
		rm -f $@.$$$$

include $(DEPS)

obj/%.o: src/%.cpp src/%.h
	@echo " * $<"
	@g++ -c $(CPPFLAGS) -ggdb $< -o $@

obj/%.o: src/%.asm
	@echo " + $<"
	@nasm -O9 -f elf $< -o $@
	
flux/lib/libflux.a: flux/src/*
	@make -C flux -f Makefile.gl-sdl

pgrid:	$(OBJS) flux/lib/libflux.a
	g++ -Lflux/lib -lGL -lGLU -lSDL $(OBJS) -lflux-gl_sdl -lfreeimage -o pgrid

run:	all
	@xfce4-terminal --hide-toolbars --hide-menubar --geometry=90x14-0-0 --title="output" -x ./gdb-exp.sh


