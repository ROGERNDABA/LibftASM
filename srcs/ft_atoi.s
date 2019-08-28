
;----------------------------;
; ft_atoi.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_atoi
global	ft_atoi

section .text

_ft_atoi:
ft_atoi:
	mov		rax, 0
	mov		r10, 1

ft_atoi_ws:
	movzx	rsi, byte[rdi]
	inc		rdi
	cmp		rsi, 0x20
	je		ft_atoi_ws
	cmp		rsi, 0x09
	je		ft_atoi_ws
	cmp		rsi, 0x0d
	je		ft_atoi_ws
	cmp		rsi, 0x0b
	je		ft_atoi_ws
	cmp		rsi, 0x0c
	je		ft_atoi_ws
	cmp		rsi, 0x2d
	je		negative
	cmp		rsi, 0x2b
	je		positive
	jmp		convert

negative:
	mov		r10, -1
	movzx	rsi, byte [rdi]
	inc		rdi
	jmp		convert

positive:
	movzx	rsi, byte [rdi]
	inc		rdi
	jmp		convert

convert:
	cmp		rsi, 0x0
	je		end
	cmp		rsi, 0x30
	jl		end
	cmp		rsi, 0x39
	jg		end
	sub		rsi, 0x30
	imul	rax, 10
	add		rax, rsi
	movzx	rsi, byte [rdi]
	inc		rdi
	jmp		convert

error:
	imul	rsi, r10
	mov		rax, rsi

end:
	imul	rax, r10
	ret
