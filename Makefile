# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Roger Ndaba <rogerndaba@gmail.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/07 14:30:45 by Roger Ndaba       #+#    #+#              #
#    Updated: 2019/08/20 10:13:33 by Roger Ndaba      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

CC_NASM = nasm

FLAGS_NASM = -fmacho64

ASM_FILES = ft_strlen.s ft_bzero.s ft_strcat.s ft_isalpha.s ft_isdigit.s ft_puts.s\
		ft_isalnum.s ft_isascii.s ft_isprint.s ft_toupper.s ft_tolower.s \
		ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s

SRC = $(addprefix srcs/, $(ASM_FILES))

OBJ = 	$(addprefix obj/, $(ASM_FILES:.s=.o))

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@ranlib $(NAME)
	@printf "\n\e[1;33m----------------------------------------\n\e[0m"
	@printf "\n🌸 \e[1;32m [ ✔ ] Libft library made\n\e[0m\n"

clean:
	@rm -rf obj
	@printf "\n🌸 \e[1;31m [ ✔ ] Object files removed\n\e[0m\n"

fclean: clean
	@rm -rf $(NAME)
	@printf "🌸 \e[1;33m [ ✔ ] libft library removed\n\e[0m\n"

re: fclean all

obj:
	@mkdir obj/

obj/%.o: srcs/%.s obj
	@printf "\n\e[1;33m----------------------------------------\n|"
	@$(CC_NASM) $(FLAGS_NASM) $< -o $@
	@printf "\e[38;5;57m %-28s \e[1;33m|\e[0m" $<
	@printf " \e[48;5;201m\e[40m  \e[32m✔  \e[0m \e[1;33m|\e[0m  "
	$(BUILD)
.PHONY: all, clean, fclean, re