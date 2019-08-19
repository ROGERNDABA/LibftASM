;----------------------------;
; ft_cat.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_cat

section .text

_ft_cat:
	pop		rcx
	pop		rdi
	inc		edx
	; jmp loopend