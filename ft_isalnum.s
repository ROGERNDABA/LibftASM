;----------------------------;
; ft_isalnum.s
; Created By : Roger Ndaba
;----------------------------;

global ft_isalnum

extern	ft_isdigit
extern	ft_isalpha


ft_isalnum:
	call ft_isalpha
	call ft_isdigit
