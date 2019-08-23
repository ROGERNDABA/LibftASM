
;----------------------------;
; ft_cat.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_atoi

section .text

_ft_atoi:
	mov		rax, 0

convert:
	movzx	rsi, byte [rdi]
	test	rsi, rsi
	je		end
	cmp		rsi, 0x30
	jl		error
	cmp		rsi, 0x39
	jg		error
	sub		rsi, 0x30
	imul	rax, 10
	add		rax, rsi
	inc		rdi
	jmp		convert

error:
	mov		rax, -1

end:
	ret
