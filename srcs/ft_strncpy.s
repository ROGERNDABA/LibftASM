
;----------------------------;
; ft_strncpy.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_strncpy
global	ft_strncpy

section .text

_ft_strncpy:
ft_strncpy:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx

ncpy_loop:
	cmp		BYTE [rsi + rcx], 0
	je		end
	cmp		rcx, rdx
	je		end
	mov		al, [rsi + rcx]
	mov		[rdi + rcx], al
	inc		rcx
	jmp		ncpy_loop

end:
	mov		BYTE [rdi + rcx], 0
	mov		rax, rdi
	mov		rsp, rbp
	pop		rbp
	ret
