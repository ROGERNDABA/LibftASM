/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Roger Ndaba <rogerndaba@gmil.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/07 15:11:02 by Roger Ndaba       #+#    #+#             */
/*   Updated: 2019/08/18 20:18:45 by Roger Ndaba      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdbool.h>
#include <stdio.h>
#include <string.h>

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
#define RESET "\033[0m"

size_t ft_strlen(const char *);
void ft_bzero(void *s, size_t n);
char *ft_strcat(char *restrict s1, const char *restrict s2);
int  ft_isalpha(int c);
int  ft_isdigit(int c);
int  ft_isalnum(int c);
int  ft_isascii(int c);
int  ft_isprint(int c);
int  ft_toupper(int c);
int  ft_tolower(int c);
int  ft_puts(const char *s);
void *ft_memset(void *s, int c, size_t n);
void *ft_memcpy(void *dest, const void *src, size_t n);

void test_ft_strlen() {
    char tmp[5][125] = {"Roger", "\n\tllsjfldfhlsdflhhsdlf\tfgfgfgfg", "", "    ", "-1-2-3-4"};

    printf(MAGENTA "ft_strlen test :\n" RESET);
    for (int i = 0; i < 5; i++) {
        printf("\t%lu -- %lu\n", ft_strlen(tmp[i]), strlen(tmp[i]));
        if (strlen(tmp[i]) == ft_strlen(tmp[i])) {
            printf(BGREEN "\tTest %d: Passed\n" RESET, i);
        } else {
            printf(BRED "\tTest %d: Failed\n" RESET, i);
        }
    }
}
void test_ft_bzero() {
    char tmp[5][125] = {"Roger", "\n\tllsjfldfhlsdflhhsdlf\tfgfgfgfg", "", "    ", "-1-2-3-4"};
    char tmp2[5][125] = {"Roger", "\n\tllsjfldfhlsdflhhsdlf\tfgfgfgfg", "", "    ", "-1-2-3-4"};

    printf(MAGENTA "ft_bzero test :\n" RESET);
    for (int i = 0; i < 5; i++) {
        ft_bzero(tmp[i], 4);
        bzero(tmp2[i], 4);
    }
}

int main(void) {
    test_ft_strlen();
char s1[] = "R";
char s2[] = "zzzzzzzzz";

printf("strcat ---> %s\n", ft_strcat(s1, s2));
printf("isalpha ---> %d\n", ft_isalpha('z'));
printf("isdigit ---> %d\n", ft_isdigit('y'));
printf("isalnum ---> %d\n", ft_isalnum('`'));
printf("isascii ---> %d\n", ft_isascii(0));
printf("isprint ---> %d\n", ft_isprint('\0'));
printf("istoupper ---> %c\n", ft_toupper('A'));
ft_puts(NULL);
printf("istolower ---> %c\n", ft_tolower('a'));
printf("memcpy ---> %s\n", (char *)ft_memcpy(s1, s2, 2));
printf("memset ---> %s\n", (char *)ft_memset(s2, 'p', 2));
}
