	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$3, 12(%esp)
	cmpl	$1, 12(%esp)
	jg	L2
	movl	12(%esp), %eax
	jmp	L3
L2:
	movl	$2, %eax
L3:
	leave
	ret
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
