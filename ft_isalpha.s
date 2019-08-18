;----------------------------;
; ft_isalpha.s
; Created By : Roger Ndaba
;----------------------------;

global ft_isalpha

section .text

ft_isalpha:
	cmp		rdi, 0x40
	jg		upper_check
	cmp		rdi, 0x60
	jg		lower_check
	jmp		end

upper_check:
	cmp		rdi, 0x5B
	jl		is_alpha
	jmp		end


lower_check:
	cmp		rdi, 0x7B
	jl		is_alpha
	jmp		end

is_alpha:
	mov		rax, 0x1
	ret

end:
	mov		rax, 0x0
	ret
