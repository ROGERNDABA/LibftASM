;----------------------------;
; ft_isdigit.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_isdigit
global ft_isdigit

section .text

_ft_isdigit:
ft_isdigit:
	cmp		rdi, 0x2F
	jg		digit_check
	jmp		end

digit_check:
	cmp		rdi, 0x3A
	jl		isdigit
	jmp		end

isdigit:
	mov		rax, 0x1
	ret

end:
	mov		rax, 0x0
	ret
