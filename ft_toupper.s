;----------------------------;
; ft_toupper.s
; Created By : Roger Ndaba
;----------------------------;

global ft_toupper

extern	ft_isalpha

section .text

ft_toupper:
	call	ft_isalpha
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
