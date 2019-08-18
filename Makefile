# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Roger Ndaba <rogerndaba@gmil.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/07 14:30:45 by Roger Ndaba       #+#    #+#              #
#    Updated: 2019/08/18 19:16:24 by Roger Ndaba      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

ASM = ft_strlen.s ft_bzero.s ft_strcat.s ft_isalpha.s ft_isdigit.s ft_puts.s\
		ft_isalnum.s ft_isascii.s ft_isprint.s ft_toupper.s ft_tolower.s \
		ft_memset.s

OBJ = ft_strlen.o ft_bzero.o ft_strcat.o ft_isalpha.o ft_isdigit.o ft_puts.o\
		ft_isalnum.o ft_isascii.o ft_isprint.o ft_toupper.o ft_tolower.o \
		ft_memset.o

CC = gcc

CC_NASM = nasm

FLAGS_NASM = -fmacho64


all: $(NAME)

$(NAME):
	$(CC_NASM) $(FLAGS_NASM) $(ASM)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -fr $(OBJ)

fclean : clean
	rm -fr $(NAME)

re: fclean all
