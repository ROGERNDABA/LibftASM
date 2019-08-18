;----------------------------;
; ft_isascii.s
; Created By : Roger Ndaba
;----------------------------;

global ft_isascii

section .text

ft_isascii:
	cmp		rdi, 0x0
	jge		isascii
	mov		rax, 0x0
	ret

isascii:
	cmp		rdi, 0x80
	jl		end
	mov		rax, 0x0
	ret

end:
	mov		rax, 0x1
	ret
