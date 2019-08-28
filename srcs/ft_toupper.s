;----------------------------;
; ft_toupper.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_toupper
global ft_toupper

extern _ft_isalpha

section .text

_ft_toupper:
ft_toupper:
	call	_ft_isalpha
	cmp		rax, 0x1
	je		change_case
	mov		rax, rdi
	ret

change_case:
	cmp		rdi, 0x60
	jg		end
	mov		rax, rdi
	ret

end:
	mov		rax, rdi
	sub		rax, 0x20
	ret
