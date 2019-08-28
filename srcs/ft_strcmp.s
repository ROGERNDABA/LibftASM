
;----------------------------;
; ft_strcmp.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_strcmp
global	ft_strcmp

section .text

_ft_strcmp:
ft_strcmp:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx

cmp_loop:
	mov		al, [rdi + rcx]
	mov		r8b, [rsi + rcx]
	cmp		al, 0
	je		end
	cmp		r8b, 0
	je		end
	cmp		al, r8b
	jne		end
	inc		rcx
	jmp		cmp_loop

end:
	sub		al, r8b
	movsx	rax, al
	mov		rsp, rbp
	pop		rbp
	ret
