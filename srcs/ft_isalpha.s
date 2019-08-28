;----------------------------;
; ft_isalpha.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_isalpha
global ft_isalpha

section .text

_ft_isalpha:
ft_isalpha:
	cmp		rdi, 0x40
	jg		upper_check
	cmp		rdi, 0x60
	jg		lower_check
	mov		rax, 0x0
	ret


upper_check:
	cmp		rdi, 0x5b
	jl		is_alpha
	cmp		rdi, 0x60
	jg		lower_check
	mov		rax, 0x0
	ret


lower_check:
	cmp		rdi, 0x7b
	jl		is_alpha
	mov		rax, 0x0
	ret

is_alpha:
	mov		rax, 0x1
	ret
