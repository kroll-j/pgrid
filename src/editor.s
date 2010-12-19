	.file	"editor.cpp"
	.section	.text._ZnwjPv,"axG",@progbits,_ZnwjPv,comdat
	.align 2
	.weak	_ZnwjPv
	.type	_ZnwjPv, @function
_ZnwjPv:
.LFB246:
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	movl	12(%ebp), %eax
	popl	%ebp
	ret
.LFE246:
	.size	_ZnwjPv, .-_ZnwjPv
.globl __gxx_personality_v0
	.section	.text._ZN3vecC2Ev,"axG",@progbits,_ZN3vecC2Ev,comdat
	.align 2
	.weak	_ZN3vecC2Ev
	.type	_ZN3vecC2Ev, @function
_ZN3vecC2Ev:
.LFB876:
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	popl	%ebp
	ret
.LFE876:
	.size	_ZN3vecC2Ev, .-_ZN3vecC2Ev
	.section	.text._ZN3vecC1Ev,"axG",@progbits,_ZN3vecC1Ev,comdat
	.align 2
	.weak	_ZN3vecC1Ev
	.type	_ZN3vecC1Ev, @function
_ZN3vecC1Ev:
.LFB877:
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	popl	%ebp
	ret
.LFE877:
	.size	_ZN3vecC1Ev, .-_ZN3vecC1Ev
	.section	.text._ZN3vecC1Eff,"axG",@progbits,_ZN3vecC1Eff,comdat
	.align 2
	.weak	_ZN3vecC1Eff
	.type	_ZN3vecC1Eff, @function
_ZN3vecC1Eff:
.LFB880:
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	popl	%ebp
	ret
.LFE880:
	.size	_ZN3vecC1Eff, .-_ZN3vecC1Eff
	.section	.text._ZN3vec3mulEf,"axG",@progbits,_ZN3vec3mulEf,comdat
	.align 2
	.weak	_ZN3vec3mulEf
	.type	_ZN3vec3mulEf, @function
_ZN3vec3mulEf:
.LFB882:
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	movl	8(%ebp), %eax
	flds	(%eax)
	fmuls	12(%ebp)
	movl	8(%ebp), %eax
	fstps	(%eax)
	movl	8(%ebp), %eax
	flds	4(%eax)
	fmuls	12(%ebp)
	movl	8(%ebp), %eax
	fstps	4(%eax)
	movl	8(%ebp), %eax
	popl	%ebp
	ret
.LFE882:
	.size	_ZN3vec3mulEf, .-_ZN3vec3mulEf
	.section	.text._ZN3vec3addERKS_,"axG",@progbits,_ZN3vec3addERKS_,comdat
	.align 2
	.weak	_ZN3vec3addERKS_
	.type	_ZN3vec3addERKS_, @function
_ZN3vec3addERKS_:
.LFB884:
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	movl	8(%ebp), %eax
	flds	(%eax)
	movl	12(%ebp), %eax
	flds	(%eax)
	faddp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	(%eax)
	movl	8(%ebp), %eax
	flds	4(%eax)
	movl	12(%ebp), %eax
	flds	4(%eax)
	faddp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	4(%eax)
	movl	8(%ebp), %eax
	popl	%ebp
	ret
.LFE884:
	.size	_ZN3vec3addERKS_, .-_ZN3vec3addERKS_
	.section	.text._ZN7img_vecC1Ev,"axG",@progbits,_ZN7img_vecC1Ev,comdat
	.align 2
	.weak	_ZN7img_vecC1Ev
	.type	_ZN7img_vecC1Ev, @function
_ZN7img_vecC1Ev:
.LFB894:
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	subl	$8, %esp
.LCFI14:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3vecC2Ev
	leave
	ret
.LFE894:
	.size	_ZN7img_vecC1Ev, .-_ZN7img_vecC1Ev
	.section	.text._ZN8polarvecC1Eff,"axG",@progbits,_ZN8polarvecC1Eff,comdat
	.align 2
	.weak	_ZN8polarvecC1Eff
	.type	_ZN8polarvecC1Eff, @function
_ZN8polarvecC1Eff:
.LFB916:
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	popl	%ebp
	ret
.LFE916:
	.size	_ZN8polarvecC1Eff, .-_ZN8polarvecC1Eff
	.section	.text._ZN13input_handlerC2Ev,"axG",@progbits,_ZN13input_handlerC2Ev,comdat
	.align 2
	.weak	_ZN13input_handlerC2Ev
	.type	_ZN13input_handlerC2Ev, @function
_ZN13input_handlerC2Ev:
.LFB1361:
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	movl	$_ZTV13input_handler+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
.LFE1361:
	.size	_ZN13input_handlerC2Ev, .-_ZN13input_handlerC2Ev
	.section	.text._ZN12t_editortoolC2EP8t_editor,"axG",@progbits,_ZN12t_editortoolC2EP8t_editor,comdat
	.align 2
	.weak	_ZN12t_editortoolC2EP8t_editor
	.type	_ZN12t_editortoolC2EP8t_editor, @function
_ZN12t_editortoolC2EP8t_editor:
.LFB1363:
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	subl	$8, %esp
.LCFI21:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN13input_handlerC2Ev
	movl	$_ZTV12t_editortool+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	_ZN7img_vecC1Ev
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	%eax, (%esp)
	call	_ZN3vecC1Ev
	movl	8(%ebp), %eax
	addl	$28, %eax
	movl	%eax, (%esp)
	call	_ZN7img_vecC1Ev
	movl	8(%ebp), %edx
	movl	$0x00000000, %eax
	movl	%eax, 16(%edx)
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	leave
	ret
.LFE1363:
	.size	_ZN12t_editortoolC2EP8t_editor, .-_ZN12t_editortoolC2EP8t_editor
	.section	.text._ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent,"axG",@progbits,_ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent,comdat
	.align 2
	.weak	_ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent
	.type	_ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent, @function
_ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent:
.LFB1369:
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	popl	%ebp
	ret
.LFE1369:
	.size	_ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent, .-_ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent
	.section	.text._ZN7t_brushC2Ev,"axG",@progbits,_ZN7t_brushC2Ev,comdat
	.align 2
	.weak	_ZN7t_brushC2Ev
	.type	_ZN7t_brushC2Ev, @function
_ZN7t_brushC2Ev:
.LFB1374:
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	movl	$_ZTV7t_brush+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	popl	%ebp
	ret
.LFE1374:
	.size	_ZN7t_brushC2Ev, .-_ZN7t_brushC2Ev
	.section	.text._ZN7t_brush9getpixelsEv,"axG",@progbits,_ZN7t_brush9getpixelsEv,comdat
	.align 2
	.weak	_ZN7t_brush9getpixelsEv
	.type	_ZN7t_brush9getpixelsEv, @function
_ZN7t_brush9getpixelsEv:
.LFB1380:
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	popl	%ebp
	ret
.LFE1380:
	.size	_ZN7t_brush9getpixelsEv, .-_ZN7t_brush9getpixelsEv
	.section	.text._ZN7t_brush8getwidthEv,"axG",@progbits,_ZN7t_brush8getwidthEv,comdat
	.align 2
	.weak	_ZN7t_brush8getwidthEv
	.type	_ZN7t_brush8getwidthEv, @function
_ZN7t_brush8getwidthEv:
.LFB1381:
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	popl	%ebp
	ret
.LFE1381:
	.size	_ZN7t_brush8getwidthEv, .-_ZN7t_brush8getwidthEv
	.section	.text._ZN7t_brush9getheightEv,"axG",@progbits,_ZN7t_brush9getheightEv,comdat
	.align 2
	.weak	_ZN7t_brush9getheightEv
	.type	_ZN7t_brush9getheightEv, @function
_ZN7t_brush9getheightEv:
.LFB1382:
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	popl	%ebp
	ret
.LFE1382:
	.size	_ZN7t_brush9getheightEv, .-_ZN7t_brush9getheightEv
	.section	.text._ZN8t_editor6dowrapEv,"axG",@progbits,_ZN8t_editor6dowrapEv,comdat
	.align 2
	.weak	_ZN8t_editor6dowrapEv
	.type	_ZN8t_editor6dowrapEv, @function
_ZN8t_editor6dowrapEv:
.LFB1390:
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	movzbl	%al, %eax
	popl	%ebp
	ret
.LFE1390:
	.size	_ZN8t_editor6dowrapEv, .-_ZN8t_editor6dowrapEv
	.section	.text._ZN6t_grid4wrapEii,"axG",@progbits,_ZN6t_grid4wrapEii,comdat
	.align 2
	.weak	_ZN6t_grid4wrapEii
	.type	_ZN6t_grid4wrapEii, @function
_ZN6t_grid4wrapEii:
.LFB1417:
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	subl	$8, %esp
.LCFI36:
	cmpl	$0, 12(%ebp)
	jns	.L34
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	16(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -8(%ebp)
	jmp	.L36
.L34:
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L37
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	16(%ebp)
	movl	%edx, -4(%ebp)
	jmp	.L39
.L37:
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
.L39:
	movl	-4(%ebp), %edx
	movl	%edx, -8(%ebp)
.L36:
	movl	-8(%ebp), %eax
	leave
	ret
.LFE1417:
	.size	_ZN6t_grid4wrapEii, .-_ZN6t_grid4wrapEii
	.section	.text._ZN6t_grid16getpoint_editingEii,"axG",@progbits,_ZN6t_grid16getpoint_editingEii,comdat
	.align 2
	.weak	_ZN6t_grid16getpoint_editingEii
	.type	_ZN6t_grid16getpoint_editingEii, @function
_ZN6t_grid16getpoint_editingEii:
.LFB1420:
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$32, %esp
.LCFI41:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN8t_editor6dowrapEv
	testb	%al, %al
	je	.L42
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid4wrapEii
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movl	%edx, %ebx
	imull	%eax, %ebx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid4wrapEii
	leal	(%ebx,%eax), %eax
	sall	$5, %eax
	addl	%eax, %esi
	movl	%esi, -16(%ebp)
	jmp	.L44
.L42:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	jl	.L45
	cmpl	$0, 16(%ebp)
	js	.L45
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	jl	.L45
	cmpl	$0, 12(%ebp)
	js	.L45
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	imull	16(%ebp), %eax
	addl	12(%ebp), %eax
	sall	$5, %eax
	addl	%eax, %edx
	movl	%edx, -12(%ebp)
	jmp	.L50
.L45:
	movl	$_ZZN6t_grid16getpoint_editingEiiE5dummy, -12(%ebp)
.L50:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L44:
	movl	-16(%ebp), %eax
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE1420:
	.size	_ZN6t_grid16getpoint_editingEii, .-_ZN6t_grid16getpoint_editingEii
	.section	.text._ZN6t_grid21paint_pixels_additiveEiiPfiifi,"axG",@progbits,_ZN6t_grid21paint_pixels_additiveEiiPfiifi,comdat
	.align 2
	.weak	_ZN6t_grid21paint_pixels_additiveEiiPfiifi
	.type	_ZN6t_grid21paint_pixels_additiveEiiPfiifi, @function
_ZN6t_grid21paint_pixels_additiveEiiPfiifi:
.LFB1424:
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	subl	$40, %esp
.LCFI44:
	cmpl	$0, 36(%ebp)
	jne	.L53
	movl	24(%ebp), %eax
	movl	%eax, 36(%ebp)
.L53:
	movl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L55
.L56:
	movl	24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L57
.L58:
	movl	16(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	%eax, %edx
	movl	12(%ebp), %eax
	addl	-8(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid16getpoint_editingEii
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	flds	16(%eax)
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	flds	(%eax)
	fmuls	32(%ebp)
	faddp	%st, %st(1)
	movl	-4(%ebp), %eax
	fstps	16(%eax)
	subl	$1, -8(%ebp)
.L57:
	cmpl	$0, -8(%ebp)
	jns	.L58
	movl	36(%ebp), %eax
	sall	$2, %eax
	addl	%eax, -16(%ebp)
	addl	$1, -12(%ebp)
.L55:
	movl	-12(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L56
	leave
	ret
.LFE1424:
	.size	_ZN6t_grid21paint_pixels_additiveEiiPfiifi, .-_ZN6t_grid21paint_pixels_additiveEiiPfiifi
	.section	.text._ZN6t_grid21paint_pixels_additiveE3vecPfiifi,"axG",@progbits,_ZN6t_grid21paint_pixels_additiveE3vecPfiifi,comdat
	.align 2
	.weak	_ZN6t_grid21paint_pixels_additiveE3vecPfiifi
	.type	_ZN6t_grid21paint_pixels_additiveE3vecPfiifi, @function
_ZN6t_grid21paint_pixels_additiveE3vecPfiifi:
.LFB1425:
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	subl	$72, %esp
.LCFI47:
	flds	12(%ebp)
	fnstcw	-38(%ebp)
	movzwl	-38(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -40(%ebp)
	fldcw	-40(%ebp)
	fistpl	-32(%ebp)
	fldcw	-38(%ebp)
	flds	16(%ebp)
	fldcw	-40(%ebp)
	fistpl	-28(%ebp)
	fldcw	-38(%ebp)
	flds	12(%ebp)
	fildl	-32(%ebp)
	fsubrp	%st, %st(1)
	fabs
	fstps	-24(%ebp)
	flds	16(%ebp)
	fildl	-28(%ebp)
	fsubrp	%st, %st(1)
	fabs
	fstps	-20(%ebp)
	flds	32(%ebp)
	flds	-24(%ebp)
	fld1
	fsubp	%st, %st(1)
	fmulp	%st, %st(1)
	flds	-20(%ebp)
	fld1
	fsubp	%st, %st(1)
	fmulp	%st, %st(1)
	fstps	-16(%ebp)
	flds	32(%ebp)
	fmuls	-24(%ebp)
	flds	-20(%ebp)
	fld1
	fsubp	%st, %st(1)
	fmulp	%st, %st(1)
	fstps	-12(%ebp)
	flds	32(%ebp)
	flds	-24(%ebp)
	fld1
	fsubp	%st, %st(1)
	fmulp	%st, %st(1)
	flds	-20(%ebp)
	fmulp	%st, %st(1)
	fstps	-8(%ebp)
	flds	32(%ebp)
	fmuls	-24(%ebp)
	fmuls	-20(%ebp)
	fstps	-4(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid21paint_pixels_additiveEiiPfiifi
	movl	-32(%ebp), %edx
	addl	$1, %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid21paint_pixels_additiveEiiPfiifi
	movl	-28(%ebp), %edx
	addl	$1, %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid21paint_pixels_additiveEiiPfiifi
	movl	-28(%ebp), %edx
	addl	$1, %edx
	movl	-32(%ebp), %ecx
	addl	$1, %ecx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid21paint_pixels_additiveEiiPfiifi
	leave
	ret
.LFE1425:
	.size	_ZN6t_grid21paint_pixels_additiveE3vecPfiifi, .-_ZN6t_grid21paint_pixels_additiveE3vecPfiifi
	.section	.text._ZN25t_tool_paintgrid_spraycanC1EP8t_editor,"axG",@progbits,_ZN25t_tool_paintgrid_spraycanC1EP8t_editor,comdat
	.align 2
	.weak	_ZN25t_tool_paintgrid_spraycanC1EP8t_editor
	.type	_ZN25t_tool_paintgrid_spraycanC1EP8t_editor, @function
_ZN25t_tool_paintgrid_spraycanC1EP8t_editor:
.LFB1461:
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	subl	$8, %esp
.LCFI50:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN12t_editortoolC2EP8t_editor
	movl	$_ZTV25t_tool_paintgrid_spraycan+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %edx
	movl	$0x3e800000, %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	$0x40400000, %eax
	movl	%eax, 40(%edx)
	movl	8(%ebp), %eax
	movl	$8, 44(%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	leave
	ret
.LFE1461:
	.size	_ZN25t_tool_paintgrid_spraycanC1EP8t_editor, .-_ZN25t_tool_paintgrid_spraycanC1EP8t_editor
	.section	.text._ZN19t_tool_addparticlesC1EP8t_editor,"axG",@progbits,_ZN19t_tool_addparticlesC1EP8t_editor,comdat
	.align 2
	.weak	_ZN19t_tool_addparticlesC1EP8t_editor
	.type	_ZN19t_tool_addparticlesC1EP8t_editor, @function
_ZN19t_tool_addparticlesC1EP8t_editor:
.LFB1473:
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	subl	$8, %esp
.LCFI53:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN12t_editortoolC2EP8t_editor
	movl	$_ZTV19t_tool_addparticles+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	addl	$36, %eax
	movl	%eax, (%esp)
	call	_ZN3vecC1Ev
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %edx
	movl	$0x420c0000, %eax
	movl	%eax, 44(%edx)
	movl	8(%ebp), %edx
	movl	$0x41200000, %eax
	movl	%eax, 48(%edx)
	movl	8(%ebp), %edx
	movl	$0x00000000, %eax
	movl	%eax, 52(%edx)
	leave
	ret
.LFE1473:
	.size	_ZN19t_tool_addparticlesC1EP8t_editor, .-_ZN19t_tool_addparticlesC1EP8t_editor
	.section	.text._ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv:
.LFB1595:
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	movl	8(%ebp), %eax
	popl	%ebp
	ret
.LFE1595:
	.size	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv:
.LFB1602:
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	ret
.LFE1602:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv:
.LFB1628:
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	ret
.LFE1628:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv:
.LFB1634:
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	ret
.LFE1634:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev:
.LFB1644:
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	popl	%ebp
	ret
.LFE1644:
	.size	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev
	.section	.text._ZNSaIP12t_editortoolEC1Ev,"axG",@progbits,_ZNSaIP12t_editortoolEC1Ev,comdat
	.align 2
	.weak	_ZNSaIP12t_editortoolEC1Ev
	.type	_ZNSaIP12t_editortoolEC1Ev, @function
_ZNSaIP12t_editortoolEC1Ev:
.LFB1544:
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	subl	$8, %esp
.LCFI66:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2Ev
	leave
	ret
.LFE1544:
	.size	_ZNSaIP12t_editortoolEC1Ev, .-_ZNSaIP12t_editortoolEC1Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev:
.LFB1647:
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	popl	%ebp
	ret
.LFE1647:
	.size	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev, .-_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev
	.section	.text._ZNSaIP12t_editortoolED1Ev,"axG",@progbits,_ZNSaIP12t_editortoolED1Ev,comdat
	.align 2
	.weak	_ZNSaIP12t_editortoolED1Ev
	.type	_ZNSaIP12t_editortoolED1Ev, @function
_ZNSaIP12t_editortoolED1Ev:
.LFB1547:
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	subl	$8, %esp
.LCFI71:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev
	leave
	ret
.LFE1547:
	.size	_ZNSaIP12t_editortoolED1Ev, .-_ZNSaIP12t_editortoolED1Ev
	.section	.text._ZNSaIP12t_editortoolED2Ev,"axG",@progbits,_ZNSaIP12t_editortoolED2Ev,comdat
	.align 2
	.weak	_ZNSaIP12t_editortoolED2Ev
	.type	_ZNSaIP12t_editortoolED2Ev, @function
_ZNSaIP12t_editortoolED2Ev:
.LFB1546:
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	subl	$8, %esp
.LCFI74:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolED2Ev
	leave
	ret
.LFE1546:
	.size	_ZNSaIP12t_editortoolED2Ev, .-_ZNSaIP12t_editortoolED2Ev
	.section	.text._ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev,"axG",@progbits,_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev
	.type	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev, @function
_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev:
.LFB1592:
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	subl	$8, %esp
.LCFI77:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolED2Ev
	leave
	ret
.LFE1592:
	.size	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev, .-_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_
	.type	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_, @function
_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_:
.LFB1650:
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	popl	%ebp
	ret
.LFE1650:
	.size	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_, .-_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_
	.section	.text._ZNSaIP12t_editortoolEC2ERKS1_,"axG",@progbits,_ZNSaIP12t_editortoolEC2ERKS1_,comdat
	.align 2
	.weak	_ZNSaIP12t_editortoolEC2ERKS1_
	.type	_ZNSaIP12t_editortoolEC2ERKS1_, @function
_ZNSaIP12t_editortoolEC2ERKS1_:
.LFB1549:
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	subl	$8, %esp
.LCFI82:
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_
	leave
	ret
.LFE1549:
	.size	_ZNSaIP12t_editortoolEC2ERKS1_, .-_ZNSaIP12t_editortoolEC2ERKS1_
	.section	.text._ZNSaIP12t_editortoolEC1ERKS1_,"axG",@progbits,_ZNSaIP12t_editortoolEC1ERKS1_,comdat
	.align 2
	.weak	_ZNSaIP12t_editortoolEC1ERKS1_
	.type	_ZNSaIP12t_editortoolEC1ERKS1_, @function
_ZNSaIP12t_editortoolEC1ERKS1_:
.LFB1550:
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	subl	$8, %esp
.LCFI85:
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolEC2ERKS3_
	leave
	ret
.LFE1550:
	.size	_ZNSaIP12t_editortoolEC1ERKS1_, .-_ZNSaIP12t_editortoolEC1ERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_
	.type	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_, @function
_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_:
.LFB1655:
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	subl	$24, %esp
.LCFI88:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	_ZnwjPv
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L102
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	-4(%ebp), %edx
	movl	%eax, (%edx)
.L102:
	leave
	ret
.LFE1655:
	.size	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_, .-_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_:
.LFB1668:
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
.LFE1668:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_
	.section	.text._ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv
	.type	_ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv, @function
_ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv:
.LFB1597:
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$36, %esp
.LCFI94:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1597:
	.size	_ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv, .-_ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv
	.section	.text._ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv,"axG",@progbits,_ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv
	.type	_ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv, @function
_ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv:
.LFB1598:
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$36, %esp
.LCFI98:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS4_
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1598:
	.size	_ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv, .-_ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv:
.LFB1669:
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	movl	8(%ebp), %eax
	popl	%ebp
	ret
.LFE1669:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	.section	.text._ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE,"axG",@progbits,_ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE,comdat
	.align 2
	.weak	_ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE
	.type	_ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE, @function
_ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE:
.LFB1599:
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$4, %esp
.LCFI104:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %eax
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1599:
	.size	_ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE, .-_ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE
	.section	.text._ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv, @function
_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv:
.LFB1518:
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	subl	$40, %esp
.LCFI107:
	leal	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE5beginEv
	subl	$4, %esp
	movl	-20(%ebp), %eax
	movl	%eax, -8(%ebp)
	leal	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE3endEv
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -4(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxxmiIPKP12t_editortoolS4_St6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T1_E15difference_typeERKSB_RKNS8_IT0_SA_EE
	leave
	ret
.LFE1518:
	.size	_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv, .-_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB1672:
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
.LFE1672:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	.section	.text._ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv
	.type	_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv, @function
_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv:
.LFB1600:
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$20, %esp
.LCFI113:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1600:
	.size	_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv, .-_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi, @function
_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi:
.LFB1601:
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$36, %esp
.LCFI117:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1601:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi, .-_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi
	.section	.text._ZNSt6vectorIP12t_editortoolSaIS1_EEixEj,"axG",@progbits,_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj,comdat
	.align 2
	.weak	_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj
	.type	_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj, @function
_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj:
.LFB1519:
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	subl	$40, %esp
.LCFI120:
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	leal	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv
	subl	$4, %esp
	movl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	leal	-24(%ebp), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEplERKi
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv
	leave
	ret
.LFE1519:
	.size	_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj, .-_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj
	.section	.text._ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent,"axG",@progbits,_ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent,comdat
	.align 2
	.weak	_ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent
	.type	_ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent, @function
_ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent:
.LFB1401:
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	subl	$8, %esp
.LCFI123:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%ebp), %edx
	addl	$8, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj
	movl	(%eax), %edx
	movl	(%edx), %eax
	addl	$16, %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	leave
	ret
.LFE1401:
	.size	_ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent, .-_ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent
	.section	.text._ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent,"axG",@progbits,_ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent,comdat
	.align 2
	.weak	_ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent
	.type	_ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent, @function
_ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent:
.LFB1402:
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	subl	$8, %esp
.LCFI126:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%ebp), %edx
	addl	$8, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj
	movl	(%eax), %edx
	movl	(%edx), %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	leave
	ret
.LFE1402:
	.size	_ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent, .-_ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent
	.section	.text._ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv
	.type	_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv, @function
_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv:
.LFB1657:
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$20, %esp
.LCFI130:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1657:
	.size	_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv, .-_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB1680:
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
.LFE1680:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_
	.section	.text._ZNSt6vectorIP7t_layerSaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIP7t_layerSaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIP7t_layerSaIS1_EE5beginEv
	.type	_ZNSt6vectorIP7t_layerSaIS1_EE5beginEv, @function
_ZNSt6vectorIP7t_layerSaIS1_EE5beginEv:
.LFB1626:
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$20, %esp
.LCFI136:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1626:
	.size	_ZNSt6vectorIP7t_layerSaIS1_EE5beginEv, .-_ZNSt6vectorIP7t_layerSaIS1_EE5beginEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi, @function
_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi:
.LFB1627:
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$36, %esp
.LCFI140:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1627:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi, .-_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi
	.section	.text._ZNSt6vectorIP7t_layerSaIS1_EEixEj,"axG",@progbits,_ZNSt6vectorIP7t_layerSaIS1_EEixEj,comdat
	.align 2
	.weak	_ZNSt6vectorIP7t_layerSaIS1_EEixEj
	.type	_ZNSt6vectorIP7t_layerSaIS1_EEixEj, @function
_ZNSt6vectorIP7t_layerSaIS1_EEixEj:
.LFB1536:
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	subl	$40, %esp
.LCFI143:
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	leal	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP7t_layerSaIS1_EE5beginEv
	subl	$4, %esp
	movl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	leal	-24(%ebp), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEplERKi
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP7t_layerSt6vectorIS2_SaIS2_EEEdeEv
	leave
	ret
.LFE1536:
	.size	_ZNSt6vectorIP7t_layerSaIS1_EEixEj, .-_ZNSt6vectorIP7t_layerSaIS1_EEixEj
	.section	.text._ZN7t_image13current_layerEv,"axG",@progbits,_ZN7t_image13current_layerEv,comdat
	.align 2
	.weak	_ZN7t_image13current_layerEv
	.type	_ZN7t_image13current_layerEv, @function
_ZN7t_image13current_layerEv:
.LFB1433:
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	subl	$8, %esp
.LCFI146:
	movl	8(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt6vectorIP7t_layerSaIS1_EEixEj
	movl	(%eax), %eax
	leave
	ret
.LFE1433:
	.size	_ZN7t_image13current_layerEv, .-_ZN7t_image13current_layerEv
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB1694:
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
.LFE1694:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_
	.section	.text._ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv
	.type	_ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv, @function
_ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv:
.LFB1632:
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$20, %esp
.LCFI152:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1632:
	.size	_ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv, .-_ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi, @function
_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi:
.LFB1633:
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$36, %esp
.LCFI156:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE1633:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi, .-_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi
	.section	.text._ZNSt6vectorIP11t_workspaceSaIS1_EEixEj,"axG",@progbits,_ZNSt6vectorIP11t_workspaceSaIS1_EEixEj,comdat
	.align 2
	.weak	_ZNSt6vectorIP11t_workspaceSaIS1_EEixEj
	.type	_ZNSt6vectorIP11t_workspaceSaIS1_EEixEj, @function
_ZNSt6vectorIP11t_workspaceSaIS1_EEixEj:
.LFB1538:
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	subl	$40, %esp
.LCFI159:
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	leal	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP11t_workspaceSaIS1_EE5beginEv
	subl	$4, %esp
	movl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	leal	-24(%ebp), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEplERKi
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP11t_workspaceSt6vectorIS2_SaIS2_EEEdeEv
	leave
	ret
.LFE1538:
	.size	_ZNSt6vectorIP11t_workspaceSaIS1_EEixEj, .-_ZNSt6vectorIP11t_workspaceSaIS1_EEixEj
	.section	.text._ZN7t_pgrid17current_workspaceEv,"axG",@progbits,_ZN7t_pgrid17current_workspaceEv,comdat
	.align 2
	.weak	_ZN7t_pgrid17current_workspaceEv
	.type	_ZN7t_pgrid17current_workspaceEv, @function
_ZN7t_pgrid17current_workspaceEv:
.LFB1438:
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	subl	$8, %esp
.LCFI162:
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt6vectorIP11t_workspaceSaIS1_EEixEj
	movl	(%eax), %eax
	leave
	ret
.LFE1438:
	.size	_ZN7t_pgrid17current_workspaceEv, .-_ZN7t_pgrid17current_workspaceEv
	.section	.text._ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_
	.type	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_, @function
_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_:
.LFB1718:
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	subl	$8, %esp
.LCFI165:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSaIP12t_editortoolEC2ERKS1_
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	leave
	ret
.LFE1718:
	.size	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_, .-_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_
	.section	.text._ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_
	.type	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_, @function
_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_:
.LFB1653:
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	subl	$8, %esp
.LCFI168:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implC1ERKS2_
	leave
	ret
.LFE1653:
	.size	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_, .-_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_
	.section	.text._ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_,"axG",@progbits,_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_
	.type	_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_, @function
_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_:
.LFB1553:
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	subl	$8, %esp
.LCFI171:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EEC2ERKS2_
	leave
	ret
.LFE1553:
	.size	_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_, .-_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_
	.section	.text._ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv, @function
_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv:
.LFB1720:
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	movl	$1073741823, %eax
	popl	%ebp
	ret
.LFE1720:
	.size	_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv, .-_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv:
.LFB1723:
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	movl	8(%ebp), %eax
	popl	%ebp
	ret
.LFE1723:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv:
.LFB1724:
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	popl	%ebp
	ret
.LFE1724:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv
	.section	.text._ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type,"axG",@progbits,_ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type,comdat
	.align 2
	.weak	_ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type
	.type	_ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type, @function
_ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type:
.LFB1729:
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	popl	%ebp
	ret
.LFE1729:
	.size	_ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type, .-_ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type
	.section	.text._ZSt8_DestroyIPP12t_editortoolEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPP12t_editortoolEvT_S3_,comdat
	.align 2
	.weak	_ZSt8_DestroyIPP12t_editortoolEvT_S3_
	.type	_ZSt8_DestroyIPP12t_editortoolEvT_S3_, @function
_ZSt8_DestroyIPP12t_editortoolEvT_S3_:
.LFB1665:
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	subl	$24, %esp
.LCFI182:
	movzbl	-1(%ebp), %eax
	movb	%al, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZSt13__destroy_auxIPP12t_editortoolEvT_S3_11__true_type
	leave
	ret
.LFE1665:
	.size	_ZSt8_DestroyIPP12t_editortoolEvT_S3_, .-_ZSt8_DestroyIPP12t_editortoolEvT_S3_
	.section	.text._ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E,"axG",@progbits,_ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E,comdat
	.align 2
	.weak	_ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E
	.type	_ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E, @function
_ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E:
.LFB1596:
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	subl	$8, %esp
.LCFI185:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZSt8_DestroyIPP12t_editortoolEvT_S3_
	leave
	ret
.LFE1596:
	.size	_ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E, .-_ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E
	.section	.text._ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv:
.LFB1773:
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	movl	$1073741823, %eax
	popl	%ebp
	ret
.LFE1773:
	.size	_ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv
	.section	.text._ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type,"axG",@progbits,_ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type,comdat
	.align 2
	.weak	_ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type
	.type	_ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type, @function
_ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type:
.LFB1775:
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	popl	%ebp
	ret
.LFE1775:
	.size	_ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type, .-_ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_,comdat
	.align 2
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_, @function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_:
.LFB1754:
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	subl	$24, %esp
.LCFI192:
	movzbl	-1(%ebp), %eax
	movb	%al, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZSt13__destroy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_11__true_type
	leave
	ret
.LFE1754:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E,comdat
	.align 2
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E, @function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E:
.LFB1725:
	pushl	%ebp
.LCFI193:
	movl	%esp, %ebp
.LCFI194:
	subl	$8, %esp
.LCFI195:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEEEvT_S9_
	leave
	ret
.LFE1725:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E
	.section	.rodata
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC13:
	.long	-1717986918
	.long	1072273817
	.align 8
.LC14:
	.long	0
	.long	1075052544
	.align 8
.LC15:
	.long	0
	.long	1076756480
	.align 8
.LC17:
	.long	0
	.long	1081073664
	.section	.text._Z6mkblobIhLi0ELi255EEvPT_if,"axG",@progbits,_Z6mkblobIhLi0ELi255EEvPT_if,comdat
	.align 2
	.weak	_Z6mkblobIhLi0ELi255EEvPT_if
	.type	_Z6mkblobIhLi0ELi255EEvPT_if, @function
_Z6mkblobIhLi0ELi255EEvPT_if:
.LFB1499:
	pushl	%ebp
.LCFI196:
	movl	%esp, %ebp
.LCFI197:
	subl	$120, %esp
.LCFI198:
	fildl	12(%ebp)
	fldl	.LC11
	fmulp	%st, %st(1)
	fstpl	-72(%ebp)
	fldl	-72(%ebp)
	fmull	-72(%ebp)
	fstpl	-104(%ebp)
	fldl	-104(%ebp)
	fsqrt
	fstpl	-112(%ebp)
	fldl	-112(%ebp)
	fucomp	%st(0)
	fnstsw	%ax
	sahf
	jp	.L194
	je	.L176
.L194:
	fldl	-104(%ebp)
	fstpl	(%esp)
	call	sqrt
	fstpl	-112(%ebp)
.L176:
	fldl	-112(%ebp)
	fstpl	-64(%ebp)
	fld1
	fdivl	-64(%ebp)
	fstpl	-56(%ebp)
	flds	16(%ebp)
	fldl	.LC13
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jae	.L179
	jmp	.L177
.L179:
	flds	16(%ebp)
	fldl	.LC13
	fsubrp	%st, %st(1)
	fldl	.LC14
	fmulp	%st, %st(1)
	fmull	-72(%ebp)
	fldl	.LC15
	faddp	%st, %st(1)
	fstpl	-96(%ebp)
	jmp	.L180
.L177:
	fldl	.LC15
	fstpl	-96(%ebp)
.L180:
	fldl	-96(%ebp)
	fstpl	-48(%ebp)
	flds	16(%ebp)
	fmuls	16(%ebp)
	fmuls	16(%ebp)
	fmuls	16(%ebp)
	fmull	-48(%ebp)
	fstpl	-40(%ebp)
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L181
.L182:
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L183
.L184:
	fildl	-4(%ebp)
	fsubl	-72(%ebp)
	fstpl	-32(%ebp)
	fildl	-8(%ebp)
	fsubl	-72(%ebp)
	fstpl	-24(%ebp)
	fldl	-32(%ebp)
	fmull	-32(%ebp)
	fldl	-24(%ebp)
	fmull	-24(%ebp)
	faddp	%st, %st(1)
	fstpl	(%esp)
	call	sqrt
	fmull	-56(%ebp)
	fld1
	fsubp	%st, %st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fmull	-40(%ebp)
	fldl	-16(%ebp)
	faddp	%st, %st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	ja	.L187
	jmp	.L185
.L187:
	fldz
	fstpl	-16(%ebp)
	jmp	.L188
.L185:
	fldl	-16(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L190
	jmp	.L188
.L190:
	fld1
	fstpl	-16(%ebp)
.L188:
	movl	-8(%ebp), %eax
	imull	12(%ebp), %eax
	addl	-4(%ebp), %eax
	movl	%eax, %edx
	addl	8(%ebp), %edx
	fldl	-16(%ebp)
	fldl	.LC17
	fmulp	%st, %st(1)
	fldz
	faddp	%st, %st(1)
	fnstcw	-82(%ebp)
	movzwl	-82(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -84(%ebp)
	fldcw	-84(%ebp)
	fistps	-86(%ebp)
	fldcw	-82(%ebp)
	movzwl	-86(%ebp), %eax
	movb	%al, (%edx)
	subl	$1, -4(%ebp)
.L183:
	cmpl	$0, -4(%ebp)
	jns	.L184
	subl	$1, -8(%ebp)
.L181:
	cmpl	$0, -8(%ebp)
	jns	.L182
	leave
	ret
.LFE1499:
	.size	_Z6mkblobIhLi0ELi255EEvPT_if, .-_Z6mkblobIhLi0ELi255EEvPT_if
	.section	.rodata
	.align 8
.LC19:
	.long	0
	.long	1071644672
	.align 8
.LC21:
	.long	-1717986918
	.long	1072273817
	.align 8
.LC22:
	.long	0
	.long	1075052544
	.align 8
.LC23:
	.long	0
	.long	1076756480
	.section	.text._Z6mkblobIfLi0ELi1EEvPT_if,"axG",@progbits,_Z6mkblobIfLi0ELi1EEvPT_if,comdat
	.align 2
	.weak	_Z6mkblobIfLi0ELi1EEvPT_if
	.type	_Z6mkblobIfLi0ELi1EEvPT_if, @function
_Z6mkblobIfLi0ELi1EEvPT_if:
.LFB1498:
	pushl	%ebp
.LCFI199:
	movl	%esp, %ebp
.LCFI200:
	subl	$104, %esp
.LCFI201:
	fildl	12(%ebp)
	fldl	.LC19
	fmulp	%st, %st(1)
	fstpl	-72(%ebp)
	fldl	-72(%ebp)
	fmull	-72(%ebp)
	fstpl	(%esp)
	call	sqrt
	fstpl	-64(%ebp)
	fld1
	fdivl	-64(%ebp)
	fstpl	-56(%ebp)
	flds	16(%ebp)
	fldl	.LC21
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jae	.L198
	jmp	.L196
.L198:
	flds	16(%ebp)
	fldl	.LC21
	fsubrp	%st, %st(1)
	fldl	.LC22
	fmulp	%st, %st(1)
	fmull	-72(%ebp)
	fldl	.LC23
	faddp	%st, %st(1)
	fstpl	-96(%ebp)
	jmp	.L199
.L196:
	fldl	.LC23
	fstpl	-96(%ebp)
.L199:
	fldl	-96(%ebp)
	fstpl	-48(%ebp)
	flds	16(%ebp)
	fmuls	16(%ebp)
	fmuls	16(%ebp)
	fmuls	16(%ebp)
	fmull	-48(%ebp)
	fstpl	-40(%ebp)
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L200
.L201:
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L202
.L203:
	fildl	-4(%ebp)
	fsubl	-72(%ebp)
	fstpl	-32(%ebp)
	fildl	-8(%ebp)
	fsubl	-72(%ebp)
	fstpl	-24(%ebp)
	fldl	-32(%ebp)
	fmull	-32(%ebp)
	fldl	-24(%ebp)
	fmull	-24(%ebp)
	faddp	%st, %st(1)
	fstpl	(%esp)
	call	sqrt
	fmull	-56(%ebp)
	fld1
	fsubp	%st, %st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fmull	-40(%ebp)
	fldl	-16(%ebp)
	faddp	%st, %st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	ja	.L206
	jmp	.L204
.L206:
	fldz
	fstpl	-16(%ebp)
	jmp	.L207
.L204:
	fldl	-16(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L209
	jmp	.L207
.L209:
	fld1
	fstpl	-16(%ebp)
.L207:
	movl	-8(%ebp), %eax
	imull	12(%ebp), %eax
	addl	-4(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	fldl	-16(%ebp)
	fldz
	faddp	%st, %st(1)
	fstps	-84(%ebp)
	flds	-84(%ebp)
	fstps	(%eax)
	subl	$1, -4(%ebp)
.L202:
	cmpl	$0, -4(%ebp)
	jns	.L203
	subl	$1, -8(%ebp)
.L200:
	cmpl	$0, -8(%ebp)
	jns	.L201
	leave
	ret
.LFE1498:
	.size	_Z6mkblobIfLi0ELi1EEvPT_if, .-_Z6mkblobIfLi0ELi1EEvPT_if
	.section	.text._ZN13input_handlerD0Ev,"axG",@progbits,_ZN13input_handlerD0Ev,comdat
	.align 2
	.weak	_ZN13input_handlerD0Ev
	.type	_ZN13input_handlerD0Ev, @function
_ZN13input_handlerD0Ev:
.LFB927:
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	subl	$8, %esp
.LCFI204:
	movl	$_ZTV13input_handler+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, %eax
	testb	%al, %al
	je	.L217
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L217:
	leave
	ret
.LFE927:
	.size	_ZN13input_handlerD0Ev, .-_ZN13input_handlerD0Ev
	.section	.text._ZN13input_handlerD1Ev,"axG",@progbits,_ZN13input_handlerD1Ev,comdat
	.align 2
	.weak	_ZN13input_handlerD1Ev
	.type	_ZN13input_handlerD1Ev, @function
_ZN13input_handlerD1Ev:
.LFB926:
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	subl	$8, %esp
.LCFI207:
	movl	$_ZTV13input_handler+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, %eax
	testb	%al, %al
	je	.L222
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L222:
	leave
	ret
.LFE926:
	.size	_ZN13input_handlerD1Ev, .-_ZN13input_handlerD1Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j
	.type	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j, @function
_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j:
.LFB1728:
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	subl	$8, %esp
.LCFI210:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	ret
.LFE1728:
	.size	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j, .-_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j
	.section	.text._ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j,"axG",@progbits,_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j
	.type	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j, @function
_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j:
.LFB1664:
	pushl	%ebp
.LCFI211:
	movl	%esp, %ebp
.LCFI212:
	subl	$24, %esp
.LCFI213:
	cmpl	$0, 12(%ebp)
	je	.L228
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE10deallocateEPS2_j
.L228:
	leave
	ret
.LFE1664:
	.size	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j, .-_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j
	.section	.text._ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev:
.LFB1593:
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	subl	$24, %esp
.LCFI216:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE12_Vector_implD1Ev
	leave
	ret
.LFE1593:
	.size	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev, .-_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev
	.section	.text._ZN13input_handlerD2Ev,"axG",@progbits,_ZN13input_handlerD2Ev,comdat
	.align 2
	.weak	_ZN13input_handlerD2Ev
	.type	_ZN13input_handlerD2Ev, @function
_ZN13input_handlerD2Ev:
.LFB925:
	pushl	%ebp
.LCFI217:
	movl	%esp, %ebp
.LCFI218:
	subl	$8, %esp
.LCFI219:
	movl	$_ZTV13input_handler+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, %eax
	testb	%al, %al
	je	.L236
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L236:
	leave
	ret
.LFE925:
	.size	_ZN13input_handlerD2Ev, .-_ZN13input_handlerD2Ev
	.section	.text._ZN12t_editortoolD2Ev,"axG",@progbits,_ZN12t_editortoolD2Ev,comdat
	.align 2
	.weak	_ZN12t_editortoolD2Ev
	.type	_ZN12t_editortoolD2Ev, @function
_ZN12t_editortoolD2Ev:
.LFB1366:
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	subl	$8, %esp
.LCFI222:
	movl	$_ZTV12t_editortool+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN13input_handlerD2Ev
	movl	$0, %eax
	testb	%al, %al
	je	.L241
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L241:
	leave
	ret
.LFE1366:
	.size	_ZN12t_editortoolD2Ev, .-_ZN12t_editortoolD2Ev
	.section	.text._ZN25t_tool_paintgrid_spraycanD0Ev,"axG",@progbits,_ZN25t_tool_paintgrid_spraycanD0Ev,comdat
	.align 2
	.weak	_ZN25t_tool_paintgrid_spraycanD0Ev
	.type	_ZN25t_tool_paintgrid_spraycanD0Ev, @function
_ZN25t_tool_paintgrid_spraycanD0Ev:
.LFB1812:
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	subl	$8, %esp
.LCFI225:
	movl	$_ZTV25t_tool_paintgrid_spraycan+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12t_editortoolD2Ev
	movl	$1, %eax
	testb	%al, %al
	je	.L246
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L246:
	leave
	ret
.LFE1812:
	.size	_ZN25t_tool_paintgrid_spraycanD0Ev, .-_ZN25t_tool_paintgrid_spraycanD0Ev
	.section	.text._ZN25t_tool_paintgrid_spraycanD1Ev,"axG",@progbits,_ZN25t_tool_paintgrid_spraycanD1Ev,comdat
	.align 2
	.weak	_ZN25t_tool_paintgrid_spraycanD1Ev
	.type	_ZN25t_tool_paintgrid_spraycanD1Ev, @function
_ZN25t_tool_paintgrid_spraycanD1Ev:
.LFB1811:
	pushl	%ebp
.LCFI226:
	movl	%esp, %ebp
.LCFI227:
	subl	$8, %esp
.LCFI228:
	movl	$_ZTV25t_tool_paintgrid_spraycan+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12t_editortoolD2Ev
	movl	$0, %eax
	testb	%al, %al
	je	.L251
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L251:
	leave
	ret
.LFE1811:
	.size	_ZN25t_tool_paintgrid_spraycanD1Ev, .-_ZN25t_tool_paintgrid_spraycanD1Ev
	.section	.text._ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev,"axG",@progbits,_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
	.type	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev, @function
_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev:
.LFB1517:
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	subl	$40, %esp
.LCFI231:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv
	movl	%eax, 4(%esp)
	leal	-1(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolEC1ERKS1_
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	leal	-1(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_ZSt8_DestroyIPP12t_editortoolS1_EvT_S3_SaIT0_E
	leal	-1(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolED1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EED2Ev
	leave
	ret
.LFE1517:
	.size	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev, .-_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
.globl _Unwind_Resume
	.section	.text._ZN8t_editorD0Ev,"axG",@progbits,_ZN8t_editorD0Ev,comdat
	.align 2
	.weak	_ZN8t_editorD0Ev
	.type	_ZN8t_editorD0Ev, @function
_ZN8t_editorD0Ev:
.LFB1396:
	pushl	%ebp
.LCFI232:
	movl	%esp, %ebp
.LCFI233:
	pushl	%ebx
.LCFI234:
	subl	$52, %esp
.LCFI235:
	movl	$_ZTV8t_editor+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, -8(%ebp)
	jmp	.L256
.L257:
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L258
	movl	-32(%ebp), %edx
	movl	(%edx), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
.LEHB0:
	call	*%eax
.L258:
	addl	$1, -8(%ebp)
.L256:
	movl	-8(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv
	cmpl	%eax, %ebx
	setb	%al
	testb	%al, %al
	jne	.L257
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L261
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L261
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.LEHE0:
.L261:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZN13input_handlerD2Ev
	jmp	.L264
.L270:
	movl	%eax, -36(%ebp)
.L265:
	movl	-36(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
	movl	%ebx, -36(%ebp)
.L271:
.L266:
	movl	-36(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZN13input_handlerD2Ev
	movl	%ebx, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L264:
	movl	$1, %eax
	testb	%al, %al
	je	.L269
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L269:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1396:
	.size	_ZN8t_editorD0Ev, .-_ZN8t_editorD0Ev
	.section	.gcc_except_table,"a",@progbits
.LLSDA1396:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1396-.LLSDACSB1396
.LLSDACSB1396:
	.uleb128 .LEHB0-.LFB1396
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L270-.LFB1396
	.uleb128 0x0
	.uleb128 .LEHB1-.LFB1396
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1396:
	.section	.text._ZN8t_editorD0Ev,"axG",@progbits,_ZN8t_editorD0Ev,comdat
	.section	.text._ZN8t_editorD1Ev,"axG",@progbits,_ZN8t_editorD1Ev,comdat
	.align 2
	.weak	_ZN8t_editorD1Ev
	.type	_ZN8t_editorD1Ev, @function
_ZN8t_editorD1Ev:
.LFB1395:
	pushl	%ebp
.LCFI236:
	movl	%esp, %ebp
.LCFI237:
	pushl	%ebx
.LCFI238:
	subl	$52, %esp
.LCFI239:
	movl	$_ZTV8t_editor+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, -8(%ebp)
	jmp	.L273
.L274:
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EEixEj
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L275
	movl	-32(%ebp), %edx
	movl	(%edx), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
.LEHB2:
	call	*%eax
.L275:
	addl	$1, -8(%ebp)
.L273:
	movl	-8(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv
	cmpl	%eax, %ebx
	setb	%al
	testb	%al, %al
	jne	.L274
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L278
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L278
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.LEHE2:
.L278:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZN13input_handlerD2Ev
	jmp	.L281
.L287:
	movl	%eax, -36(%ebp)
.L282:
	movl	-36(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
	movl	%ebx, -36(%ebp)
.L288:
.L283:
	movl	-36(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZN13input_handlerD2Ev
	movl	%ebx, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L281:
	movl	$0, %eax
	testb	%al, %al
	je	.L286
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L286:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1395:
	.size	_ZN8t_editorD1Ev, .-_ZN8t_editorD1Ev
	.section	.gcc_except_table
.LLSDA1395:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1395-.LLSDACSB1395
.LLSDACSB1395:
	.uleb128 .LEHB2-.LFB1395
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L287-.LFB1395
	.uleb128 0x0
	.uleb128 .LEHB3-.LFB1395
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1395:
	.section	.text._ZN8t_editorD1Ev,"axG",@progbits,_ZN8t_editorD1Ev,comdat
	.section	.text._ZN7t_brushD0Ev,"axG",@progbits,_ZN7t_brushD0Ev,comdat
	.align 2
	.weak	_ZN7t_brushD0Ev
	.type	_ZN7t_brushD0Ev, @function
_ZN7t_brushD0Ev:
.LFB1379:
	pushl	%ebp
.LCFI240:
	movl	%esp, %ebp
.LCFI241:
	subl	$8, %esp
.LCFI242:
	movl	$_ZTV7t_brush+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L290
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free
.L290:
	movl	$1, %eax
	testb	%al, %al
	je	.L294
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L294:
	leave
	ret
.LFE1379:
	.size	_ZN7t_brushD0Ev, .-_ZN7t_brushD0Ev
	.section	.text._ZN7t_brushD1Ev,"axG",@progbits,_ZN7t_brushD1Ev,comdat
	.align 2
	.weak	_ZN7t_brushD1Ev
	.type	_ZN7t_brushD1Ev, @function
_ZN7t_brushD1Ev:
.LFB1378:
	pushl	%ebp
.LCFI243:
	movl	%esp, %ebp
.LCFI244:
	subl	$8, %esp
.LCFI245:
	movl	$_ZTV7t_brush+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L296
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free
.L296:
	movl	$0, %eax
	testb	%al, %al
	je	.L300
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L300:
	leave
	ret
.LFE1378:
	.size	_ZN7t_brushD1Ev, .-_ZN7t_brushD1Ev
	.section	.text._ZN7t_brushD2Ev,"axG",@progbits,_ZN7t_brushD2Ev,comdat
	.align 2
	.weak	_ZN7t_brushD2Ev
	.type	_ZN7t_brushD2Ev, @function
_ZN7t_brushD2Ev:
.LFB1377:
	pushl	%ebp
.LCFI246:
	movl	%esp, %ebp
.LCFI247:
	subl	$8, %esp
.LCFI248:
	movl	$_ZTV7t_brush+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L302
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free
.L302:
	movl	$0, %eax
	testb	%al, %al
	je	.L306
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L306:
	leave
	ret
.LFE1377:
	.size	_ZN7t_brushD2Ev, .-_ZN7t_brushD2Ev
	.section	.text._ZN11t_blobbrushD0Ev,"axG",@progbits,_ZN11t_blobbrushD0Ev,comdat
	.align 2
	.weak	_ZN11t_blobbrushD0Ev
	.type	_ZN11t_blobbrushD0Ev, @function
_ZN11t_blobbrushD0Ev:
.LFB1820:
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	subl	$8, %esp
.LCFI251:
	movl	$_ZTV11t_blobbrush+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brushD2Ev
	movl	$1, %eax
	testb	%al, %al
	je	.L311
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L311:
	leave
	ret
.LFE1820:
	.size	_ZN11t_blobbrushD0Ev, .-_ZN11t_blobbrushD0Ev
	.section	.text._ZN11t_blobbrushD1Ev,"axG",@progbits,_ZN11t_blobbrushD1Ev,comdat
	.align 2
	.weak	_ZN11t_blobbrushD1Ev
	.type	_ZN11t_blobbrushD1Ev, @function
_ZN11t_blobbrushD1Ev:
.LFB1819:
	pushl	%ebp
.LCFI252:
	movl	%esp, %ebp
.LCFI253:
	subl	$8, %esp
.LCFI254:
	movl	$_ZTV11t_blobbrush+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brushD2Ev
	movl	$0, %eax
	testb	%al, %al
	je	.L316
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L316:
	leave
	ret
.LFE1819:
	.size	_ZN11t_blobbrushD1Ev, .-_ZN11t_blobbrushD1Ev
	.section	.text._ZN11t_blobbrush6createEiif,"axG",@progbits,_ZN11t_blobbrush6createEiif,comdat
	.align 2
	.weak	_ZN11t_blobbrush6createEiif
	.type	_ZN11t_blobbrush6createEiif, @function
_ZN11t_blobbrush6createEiif:
.LFB1384:
	pushl	%ebp
.LCFI255:
	movl	%esp, %ebp
.LCFI256:
	subl	$24, %esp
.LCFI257:
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L327
	cmpl	$0, 12(%ebp)
	jg	.L320
	movl	$1, 12(%ebp)
.L320:
	cmpl	$0, 16(%ebp)
	jg	.L322
	movl	$1, 16(%ebp)
.L322:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	movl	12(%ebp), %eax
	imull	16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Z6mkblobIfLi0ELi1EEvPT_if
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L327
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L325
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9t_textureD1Ev
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L325:
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
.L327:
	leave
	ret
.LFE1384:
	.size	_ZN11t_blobbrush6createEiif, .-_ZN11t_blobbrush6createEiif
	.section	.text._ZN11t_blobbrushC1Eiif,"axG",@progbits,_ZN11t_blobbrushC1Eiif,comdat
	.align 2
	.weak	_ZN11t_blobbrushC1Eiif
	.type	_ZN11t_blobbrushC1Eiif, @function
_ZN11t_blobbrushC1Eiif:
.LFB1387:
	pushl	%ebp
.LCFI258:
	movl	%esp, %ebp
.LCFI259:
	pushl	%ebx
.LCFI260:
	subl	$20, %esp
.LCFI261:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brushC2Ev
	movl	$_ZTV11t_blobbrush+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB4:
	call	_ZN11t_blobbrush6createEiif
.LEHE4:
	jmp	.L330
.L331:
	movl	%eax, -8(%ebp)
.L329:
	movl	-8(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brushD2Ev
	movl	%ebx, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L330:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1387:
	.size	_ZN11t_blobbrushC1Eiif, .-_ZN11t_blobbrushC1Eiif
	.section	.gcc_except_table
.LLSDA1387:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1387-.LLSDACSB1387
.LLSDACSB1387:
	.uleb128 .LEHB4-.LFB1387
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L331-.LFB1387
	.uleb128 0x0
	.uleb128 .LEHB5-.LFB1387
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1387:
	.section	.text._ZN11t_blobbrushC1Eiif,"axG",@progbits,_ZN11t_blobbrushC1Eiif,comdat
	.section	.text._ZN8t_editor8getbrushEv,"axG",@progbits,_ZN8t_editor8getbrushEv,comdat
	.align 2
	.weak	_ZN8t_editor8getbrushEv
	.type	_ZN8t_editor8getbrushEv, @function
_ZN8t_editor8getbrushEv:
.LFB1397:
	pushl	%ebp
.LCFI262:
	movl	%esp, %ebp
.LCFI263:
	pushl	%ebx
.LCFI264:
	subl	$36, %esp
.LCFI265:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L333
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L335
.L333:
	movl	$28, (%esp)
.LEHB6:
	call	_Znwj
.LEHE6:
	movl	%eax, -8(%ebp)
	movl	$0x3e000000, %eax
	movl	%eax, 12(%esp)
	movl	$60, 8(%esp)
	movl	$60, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB7:
	call	_ZN11t_blobbrushC1Eiif
.LEHE7:
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L335
.L338:
	movl	%eax, -16(%ebp)
.L336:
	movl	-16(%ebp), %ebx
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L335:
	movl	-12(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1397:
	.size	_ZN8t_editor8getbrushEv, .-_ZN8t_editor8getbrushEv
	.section	.gcc_except_table
.LLSDA1397:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1397-.LLSDACSB1397
.LLSDACSB1397:
	.uleb128 .LEHB6-.LFB1397
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB7-.LFB1397
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L338-.LFB1397
	.uleb128 0x0
	.uleb128 .LEHB8-.LFB1397
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1397:
	.section	.text._ZN8t_editor8getbrushEv,"axG",@progbits,_ZN8t_editor8getbrushEv,comdat
	.section	.rodata
.LC27:
	.string	"on"
.LC28:
	.string	"off"
.LC29:
	.string	"Wrap %s\n"
.LC30:
	.string	"Mouse Lerping %s\n"
.LC31:
	.string	"Show Particles %s\n"
	.section	.text._ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent,"axG",@progbits,_ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent,comdat
	.align 2
	.weak	_ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent
	.type	_ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent, @function
_ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent:
.LFB1400:
	pushl	%ebp
.LCFI266:
	movl	%esp, %ebp
.LCFI267:
	pushl	%esi
.LCFI268:
	pushl	%ebx
.LCFI269:
	subl	$48, %esp
.LCFI270:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$2, %al
	jne	.L362
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$48, %eax
	jle	.L342
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$57, %eax
	jg	.L342
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	subl	$49, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L345
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L345:
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L362
.L342:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$108, -40(%ebp)
	je	.L349
	cmpl	$108, -40(%ebp)
	jg	.L352
	cmpl	$44, -40(%ebp)
	je	.L347
	cmpl	$46, -40(%ebp)
	je	.L348
	jmp	.L362
.L352:
	cmpl	$112, -40(%ebp)
	je	.L350
	cmpl	$119, -40(%ebp)
	je	.L351
	jmp	.L362
.L351:
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	cmpb	$1, %al
	setne	%dl
	movl	8(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.L353
	movl	$.LC27, -36(%ebp)
	jmp	.L355
.L353:
	movl	$.LC28, -36(%ebp)
.L355:
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC29, (%esp)
	call	printf
	jmp	.L362
.L349:
	movl	8(%ebp), %eax
	movzbl	5(%eax), %eax
	cmpb	$1, %al
	setne	%dl
	movl	8(%ebp), %eax
	movb	%dl, 5(%eax)
	movl	8(%ebp), %eax
	movzbl	5(%eax), %eax
	testb	%al, %al
	je	.L356
	movl	$.LC27, -32(%ebp)
	jmp	.L358
.L356:
	movl	$.LC28, -32(%ebp)
.L358:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC30, (%esp)
	call	printf
	jmp	.L362
.L350:
	movl	8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$1, %al
	setne	%dl
	movl	8(%ebp), %eax
	movb	%dl, 6(%eax)
	movl	8(%ebp), %eax
	movzbl	6(%eax), %eax
	testb	%al, %al
	je	.L359
	movl	$.LC27, -28(%ebp)
	jmp	.L361
.L359:
	movl	$.LC28, -28(%ebp)
.L361:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC31, (%esp)
	call	printf
	jmp	.L362
.L348:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8t_editor8getbrushEv
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush9getheightEv
	leal	1(%eax), %ebx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush8getwidthEv
	addl	$1, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	jmp	.L362
.L347:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8t_editor8getbrushEv
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush9getheightEv
	leal	-1(%eax), %ebx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush8getwidthEv
	subl	$1, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
.L362:
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE1400:
	.size	_ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent, .-_ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent
	.section	.text._ZN11t_blobbrush6resizeEii,"axG",@progbits,_ZN11t_blobbrush6resizeEii,comdat
	.align 2
	.weak	_ZN11t_blobbrush6resizeEii
	.type	_ZN11t_blobbrush6resizeEii, @function
_ZN11t_blobbrush6resizeEii:
.LFB1389:
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	subl	$24, %esp
.LCFI273:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN11t_blobbrush6createEiif
	leave
	ret
.LFE1389:
	.size	_ZN11t_blobbrush6resizeEii, .-_ZN11t_blobbrush6resizeEii
	.section	.text._ZN3vecC1ER8polarvec,"axG",@progbits,_ZN3vecC1ER8polarvec,comdat
	.align 2
	.weak	_ZN3vecC1ER8polarvec
	.type	_ZN3vecC1ER8polarvec, @function
_ZN3vecC1ER8polarvec:
.LFB922:
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	subl	$24, %esp
.LCFI276:
	movl	12(%ebp), %eax
	flds	(%eax)
	fstpl	(%esp)
	call	cos
	movl	12(%ebp), %eax
	flds	4(%eax)
	fmulp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	movl	8(%ebp), %eax
	fstps	(%eax)
	movl	12(%ebp), %eax
	flds	(%eax)
	fstpl	(%esp)
	call	sin
	movl	12(%ebp), %eax
	flds	4(%eax)
	fmulp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	movl	8(%ebp), %eax
	fstps	4(%eax)
	leave
	ret
.LFE922:
	.size	_ZN3vecC1ER8polarvec, .-_ZN3vecC1ER8polarvec
	.section	.rodata
	.align 8
.LC33:
	.long	-755914244
	.long	1062232653
	.align 8
.LC34:
	.long	1413754136
	.long	1072243195
	.section	.text._ZN3vec16random_deviationEf,"axG",@progbits,_ZN3vec16random_deviationEf,comdat
	.align 2
	.weak	_ZN3vec16random_deviationEf
	.type	_ZN3vec16random_deviationEf, @function
_ZN3vec16random_deviationEf:
.LFB923:
	pushl	%ebp
.LCFI277:
	movl	%esp, %ebp
.LCFI278:
	pushl	%ebx
.LCFI279:
	subl	$68, %esp
.LCFI280:
	call	random
	movl	%eax, %ecx
	movl	$274877907, -56(%ebp)
	movl	-56(%ebp), %eax
	imull	%ecx
	sarl	$6, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -52(%ebp)
	imull	$1000, -52(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -52(%ebp)
	fildl	-52(%ebp)
	fldl	.LC33
	fmulp	%st, %st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	fstpl	(%esp)
	call	sqrt
	fldl	.LC34
	fmulp	%st, %st(1)
	fstpl	(%esp)
	call	tan
	flds	12(%ebp)
	fmulp	%st, %st(1)
	fstps	-48(%ebp)
	call	random
	movl	%eax, %ecx
	movl	$-1240768329, -56(%ebp)
	movl	-56(%ebp), %eax
	imull	%ecx
	leal	(%edx,%ecx), %eax
	movl	%eax, %edx
	sarl	$8, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -44(%ebp)
	imull	$360, -44(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -44(%ebp)
	fildl	-44(%ebp)
	flds	-48(%ebp)
	fstps	8(%esp)
	fstps	4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8polarvecC1Eff
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3vecC1ER8polarvec
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3vec3addERKS_
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE923:
	.size	_ZN3vec16random_deviationEf, .-_ZN3vec16random_deviationEf
	.section	.rodata
	.align 8
.LC36:
	.long	0
	.long	-1075838976
	.section	.text._ZN25t_tool_paintgrid_spraycan9phys_tickEf,"axG",@progbits,_ZN25t_tool_paintgrid_spraycan9phys_tickEf,comdat
	.align 2
	.weak	_ZN25t_tool_paintgrid_spraycan9phys_tickEf
	.type	_ZN25t_tool_paintgrid_spraycan9phys_tickEf, @function
_ZN25t_tool_paintgrid_spraycan9phys_tickEf:
.LFB1462:
	pushl	%ebp
.LCFI281:
	movl	%esp, %ebp
.LCFI282:
	pushl	%edi
.LCFI283:
	pushl	%esi
.LCFI284:
	pushl	%ebx
.LCFI285:
	subl	$108, %esp
.LCFI286:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN12t_editortool9phys_tickEf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	andl	$5, %eax
	testl	%eax, %eax
	je	.L377
	call	_ZN7t_pgrid11getinstanceEv
	movl	%eax, (%esp)
	call	_ZN7t_pgrid17current_workspaceEv
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN7t_image13current_layerEv
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN8t_editor8getbrushEv
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L372
.L373:
	movl	8(%ebp), %eax
	flds	16(%eax)
	fstpl	-80(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush9getheightEv
	sall	$3, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC36
	fmulp	%st, %st(1)
	faddl	-80(%ebp)
	fstps	-68(%ebp)
	movl	8(%ebp), %eax
	flds	12(%eax)
	fstpl	-64(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush8getwidthEv
	sall	$3, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC36
	fmulp	%st, %st(1)
	faddl	-64(%ebp)
	fstps	-52(%ebp)
	flds	-52(%ebp)
	flds	-68(%ebp)
	fstps	8(%esp)
	fstps	4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3vecC1Eff
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3vec16random_deviationEf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L374
	movl	8(%ebp), %eax
	flds	36(%eax)
	fmuls	12(%ebp)
	fstps	-56(%ebp)
	jmp	.L376
.L374:
	flds	12(%ebp)
	fchs
	movl	8(%ebp), %eax
	flds	36(%eax)
	fmulp	%st, %st(1)
	fstps	-56(%ebp)
.L376:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush9getheightEv
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush8getwidthEv
	movl	%eax, %esi
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7t_brush9getpixelsEv
	movl	%eax, %edi
	movl	$0x3e000000, %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3vec3mulEf
	movl	$0, 28(%esp)
	flds	-56(%ebp)
	fstps	24(%esp)
	movl	%ebx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6t_grid21paint_pixels_additiveE3vecPfiifi
	addl	$1, -20(%ebp)
.L372:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L373
.L377:
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE1462:
	.size	_ZN25t_tool_paintgrid_spraycan9phys_tickEf, .-_ZN25t_tool_paintgrid_spraycan9phys_tickEf
	.section	.text._ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_,"axG",@progbits,_ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_,comdat
	.align 2
	.weak	_ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_
	.type	_ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_, @function
_ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_:
.LFB1790:
	pushl	%ebp
.LCFI287:
	movl	%esp, %ebp
.LCFI288:
	pushl	%ebx
.LCFI289:
	subl	$36, %esp
.LCFI290:
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, %ebx
	subl	%edx, %ebx
	movl	%ebx, %edx
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	memmove
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	subl	%edx, %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1790:
	.size	_ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_, .-_ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_
	.section	.text._ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_,"axG",@progbits,_ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_,comdat
	.align 2
	.weak	_ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_
	.type	_ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_, @function
_ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_:
.LFB1772:
	pushl	%ebp
.LCFI291:
	movl	%esp, %ebp
.LCFI292:
	subl	$40, %esp
.LCFI293:
	movb	$1, -1(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt15__copy_backwardILb1ESt26random_access_iterator_tagE6copy_bIP12t_editortoolEEPT_PKS5_S8_S6_
	leave
	ret
.LFE1772:
	.size	_ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_, .-_ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_
	.section	.text._ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_,"axG",@progbits,_ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_,comdat
	.align 2
	.weak	_ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_
	.type	_ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_, @function
_ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_:
.LFB1751:
	pushl	%ebp
.LCFI294:
	movl	%esp, %ebp
.LCFI295:
	pushl	%edi
.LCFI296:
	pushl	%esi
.LCFI297:
	pushl	%ebx
.LCFI298:
	subl	$28, %esp
.LCFI299:
	movl	8(%ebp), %esi
	leal	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %edi
	leal	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %ebx
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZSt19__copy_backward_auxIPP12t_editortoolS2_ET0_T_S4_S3_
	movl	%eax, -16(%ebp)
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%esi, %eax
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE1751:
	.size	_ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_, .-_ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_
	.section	.text._ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,"axG",@progbits,_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,comdat
	.align 2
	.weak	_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.type	_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, @function
_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_:
.LFB1719:
	pushl	%ebp
.LCFI300:
	movl	%esp, %ebp
.LCFI301:
	pushl	%ebx
.LCFI302:
	subl	$36, %esp
.LCFI303:
	movl	8(%ebp), %ebx
	movb	$1, -6(%ebp)
	movb	$1, -5(%ebp)
	leal	-24(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt22__copy_backward_normalILb1ELb1EE8copy_b_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, (%ebx)
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
.LFE1719:
	.size	_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, .-_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.section	.text._ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_,"axG",@progbits,_ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_,comdat
	.align 2
	.weak	_ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_
	.type	_ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_, @function
_ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_:
.LFB1804:
	pushl	%ebp
.LCFI304:
	movl	%esp, %ebp
.LCFI305:
	subl	$24, %esp
.LCFI306:
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	memmove
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	16(%ebp), %eax
	leave
	ret
.LFE1804:
	.size	_ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_, .-_ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_
	.section	.text._ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_,"axG",@progbits,_ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_,comdat
	.align 2
	.weak	_ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_
	.type	_ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_, @function
_ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_:
.LFB1802:
	pushl	%ebp
.LCFI307:
	movl	%esp, %ebp
.LCFI308:
	subl	$40, %esp
.LCFI309:
	movb	$1, -1(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt6__copyILb1ESt26random_access_iterator_tagE4copyIP12t_editortoolEEPT_PKS5_S8_S6_
	leave
	ret
.LFE1802:
	.size	_ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_, .-_ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_
	.section	.text._ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_,"axG",@progbits,_ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_,comdat
	.align 2
	.weak	_ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_
	.type	_ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_, @function
_ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_:
.LFB1800:
	pushl	%ebp
.LCFI310:
	movl	%esp, %ebp
.LCFI311:
	pushl	%edi
.LCFI312:
	pushl	%esi
.LCFI313:
	pushl	%ebx
.LCFI314:
	subl	$28, %esp
.LCFI315:
	movl	8(%ebp), %esi
	leal	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %edi
	leal	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %ebx
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZSt10__copy_auxIPP12t_editortoolS2_ET0_T_S4_S3_
	movl	%eax, -16(%ebp)
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	%esi, %eax
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE1800:
	.size	_ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_, .-_ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,comdat
	.align 2
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_:
.LFB1791:
	pushl	%ebp
.LCFI316:
	movl	%esp, %ebp
.LCFI317:
	pushl	%ebx
.LCFI318:
	subl	$36, %esp
.LCFI319:
	movl	8(%ebp), %ebx
	movb	$1, -6(%ebp)
	movb	$1, -5(%ebp)
	leal	-24(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt13__copy_normalILb1ELb1EE6copy_nIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS5_SaIS5_EEEESA_EET0_T_SC_SB_
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, (%ebx)
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
.LFE1791:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.section	.text._ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type,"axG",@progbits,_ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type,comdat
	.align 2
	.weak	_ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type
	.type	_ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type, @function
_ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type:
.LFB1774:
	pushl	%ebp
.LCFI320:
	movl	%esp, %ebp
.LCFI321:
	pushl	%ebx
.LCFI322:
	subl	$20, %esp
.LCFI323:
	movl	8(%ebp), %ebx
	leal	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	subl	$4, %esp
	movl	-8(%ebp), %eax
	movl	%eax, (%ebx)
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
.LFE1774:
	.size	_ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type, .-_ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,comdat
	.align 2
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_:
.LFB1753:
	pushl	%ebp
.LCFI324:
	movl	%esp, %ebp
.LCFI325:
	pushl	%ebx
.LCFI326:
	subl	$36, %esp
.LCFI327:
	movl	8(%ebp), %ebx
	leal	-8(%ebp), %edx
	movzbl	-9(%ebp), %eax
	movb	%al, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZSt24__uninitialized_copy_auxIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_11__true_type
	subl	$4, %esp
	movl	-8(%ebp), %eax
	movl	%eax, (%ebx)
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
.LFE1753:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E,comdat
	.align 2
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E:
.LFB1722:
	pushl	%ebp
.LCFI328:
	movl	%esp, %ebp
.LCFI329:
	pushl	%ebx
.LCFI330:
	subl	$20, %esp
.LCFI331:
	movl	8(%ebp), %ebx
	leal	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	subl	$4, %esp
	movl	-8(%ebp), %eax
	movl	%eax, (%ebx)
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
.LFE1722:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv
	.type	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv, @function
_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv:
.LFB1752:
	pushl	%ebp
.LCFI332:
	movl	%esp, %ebp
.LCFI333:
	subl	$8, %esp
.LCFI334:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx13new_allocatorIP12t_editortoolE8max_sizeEv
	cmpl	12(%ebp), %eax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L401
	call	_ZSt17__throw_bad_allocv
.L401:
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znwj
	leave
	ret
.LFE1752:
	.size	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv, .-_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv
	.section	.text._ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj,"axG",@progbits,_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj
	.type	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj, @function
_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj:
.LFB1721:
	pushl	%ebp
.LCFI335:
	movl	%esp, %ebp
.LCFI336:
	subl	$24, %esp
.LCFI337:
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE8allocateEjPKv
	leave
	ret
.LFE1721:
	.size	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj, .-_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj
	.section	.rodata
.LC39:
	.string	"vector::_M_insert_aux"
	.section	.text._ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_,"axG",@progbits,_ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.type	_ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, @function
_ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
.LFB1656:
	pushl	%ebp
.LCFI338:
	movl	%esp, %ebp
.LCFI339:
	pushl	%ebx
.LCFI340:
	subl	$116, %esp
.LCFI341:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L407
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	$4, %eax
	movl	%eax, -44(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	$8, %eax
	movl	%eax, -36(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	leal	-72(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	subl	$4, %esp
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEdeEv
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L417
.L407:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE4sizeEv
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv
	cmpl	-16(%ebp), %eax
	sete	%al
	testb	%al, %al
	je	.L410
	movl	$.LC39, (%esp)
	call	_ZSt20__throw_length_errorPKc
.L410:
	cmpl	$0, -16(%ebp)
	je	.L412
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -92(%ebp)
	jmp	.L414
.L412:
	movl	$1, -92(%ebp)
.L414:
	movl	-92(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jae	.L415
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt6vectorIP12t_editortoolSaIS1_EE8max_sizeEv
	movl	%eax, -12(%ebp)
.L415:
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE11_M_allocateEj
	movl	%eax, -32(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolEC1ERKS1_
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	leal	-76(%ebp), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolED1Ev
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEppEv
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv
	movl	%eax, 4(%esp)
	leal	-7(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolEC1ERKS1_
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEEC1ERKS3_
	leal	-80(%ebp), %edx
	leal	-7(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES8_S3_ET0_T_SA_S9_SaIT1_E
	subl	$4, %esp
	movl	-80(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	-7(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolED1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE19_M_get_Tp_allocatorEv
	movl	%eax, 4(%esp)
	leal	-5(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolEC1ERKS1_
	leal	-84(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv
	subl	$4, %esp
	movl	-84(%ebp), %eax
	movl	%eax, %ebx
	leal	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE5beginEv
	subl	$4, %esp
	movl	-88(%ebp), %eax
	movl	%eax, %edx
	leal	-5(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS3_SaIS3_EEEES3_EvT_S9_SaIT0_E
	leal	-5(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolED1Ev
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt12_Vector_baseIP12t_editortoolSaIS1_EE13_M_deallocateEPS1_j
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP12t_editortoolSt6vectorIS2_SaIS2_EEE4baseEv
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L417:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE1656:
	.size	_ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, .-_ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.section	.text._ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_,"axG",@progbits,_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	.type	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_, @function
_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_:
.LFB1554:
	pushl	%ebp
.LCFI342:
	movl	%esp, %ebp
.LCFI343:
	subl	$24, %esp
.LCFI344:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L419
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorIP12t_editortoolE9constructEPS2_RKS2_
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L422
.L419:
	leal	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE3endEv
	subl	$4, %esp
	movl	-4(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L422:
	leave
	ret
.LFE1554:
	.size	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_, .-_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	.text
	.align 2
.globl _ZN8t_editorC1EP7t_pgrid
	.type	_ZN8t_editorC1EP7t_pgrid, @function
_ZN8t_editorC1EP7t_pgrid:
.LFB1478:
	pushl	%ebp
.LCFI345:
	movl	%esp, %ebp
.LCFI346:
	pushl	%ebx
.LCFI347:
	subl	$68, %esp
.LCFI348:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN13input_handlerC2Ev
	movl	$_ZTV8t_editor+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	leal	-5(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolEC1Ev
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-5(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_
	leal	-5(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolED1Ev
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	8(%ebp), %eax
	movb	$1, 4(%eax)
	movl	8(%ebp), %eax
	movb	$1, 5(%eax)
	movl	8(%ebp), %eax
	movb	$1, 6(%eax)
	movl	$56, (%esp)
.LEHB9:
	call	_Znwj
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN19t_tool_addparticlesC1EP8t_editor
	movl	%ebx, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	movl	$48, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN25t_tool_paintgrid_spraycanC1EP8t_editor
	movl	%ebx, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	movl	$40, (%esp)
	call	_Znwj
.LEHE9:
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
.LEHB10:
	call	_ZN11t_tool_pushC1EP8t_editor
.LEHE10:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LEHB11:
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	jmp	.L424
.L432:
	movl	%eax, -48(%ebp)
.L425:
	movl	-48(%ebp), %ebx
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, -48(%ebp)
	jmp	.L428
.L424:
	movl	$36, (%esp)
	call	_Znwj
.LEHE11:
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB12:
	call	_ZN11t_tool_dragC1EP8t_editor
.LEHE12:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LEHB13:
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
.LEHE13:
	jmp	.L426
.L431:
	movl	%eax, -48(%ebp)
.L427:
	movl	-48(%ebp), %ebx
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, -48(%ebp)
	jmp	.L428
.L426:
	movl	8(%ebp), %eax
	movl	$3, 20(%eax)
	jmp	.L430
.L433:
	movl	%eax, -48(%ebp)
.L428:
	movl	-48(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
	movl	%ebx, -48(%ebp)
.L434:
.L429:
	movl	-48(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN13input_handlerD2Ev
	movl	%ebx, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L430:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1478:
	.size	_ZN8t_editorC1EP7t_pgrid, .-_ZN8t_editorC1EP7t_pgrid
	.section	.gcc_except_table
.LLSDA1478:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1478-.LLSDACSB1478
.LLSDACSB1478:
	.uleb128 .LEHB9-.LFB1478
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L433-.LFB1478
	.uleb128 0x0
	.uleb128 .LEHB10-.LFB1478
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L432-.LFB1478
	.uleb128 0x0
	.uleb128 .LEHB11-.LFB1478
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L433-.LFB1478
	.uleb128 0x0
	.uleb128 .LEHB12-.LFB1478
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L431-.LFB1478
	.uleb128 0x0
	.uleb128 .LEHB13-.LFB1478
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L433-.LFB1478
	.uleb128 0x0
	.uleb128 .LEHB14-.LFB1478
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1478:
	.text
	.align 2
.globl _ZN8t_editorC2EP7t_pgrid
	.type	_ZN8t_editorC2EP7t_pgrid, @function
_ZN8t_editorC2EP7t_pgrid:
.LFB1477:
	pushl	%ebp
.LCFI349:
	movl	%esp, %ebp
.LCFI350:
	pushl	%ebx
.LCFI351:
	subl	$68, %esp
.LCFI352:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN13input_handlerC2Ev
	movl	$_ZTV8t_editor+8, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	leal	-5(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolEC1Ev
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-5(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EEC1ERKS2_
	leal	-5(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIP12t_editortoolED1Ev
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	8(%ebp), %eax
	movb	$1, 4(%eax)
	movl	8(%ebp), %eax
	movb	$1, 5(%eax)
	movl	8(%ebp), %eax
	movb	$1, 6(%eax)
	movl	$56, (%esp)
.LEHB15:
	call	_Znwj
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN19t_tool_addparticlesC1EP8t_editor
	movl	%ebx, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	movl	$48, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN25t_tool_paintgrid_spraycanC1EP8t_editor
	movl	%ebx, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	movl	$40, (%esp)
	call	_Znwj
.LEHE15:
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
.LEHB16:
	call	_ZN11t_tool_pushC1EP8t_editor
.LEHE16:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LEHB17:
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
	jmp	.L436
.L444:
	movl	%eax, -48(%ebp)
.L437:
	movl	-48(%ebp), %ebx
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, -48(%ebp)
	jmp	.L440
.L436:
	movl	$36, (%esp)
	call	_Znwj
.LEHE17:
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB18:
	call	_ZN11t_tool_dragC1EP8t_editor
.LEHE18:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %edx
	addl	$8, %edx
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LEHB19:
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EE9push_backERKS1_
.LEHE19:
	jmp	.L438
.L443:
	movl	%eax, -48(%ebp)
.L439:
	movl	-48(%ebp), %ebx
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, -48(%ebp)
	jmp	.L440
.L438:
	movl	8(%ebp), %eax
	movl	$3, 20(%eax)
	jmp	.L442
.L445:
	movl	%eax, -48(%ebp)
.L440:
	movl	-48(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZNSt6vectorIP12t_editortoolSaIS1_EED1Ev
	movl	%ebx, -48(%ebp)
.L446:
.L441:
	movl	-48(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN13input_handlerD2Ev
	movl	%ebx, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
.LEHB20:
	call	_Unwind_Resume
.LEHE20:
.L442:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE1477:
	.size	_ZN8t_editorC2EP7t_pgrid, .-_ZN8t_editorC2EP7t_pgrid
	.section	.gcc_except_table
.LLSDA1477:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1477-.LLSDACSB1477
.LLSDACSB1477:
	.uleb128 .LEHB15-.LFB1477
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L445-.LFB1477
	.uleb128 0x0
	.uleb128 .LEHB16-.LFB1477
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L444-.LFB1477
	.uleb128 0x0
	.uleb128 .LEHB17-.LFB1477
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L445-.LFB1477
	.uleb128 0x0
	.uleb128 .LEHB18-.LFB1477
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L443-.LFB1477
	.uleb128 0x0
	.uleb128 .LEHB19-.LFB1477
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L445-.LFB1477
	.uleb128 0x0
	.uleb128 .LEHB20-.LFB1477
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1477:
	.text
.globl asdf
	.data
	.align 4
	.type	asdf, @object
	.size	asdf, 4
asdf:
	.long	1000
	.weak	_ZTV8t_editor
	.section	.rodata._ZTV8t_editor,"aG",@progbits,_ZTV8t_editor,comdat
	.align 8
	.type	_ZTV8t_editor, @object
	.size	_ZTV8t_editor, 28
_ZTV8t_editor:
	.long	0
	.long	_ZTI8t_editor
	.long	_ZN8t_editorD1Ev
	.long	_ZN8t_editorD0Ev
	.long	_ZN8t_editor14keyboard_eventER17SDL_KeyboardEvent
	.long	_ZN8t_editor18mouse_motion_eventER20SDL_MouseMotionEvent
	.long	_ZN8t_editor18mouse_button_eventER20SDL_MouseButtonEvent
	.weak	_ZTI8t_editor
	.section	.rodata._ZTI8t_editor,"aG",@progbits,_ZTI8t_editor,comdat
	.align 4
	.type	_ZTI8t_editor, @object
	.size	_ZTI8t_editor, 12
_ZTI8t_editor:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS8t_editor
	.long	_ZTI13input_handler
	.weak	_ZTS8t_editor
	.section	.rodata._ZTS8t_editor,"aG",@progbits,_ZTS8t_editor,comdat
	.type	_ZTS8t_editor, @object
	.size	_ZTS8t_editor, 10
_ZTS8t_editor:
	.string	"8t_editor"
	.weak	_ZTI13input_handler
	.section	.rodata._ZTI13input_handler,"aG",@progbits,_ZTI13input_handler,comdat
	.align 4
	.type	_ZTI13input_handler, @object
	.size	_ZTI13input_handler, 8
_ZTI13input_handler:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS13input_handler
	.weak	_ZTS13input_handler
	.section	.rodata._ZTS13input_handler,"aG",@progbits,_ZTS13input_handler,comdat
	.type	_ZTS13input_handler, @object
	.size	_ZTS13input_handler, 16
_ZTS13input_handler:
	.string	"13input_handler"
	.weak	_ZTV11t_blobbrush
	.section	.rodata._ZTV11t_blobbrush,"aG",@progbits,_ZTV11t_blobbrush,comdat
	.align 8
	.type	_ZTV11t_blobbrush, @object
	.size	_ZTV11t_blobbrush, 20
_ZTV11t_blobbrush:
	.long	0
	.long	_ZTI11t_blobbrush
	.long	_ZN11t_blobbrushD1Ev
	.long	_ZN11t_blobbrushD0Ev
	.long	_ZN11t_blobbrush6resizeEii
	.weak	_ZTI11t_blobbrush
	.section	.rodata._ZTI11t_blobbrush,"aG",@progbits,_ZTI11t_blobbrush,comdat
	.align 4
	.type	_ZTI11t_blobbrush, @object
	.size	_ZTI11t_blobbrush, 12
_ZTI11t_blobbrush:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS11t_blobbrush
	.long	_ZTI7t_brush
	.weak	_ZTS11t_blobbrush
	.section	.rodata._ZTS11t_blobbrush,"aG",@progbits,_ZTS11t_blobbrush,comdat
	.type	_ZTS11t_blobbrush, @object
	.size	_ZTS11t_blobbrush, 14
_ZTS11t_blobbrush:
	.string	"11t_blobbrush"
	.weak	_ZTI7t_brush
	.section	.rodata._ZTI7t_brush,"aG",@progbits,_ZTI7t_brush,comdat
	.align 4
	.type	_ZTI7t_brush, @object
	.size	_ZTI7t_brush, 8
_ZTI7t_brush:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS7t_brush
	.weak	_ZTS7t_brush
	.section	.rodata._ZTS7t_brush,"aG",@progbits,_ZTS7t_brush,comdat
	.type	_ZTS7t_brush, @object
	.size	_ZTS7t_brush, 9
_ZTS7t_brush:
	.string	"7t_brush"
	.weak	_ZTV7t_brush
	.section	.rodata._ZTV7t_brush,"aG",@progbits,_ZTV7t_brush,comdat
	.align 8
	.type	_ZTV7t_brush, @object
	.size	_ZTV7t_brush, 20
_ZTV7t_brush:
	.long	0
	.long	_ZTI7t_brush
	.long	_ZN7t_brushD1Ev
	.long	_ZN7t_brushD0Ev
	.long	__cxa_pure_virtual
	.weak	_ZTV13input_handler
	.section	.rodata._ZTV13input_handler,"aG",@progbits,_ZTV13input_handler,comdat
	.align 8
	.type	_ZTV13input_handler, @object
	.size	_ZTV13input_handler, 28
_ZTV13input_handler:
	.long	0
	.long	_ZTI13input_handler
	.long	_ZN13input_handlerD1Ev
	.long	_ZN13input_handlerD0Ev
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.weak	_ZTV25t_tool_paintgrid_spraycan
	.section	.rodata._ZTV25t_tool_paintgrid_spraycan,"aG",@progbits,_ZTV25t_tool_paintgrid_spraycan,comdat
	.align 32
	.type	_ZTV25t_tool_paintgrid_spraycan, @object
	.size	_ZTV25t_tool_paintgrid_spraycan, 36
_ZTV25t_tool_paintgrid_spraycan:
	.long	0
	.long	_ZTI25t_tool_paintgrid_spraycan
	.long	_ZN25t_tool_paintgrid_spraycanD1Ev
	.long	_ZN25t_tool_paintgrid_spraycanD0Ev
	.long	_ZN12t_editortool14keyboard_eventER17SDL_KeyboardEvent
	.long	_ZN12t_editortool18mouse_motion_eventER20SDL_MouseMotionEvent
	.long	_ZN12t_editortool18mouse_button_eventER20SDL_MouseButtonEvent
	.long	_ZN25t_tool_paintgrid_spraycan9phys_tickEf
	.long	_ZN12t_editortool8drawhintEv
	.weak	_ZTI25t_tool_paintgrid_spraycan
	.section	.rodata._ZTI25t_tool_paintgrid_spraycan,"aG",@progbits,_ZTI25t_tool_paintgrid_spraycan,comdat
	.align 4
	.type	_ZTI25t_tool_paintgrid_spraycan, @object
	.size	_ZTI25t_tool_paintgrid_spraycan, 12
_ZTI25t_tool_paintgrid_spraycan:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS25t_tool_paintgrid_spraycan
	.long	_ZTI12t_editortool
	.weak	_ZTS25t_tool_paintgrid_spraycan
	.section	.rodata._ZTS25t_tool_paintgrid_spraycan,"aG",@progbits,_ZTS25t_tool_paintgrid_spraycan,comdat
	.type	_ZTS25t_tool_paintgrid_spraycan, @object
	.size	_ZTS25t_tool_paintgrid_spraycan, 28
_ZTS25t_tool_paintgrid_spraycan:
	.string	"25t_tool_paintgrid_spraycan"
	.weak	_ZZN6t_grid16getpoint_editingEiiE5dummy
	.section	.bss._ZZN6t_grid16getpoint_editingEiiE5dummy,"awG",@nobits,_ZZN6t_grid16getpoint_editingEiiE5dummy,comdat
	.align 32
	.type	_ZZN6t_grid16getpoint_editingEiiE5dummy, @object
	.size	_ZZN6t_grid16getpoint_editingEiiE5dummy, 32
_ZZN6t_grid16getpoint_editingEiiE5dummy:
	.zero	32
	.weakref	_Z20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_Z27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_Z27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_Z22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_Z22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_Z26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_Z29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_Z28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_Z26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_Z26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_Z26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_Z30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_Z33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_Z33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	"zPL"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.uleb128 0x6
	.byte	0x0
	.long	__gxx_personality_v0
	.byte	0x0
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE1:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.long	.LFB1401
	.long	.LFE1401-.LFB1401
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI121-.LFB1401
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.long	.LFB1402
	.long	.LFE1402-.LFB1402
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI124-.LFB1402
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE95:
.LSFDE145:
	.long	.LEFDE145-.LASFDE145
.LASFDE145:
	.long	.LASFDE145-.Lframe1
	.long	.LFB1499
	.long	.LFE1499-.LFB1499
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI196-.LFB1499
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE145:
.LSFDE147:
	.long	.LEFDE147-.LASFDE147
.LASFDE147:
	.long	.LASFDE147-.Lframe1
	.long	.LFB1498
	.long	.LFE1498-.LFB1498
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI199-.LFB1498
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE147:
.LSFDE169:
	.long	.LEFDE169-.LASFDE169
.LASFDE169:
	.long	.LASFDE169-.Lframe1
	.long	.LFB1396
	.long	.LFE1396-.LFB1396
	.uleb128 0x4
	.long	.LLSDA1396
	.byte	0x4
	.long	.LCFI232-.LFB1396
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI235-.LCFI233
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE169:
.LSFDE171:
	.long	.LEFDE171-.LASFDE171
.LASFDE171:
	.long	.LASFDE171-.Lframe1
	.long	.LFB1395
	.long	.LFE1395-.LFB1395
	.uleb128 0x4
	.long	.LLSDA1395
	.byte	0x4
	.long	.LCFI236-.LFB1395
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI239-.LCFI237
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE171:
.LSFDE183:
	.long	.LEFDE183-.LASFDE183
.LASFDE183:
	.long	.LASFDE183-.Lframe1
	.long	.LFB1384
	.long	.LFE1384-.LFB1384
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI255-.LFB1384
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI256-.LCFI255
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE183:
.LSFDE185:
	.long	.LEFDE185-.LASFDE185
.LASFDE185:
	.long	.LASFDE185-.Lframe1
	.long	.LFB1387
	.long	.LFE1387-.LFB1387
	.uleb128 0x4
	.long	.LLSDA1387
	.byte	0x4
	.long	.LCFI258-.LFB1387
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI261-.LCFI259
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE185:
.LSFDE187:
	.long	.LEFDE187-.LASFDE187
.LASFDE187:
	.long	.LASFDE187-.Lframe1
	.long	.LFB1397
	.long	.LFE1397-.LFB1397
	.uleb128 0x4
	.long	.LLSDA1397
	.byte	0x4
	.long	.LCFI262-.LFB1397
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI263-.LCFI262
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI265-.LCFI263
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE187:
.LSFDE189:
	.long	.LEFDE189-.LASFDE189
.LASFDE189:
	.long	.LASFDE189-.Lframe1
	.long	.LFB1400
	.long	.LFE1400-.LFB1400
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI266-.LFB1400
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI270-.LCFI267
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE189:
.LSFDE191:
	.long	.LEFDE191-.LASFDE191
.LASFDE191:
	.long	.LASFDE191-.Lframe1
	.long	.LFB1389
	.long	.LFE1389-.LFB1389
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI271-.LFB1389
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE191:
.LSFDE197:
	.long	.LEFDE197-.LASFDE197
.LASFDE197:
	.long	.LASFDE197-.Lframe1
	.long	.LFB1462
	.long	.LFE1462-.LFB1462
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI281-.LFB1462
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI282-.LCFI281
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI286-.LCFI282
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE197:
.LSFDE221:
	.long	.LEFDE221-.LASFDE221
.LASFDE221:
	.long	.LASFDE221-.Lframe1
	.long	.LFB1752
	.long	.LFE1752-.LFB1752
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI332-.LFB1752
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI333-.LCFI332
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE221:
.LSFDE223:
	.long	.LEFDE223-.LASFDE223
.LASFDE223:
	.long	.LASFDE223-.Lframe1
	.long	.LFB1721
	.long	.LFE1721-.LFB1721
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI335-.LFB1721
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI336-.LCFI335
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE223:
.LSFDE225:
	.long	.LEFDE225-.LASFDE225
.LASFDE225:
	.long	.LASFDE225-.Lframe1
	.long	.LFB1656
	.long	.LFE1656-.LFB1656
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI338-.LFB1656
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI339-.LCFI338
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI341-.LCFI339
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE225:
.LSFDE227:
	.long	.LEFDE227-.LASFDE227
.LASFDE227:
	.long	.LASFDE227-.Lframe1
	.long	.LFB1554
	.long	.LFE1554-.LFB1554
	.uleb128 0x4
	.long	0x0
	.byte	0x4
	.long	.LCFI342-.LFB1554
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI343-.LCFI342
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE227:
.LSFDE229:
	.long	.LEFDE229-.LASFDE229
.LASFDE229:
	.long	.LASFDE229-.Lframe1
	.long	.LFB1478
	.long	.LFE1478-.LFB1478
	.uleb128 0x4
	.long	.LLSDA1478
	.byte	0x4
	.long	.LCFI345-.LFB1478
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI346-.LCFI345
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI348-.LCFI346
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE229:
.LSFDE231:
	.long	.LEFDE231-.LASFDE231
.LASFDE231:
	.long	.LASFDE231-.Lframe1
	.long	.LFB1477
	.long	.LFE1477-.LFB1477
	.uleb128 0x4
	.long	.LLSDA1477
	.byte	0x4
	.long	.LCFI349-.LFB1477
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI350-.LCFI349
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI352-.LCFI350
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE231:
	.ident	"GCC: (GNU) 4.1.3 20070929 (prerelease) (Ubuntu 4.1.2-16ubuntu2)"
	.section	.note.GNU-stack,"",@progbits
