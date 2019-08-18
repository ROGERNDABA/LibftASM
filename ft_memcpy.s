;----------------------------;
; ft_memcpy.s
; Created By : Roger Ndaba
;----------------------------;

global ft_memcpy

section .text

ft_memcpy:
	push	rbp
	mov		rbp, rsp
	mov		r10, rdi
	mov		rcx, rdx
	cmp		rcx, 0
	jle		end
	cmp		r10, 0
	je		end
	cmp		rsi, 0
	je		end
	cld
	rep		movsb

end:
	mov		rax, r10
	mov		rsp, rbp
	pop		rbp
	ret
