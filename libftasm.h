/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rmdaba <rogerndaba@gmail.com>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/08/20 12:14:45 by Roger Ndaba       #+#    #+#             */
/*   Updated: 2019/08/28 12:25:48 by rmdaba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
#define LIBFTASM_H

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <ctype.h>

#define RED "\033[0;31m"
#define BRED "\033[1;31m"
#define GREEN "\033[0;32m"
#define BGREEN "\033[1;32m"
#define YELLOW "\033[0;33m"
#define BYELLOW "\033[01;33m"
#define BLUE "\033[0;34m"
#define BBLUE "\033[1;34m"
#define MAGENTA "\033[0;35m"
#define BMAGENTA "\033[1;35m"
#define CYAN "\033[0;36m"
#define BCYAN "\033[1;36m"
#define WHITE "\033[0;37m"
#define BWHITE "\033[1;37m"
#define RESET "\033[0m"

typedef struct {
		int size;
		void **keys;
		void **values;
}		object_t;

object_t *object_new (int size);
int		object_index (object_t *h, void *key);
void	object_insert (object_t *h, void *key, void *value);
void	object_insert (object_t *h, void *key, void *value);
void	*object_lookup (object_t *h, void *key);



size_t	ft_strlen(const char *);
void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *restrict s1, const char *restrict s2);
int 	ft_isalpha(int c);
int 	ft_isdigit(int c);
int 	ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);
void	*ft_memset(void *s, int c, size_t n);
void	*ft_memcpy(void *dest, const void *src, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);

// BONUSES
int		ft_atoi(char *s);
char	*ft_itoa(int n);
int		ft_strcmp(const char *s1, const char *s2);
#endif //LIBFTASM_H
