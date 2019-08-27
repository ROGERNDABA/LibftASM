
;----------------------------;
; ft_numlen.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_numlen

section .text

_ft_numlen:
		mov rax, rdi
		mov rbx, 10
		xor rcx, rcx
		cmp	rax, 0
		jl	negs
		jmp		jpl

negs:
	imul	rax, -1
	inc		rcx
	jmp		jpl

jpl:
		idiv rbx
		inc rcx
		test rax, rax
		jne jpl
		mov rax, rcx
		ret
