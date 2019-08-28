
;----------------------------;
; ft_strcpy.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_strcpy
global	ft_strcpy

section .text

_ft_strcpy:
ft_strcpy:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx

cpy_loop:
	cmp		BYTE [rsi + rcx], 0
	je		end
	mov		al, [rsi + rcx]
	mov		[rdi + rcx], al
	inc		rcx
	jmp		cpy_loop

end:
	mov		BYTE [rdi + rcx], 0
	mov		rax, rdi
	mov		rsp, rbp
	pop		rbp
	ret
