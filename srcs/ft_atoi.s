
;----------------------------;
; ft_cat.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_atoi

section .text

_ft_atoi:
	mov		rax, 0

ft_atoi:
	movzx	rsi, byte[rdi]
	inc		rdi
	cmp		rsi, 0x20
	je		ft_atoi
	cmp		rsi, 0x09
	je		ft_atoi
	cmp		rsi, 0x0d
	je		ft_atoi
	cmp		rsi, 0x0b
	je		ft_atoi
	cmp		rsi, 0x0c
	je		ft_atoi
	jmp		convert

convert:
	cmp		rsi, 0x0
	je		end
	cmp		rsi, 0x30
	jl		error
	cmp		rsi, 0x39
	jg		error
	sub		rsi, 0x30
	imul	rax, 10
	add		rax, rsi
	inc		rdi
	movzx	rsi, byte [rdi]
	jmp		convert

error:
	mov		rax, -1

end:
	ret
