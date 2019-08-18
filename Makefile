# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Roger Ndaba <rogerndaba@gmil.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/07 14:30:45 by Roger Ndaba       #+#    #+#              #
#    Updated: 2019/08/18 15:34:20 by Roger Ndaba      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

ASM = ft_strlen.s ft_bzero.s ft_strcat.s ft_isalpha.s

OBJ = ft_strlen.o ft_bzero.o ft_strcat.o ft_isalpha.o

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
