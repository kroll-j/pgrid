bits 32

%include "src/x86.inc"

section .bss
    old_sp	resd 1

section .text

%define USE_SSE

; void x86_fade_height(asm_gridpt *points, float mult, int size);
global x86_fade_height
x86_fade_height:
%define points 	ebp+8+0
%define mult 	ebp+8+4
%define size 	ebp+8+8
    push ebp
    mov ebp, esp
    pusha
    
    mov ecx, [size]
    dec ecx
    imul ecx, asm_gridpt_size
    mov esi, [points]
    fld dword [mult]
    mov [old_sp], esp
    sub esp, 64
    mov eax, esp
    add eax, 32
    and eax, 31
    add esp, eax
    fst dword [esp+0]
    fst dword [esp+4]
    fst dword [esp+8]
    fst dword [esp+12]
    .loop:

%ifdef USE_SSE
	prefetchnta [esi+ecx-asm_gridpt_size*8]
	
	movaps xmm0, [esi+ecx+asm_gridpt_size*0+asm_gridpt.height]
	movaps xmm1, [esi+ecx+asm_gridpt_size*1+asm_gridpt.height]
	movaps xmm2, [esi+ecx+asm_gridpt_size*2+asm_gridpt.height]
	movaps xmm3, [esi+ecx+asm_gridpt_size*3+asm_gridpt.height]
	movaps xmm4, [esi+ecx+asm_gridpt_size*4+asm_gridpt.height]
	movaps xmm5, [esi+ecx+asm_gridpt_size*5+asm_gridpt.height]
	movaps xmm6, [esi+ecx+asm_gridpt_size*6+asm_gridpt.height]
	movaps xmm7, [esi+ecx+asm_gridpt_size*7+asm_gridpt.height]
	mulps xmm0, [esp]
	mulps xmm1, [esp]
	mulps xmm2, [esp]
	mulps xmm3, [esp]
	mulps xmm4, [esp]
	mulps xmm5, [esp]
	mulps xmm6, [esp]
	mulps xmm7, [esp]
	movntps [esi+ecx+asm_gridpt_size*0+asm_gridpt.height], xmm0
	movntps [esi+ecx+asm_gridpt_size*1+asm_gridpt.height], xmm1
	movntps [esi+ecx+asm_gridpt_size*2+asm_gridpt.height], xmm2
	movntps [esi+ecx+asm_gridpt_size*3+asm_gridpt.height], xmm3
	movntps [esi+ecx+asm_gridpt_size*4+asm_gridpt.height], xmm4
	movntps [esi+ecx+asm_gridpt_size*5+asm_gridpt.height], xmm5
	movntps [esi+ecx+asm_gridpt_size*6+asm_gridpt.height], xmm6
	movntps [esi+ecx+asm_gridpt_size*7+asm_gridpt.height], xmm7
	sub ecx, asm_gridpt_size*8

%else

	fld dword [esi+ecx+asm_gridpt.height]
	fmul st1
	fstp dword [esi+ecx+asm_gridpt.height]
	
	fld dword [esi+ecx+asm_gridpt.speedmod_x]
	fmul st1
	fstp dword [esi+ecx+asm_gridpt.speedmod_x]

	fld dword [esi+ecx+asm_gridpt.speedmod_y]
	fmul st1
	fstp dword [esi+ecx+asm_gridpt.speedmod_y]
	
	sub ecx, asm_gridpt_size

%endif

	jns .loop
    
    fstp st0
    mov esp, [old_sp]
    
    popa
    pop ebp
    ret




section .bss
    start_tsc	resd 2

section .text

global tsc_start
tsc_start:
    pusha
    xor eax, eax
    cpuid
    popa
    rdtsc
    mov [start_tsc], edx
    mov [start_tsc+4], eax
    ret

global tsc_stop
tsc_stop:
    pusha
    xor eax, eax
    cpuid
    popa
    rdtsc
    sub eax, [start_tsc+4]
    sbb edx, [start_tsc]
    ret



