;----------------------------;
; ft_isalnum.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_isalnum

extern _ft_isdigit
extern _ft_isalpha

section	.text

_ft_isalnum:
	call	_ft_isdigit
	cmp		rax, 0x1
	je		end
	call	_ft_isalpha
	cmp		rax, 0x1
	je		end
	mov		rax, 0x0
	ret

end:
	ret

