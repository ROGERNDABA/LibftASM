
;----------------------------;
; ft_numlen.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_numlen

section .text

_ft_numlen:
		mov rax, 123
		mov rbx, 10
		xor rcx, rcx

jpl :
		cdq
		idiv rbx
		inc rcx
		test rax, rax
		jne jpl
		mov rax, rcx
