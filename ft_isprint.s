;----------------------------;
; ft_isprint.s
; Created By : Roger Ndaba
;----------------------------;

global ft_isprint

section .text

ft_isprint:
	cmp		rdi, 0x20
	jl		non_printable
	cmp		rdi, 0x7E
	jg		non_printable
	mov		rax, 0x1
	ret

non_printable:
	mov		rax, 0x0
	ret
