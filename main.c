/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Roger Ndaba <rogerndaba@gmail.com>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/07 15:11:02 by Roger Ndaba       #+#    #+#             */
/*   Updated: 2019/08/20 16:24:59 by Roger Ndaba      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"

void test_ft_strlen() {
    printf(MAGENTA "\nft_strlen test :\n\n" RESET);
    object_t *object = object_new(4);
    object_insert(object, "Normal string", "Roger");
    object_insert(object, "Escaped string", "\n\tllsjfldfhlsdflhhsdlf\tfgfgfgfg");
    object_insert(object, "Empty string", "");
    object_insert(object, "Whitespaced string", "          ");

    for (int i = 0; i < 4; i++) {
        if (strlen(object->values[i]) == ft_strlen(object->values[i]))
            printf(BGREEN "✔ "BWHITE"Test %d : %s\n" RESET, i, object->keys[i]);
        else
            printf(BRED "✘ "BWHITE"Test %d : %s\n" RESET, i, object->keys[i]);
    }
}

void test_ft_bzero() {
    printf(MAGENTA "\nft_bzero test :\n\n" RESET);
    object_t *object = object_new(2);
    object_insert(object, "Normal string", "Roger");
    object_insert(object, "Empty string", "");

    for (int i = 0; i < 2; i++) {
        char *test_str1 = strdup((char *)object->values[i]);
        char *test_str2 = strdup((char *)object->values[i]);
        bzero(test_str1 + 2, i), ft_bzero(test_str2 + 2, i);
        if (!memcmp(test_str1, test_str2, sizeof(object->values[i])))
            printf(BGREEN "✔ "BWHITE"Test %d : bzero(\"%s\", %d) --> memcmp()\n" RESET, i, object->keys[i], i);
        else
            printf(BRED "✘ "BWHITE"Test %d :  bzero(\"%s\", %d) --> memcmp()\n" RESET, i, object->keys[i], i);
    }
}

void test_ft_memcpy() {
    printf(MAGENTA "\nft_memcpy test :\n\n" RESET);
    object_t *object = object_new(4);
    object_insert(object, "Normal string", "Roger");
    object_insert(object, "Escaped string", "\n\tllsjfldfhlsdflhhsdlf\tfgfgfgfg");
    object_insert(object, "Empty string", "");
    object_insert(object, "Whitespaced string", "          ");

    for (int i = 0; i < 4; i++) {
        char *test_str1 = strdup((char *)object->values[i]);
        char *test_str2 = strdup((char *)object->values[i]);

        memcpy(test_str1, "", sizeof(test_str2));
        ft_memcpy(test_str2, "", sizeof(test_str2));
        if (!memcmp(test_str1, test_str2, sizeof(object->values[i])))
            printf(BGREEN "✔ "BWHITE"Test %d : %s --> memcmp()\n" RESET, i, object->keys[i]);
        else
            printf(BRED "✘ "BWHITE"Test %d : %s --> memcmp()\n" RESET, i, object->keys[i]);
    }
}

int main(void) {
    test_ft_strlen();
    test_ft_bzero();
    test_ft_memcpy();

//     char str1[] = "Geeks";
//   char str2[] = "";

//     memcpy(str1, str2, sizeof(str2));

//     printf("==%d\n", memcmp(str2, "", sizeof(str1)));

// char s1[] = "R";
// char s2[] = "zzzzzzzzz";

// printf("strcat ---> %s\n", ft_strcat(s1, s2));
// printf("isalpha ---> %d\n", ft_isalpha('z'));
// printf("isdigit ---> %d\n", ft_isdigit('y'));
// printf("isalnum ---> %d\n", ft_isalnum('`'));
// printf("isascii ---> %d\n", ft_isascii(0));
// printf("isprint ---> %d\n", ft_isprint('\0'));
// printf("istoupper ---> %c\n", ft_toupper('A'));

// char *u = NULL;
// ft_puts("\033[31mHello darkness my old friend\033[0m");

// u = ft_strdup(s2);
// printf("strdup ---> %s\n", u);
// printf("istolower ---> %c\n", ft_tolower('a'));
// printf("memcpy ---> %s\n", (char *)ft_memcpy(s1, s2, 2));
// printf("memset ---> %s\n", (char *)ft_memset(s2, 'p', 2));

// int fd = open("test.txt", O_RDONLY);
// ft_cat(fd);
// close(fd);

}
