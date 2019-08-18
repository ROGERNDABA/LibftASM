;----------------------------;
; ft_isalnum.s
; Created By : Roger Ndaba
;----------------------------;

global ft_isalnum

extern	ft_isdigit
extern	ft_isalpha


ft_isalnum:
	call	ft_isdigit
	cmp		rax, 0x1
	je		end
	call	ft_isalpha
	cmp		rax, 0x1
	je		end
	mov		rax, 0x0
	ret

end:
	ret

