;----------------------------;
; ft_strdup.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_strdup

extern	_ft_strlen
extern	_malloc
extern	_ft_memcpy


section .text

ALIGN 16
_ft_strdup:
	push	rbp
	mov		rbp, rsp
	push	rdi
	call	_ft_strlen
	inc		rax
	push	rax
	mov		rdi ,rax
	call	_malloc
	and		rax, rax
	jz		end
	mov		rdi, rax
	pop		rdx
	pop		rsi
	call	_ft_memcpy

end:
	mov		rsp, rbp
	pop		rbp
	ret
