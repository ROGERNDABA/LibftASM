/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Roger Ndaba <rogerndaba@gmil.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/07 15:11:02 by Roger Ndaba       #+#    #+#             */
/*   Updated: 2019/07/14 14:20:38 by Roger Ndaba      ###   ########.fr       */
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

void test_ft_strlen() {
    char tmp[5][125] = {"Roger", "\n\tllsjfldfhlsdflhhsdlf\tfgfgfgfg", "", "    ", "-1-2-3-4"};

    printf(MAGENTA "ft_strlen test :\n" RESET);
    for (int i = 0; i < 5; i++) {
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
}
