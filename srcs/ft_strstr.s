;----------------------------;
; ft_strstr.asm
; Created By : Roger Ndaba
;----------------------------;

global _ft_strstr
global ft_strstr

section .text

_ft_strstr:
ft_strstr:
	push	rbp
	mov		rbp, rsp
	jmp		reset_count

start:
	cmp		al, 0
	je		fail
	inc		rdi

reset_count:
	mov		al, [rdi]
	mov		al, [rsi]
	xor		rcx, rcx

loop:
	mov		al, [rdi + rcx]
	mov		r8b, [rsi + rcx]
	cmp		r8b, 0
	jz		win
	cmp		al, r8b
	jne		start
	inc		rcx
	jmp		loop

win:
	mov		rax, rdi
	jmp		end

fail:
	xor		rax, rax

end:
	mov		rsp, rbp
	pop		rbp
	ret
