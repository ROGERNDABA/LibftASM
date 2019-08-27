
;----------------------------;
; ft_cat.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_atoi

section .text

_ft_atoi:
	movzx	rsi, byte[rdi]
	inc		rdi
	cmp		rsi, 0x20
	je		_ft_atoi
	cmp		rsi, 0x9
	je		_ft_atoi
	cmp		rsi, 0x0d
	je		_ft_atoi
	cmp		rsi, 0x0b
	je		_ft_atoi
	cmp		rsi, 0x0c
	je		_ft_atoi
	jmp		convert

convert:
	mov		rax, rsi
	ret
; 	movzx	rsi, byte [rdi]
; 	test	rsi, rsi
; 	je		end
; 	cmp		rsi, 0x30
; 	jl		whitespace
; 	cmp		rsi, 0x39
; 	jg		error
; 	sub		rsi, 0x30
; 	imul	rax, 10
; 	add		rax, rsi
; 	inc		rdi
; 	jmp		convert

; whitespace:


; error:
; 	mov		rax, -1

; end:
; 	ret
