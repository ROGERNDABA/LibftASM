;----------------------------;
; ft_bzero.s
; Created By : Roger Ndaba
;----------------------------;

global ft_bzero

section .text
 ft_bzero:
	cmp rsi, 0
	je end
	mov byte[rdi], 0
	inc rdi
	dec rsi
	jmp ft_bzero

end:
	ret


