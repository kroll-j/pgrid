solution "critters"
	configurations { "Debug", "Release", "Debug-i386-mingw32", "Release-i386-mingw32" }
	objdir "obj"

	includedirs {
		"src",
		"libcig-codeblocks/libcig-a/include",
		"udt4/src"
	}

	libdirs {
		"libcig-codeblocks/bin",
		"udt4/lib"
	}

configuration "Debug"
	defines { }
	flags { "Symbols" }
	buildoptions { "-ggdb" }
	targetdir "bin/Debug"

configuration "Release"
	defines { "NDEBUG=1" }
	flags { "Optimize" }
	buildoptions { "-O2" }
	targetdir "bin/Release"

configuration "Debug-i386-mingw32"
	flags { "Symbols" }
	links { "opengl32", "glu32", "ws2_32", "winmm" }
	linkoptions { "-lmingw32", "-lSDLmain", "-mwindows",
				  "-Wl,-Bstatic", "-ludt -lcig",
								  "-lSDL_image", "-lSDL -lSDL_ttf", "-lfreetype", "-lz", "-lpng",
				  "-Wl,-Bdynamic", "-fno-rtti" }

configuration "Release-i386-mingw32"


project "critters"
	kind "WindowedApp"
	language "C++"
	targetname "critters"

	files { "src/**.cpp", "src/**.h" }
	excludes { "src/dedsrv.cpp" }

	linkoptions { "-fno-exceptions", "-fno-rtti" }

	links { "GL", "GLU", "SDL", "SDL_ttf", "SDL_image",
			"libcig", "udt" }

project "dedsrv"
	kind "ConsoleApp"
	language "C++"
	targetname "critters_dedsrv"
	configurations { "Debug", "Release", "Debug-i386-mingw32", "Release-i386-mingw32" }

	defines { "DEDICATED" }

	files { "src/**.cpp", "src/**.h" }
	excludes { "src/main.cpp", "src/client.cpp", "src/cgame.cpp" }

	links { "pthread", "libcig", "udt" }

	linkoptions { "-fno-exceptions", "-fno-rtti" }

project "libcig"
	kind "StaticLib"
	language "C++"
	configurations { "Debug", "Release", "Debug-i386-mingw32", "Release-i386-mingw32" }
	targetname "cig"

	files { "libcig-codeblocks/libcig-a/src/**.cc", "libcig-codeblocks/libcig-a/include/**.h" }
	excludes { "libcig-codeblocks/libcig-a/src/asparagus.cc" }

project "udt"
	kind "StaticLib"
	language "C++"
	configurations { "Debug", "Release", "Debug-i386-mingw32", "Release-i386-mingw32" }

	files { "udt4/src/**.cpp", "udt4/src/**.h" }

