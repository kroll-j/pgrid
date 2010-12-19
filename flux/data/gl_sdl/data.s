.section .rodata
.balign 4
.global default_cursor_png
default_cursor_png:
.incbin "default_cursor.png"
default_cursor_png_end:

.global default_cursor_png_size
default_cursor_png_size: .long 1000
; .int 592

.balign 4
.global default_font_png
default_font_png:
.incbin "default_font.png"

.text
.globl default_font_png_size
        .data
        .align 4
        .type   default_font_png_size, @object
        .size   default_font_png_size, 4
default_font_png_size:
	.long 1000


; .int 4469
