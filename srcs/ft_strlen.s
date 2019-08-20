;----------------------------;
; ft_strlen.asm
; Created By : Roger Ndaba
;----------------------------;

global _ft_strlen

section .text

_ft_strlen:

	push	rbx
	push	rcx
	mov		rbx, rdi
	xor		al, al
	mov		rcx, 0xffffffff
	repne	scasb
	sub		rdi, rbx
	mov		rax, rdi
	sub		rax, 1
	pop		rcx
	pop		rbx
	ret
