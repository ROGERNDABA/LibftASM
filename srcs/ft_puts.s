;----------------------------;
; ft_puts.s
; Created By : Roger Ndaba
;----------------------------;

%define SYS_WRITE 0x2000004
%define STDOUT 1

global _ft_puts

extern _ft_strlen

section .data
	newline db 0xa
	msg: db "(null)", 0xa
	.len: equ $ - msg

section .text

_ft_puts:
	cmp		rdi, 0x0
	je		end
	push	rdi
	call	_ft_strlen
	mov		rdi, 0x1
	pop		rsi
	mov		rdx, rax
	mov		rax, SYS_WRITE
	syscall
	mov		rax, SYS_WRITE
	mov		rdi, STDOUT
	lea		rsi, [rel newline]
	mov		rdx, 0x1
	syscall
	mov		rax, 0x1
	ret

end:
	mov     rax, SYS_WRITE
	push rdi
    mov     rdi, STDOUT
    lea     rsi, [rel msg]
    mov     rdx, msg.len
    syscall
	mov		rax, 0x1
	pop rdi
	ret
