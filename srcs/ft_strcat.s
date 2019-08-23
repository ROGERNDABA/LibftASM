;----------------------------;
; ft_strcat.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_strcat

section .text

_ft_strcat:
	push	rbp
	mov		rbp, rsp
	push	rdi
	push	rsi

cat_loop:
	cmp		byte[rdi], 0
	jz		copy
	inc		rdi
	jmp		cat_loop

copy:
	mov		ah, [rsi]
	mov		[rdi], ah
	inc		rdi
	inc		rsi
	cmp		ah, 0
	jne		copy
end:
	pop		rsi
	pop		rdi
	mov		rsp, rbp
	pop		rbp
	mov		rax, rdi
	ret
