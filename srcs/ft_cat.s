;----------------------------;
; ft_cat.s
; Created By : Roger Ndaba
;----------------------------;

%define	STDOUT 1
%define	MAXLINE 4096
%define SYS_READ 0x2000003
%define SYS_WRITE 0x2000004

global	_ft_cat
global	ft_cat

section	.text

_ft_cat:
ft_cat:
	cmp		rdi, 0
	jl		end
	mov		r8, rdi

read_file:
	mov		rdi, r8
	lea		rsi, [rel buff]
	mov		rdx, MAXLINE
	mov		rax, SYS_READ
	syscall
	jc		end

	cmp		rax, 0
	jle		end
	mov		r10, rax
	cmp		rsi, 0
	je		end

	lea		rdi, [rsi]
	mov		rdi, STDOUT
	mov		rdx, r10
	mov		rax, SYS_WRITE
	syscall

	cmp		r10, 0
	jne		read_file
	jmp		end

end:
	ret

section	.bss
	buff resb MAXLINE
