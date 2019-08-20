;----------------------------;
; ft_tolower.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_tolower

extern _ft_isalpha

section .text

_ft_tolower:
	call	_ft_isalpha
	cmp		rax, 0x1
	je		change_case
	mov		rax, rdi
	ret

change_case:
	cmp		rdi, 0x5B
	jl		end
	mov		rax, rdi
	ret

end:
	mov		rax, rdi
	add		rax, 0x20
	ret
