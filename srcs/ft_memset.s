;----------------------------;
; ft_memset.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_memset

section .text

_ft_memset:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi
	mov		rcx, rdx
	cmp		rcx, 0
	jle		end
	cmp		rdi, 0
	je		end
	mov		rax, rsi
	cld
	rep		stosb

end:
	mov		rax, rbx
	mov		rsp, rbp
	pop		rbp
	ret
