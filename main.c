/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rmdaba <rogerndaba@gmail.com>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/07 15:11:02 by Roger Ndaba       #+#    #+#             */
/*   Updated: 2019/08/28 14:01:46 by rmdaba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"

object_t *object;

void test_ft_strlen() {
    printf(MAGENTA "\nft_strlen test :\n\n" RESET);
    for (int i = 0; i < 4; i++) {
        if (strlen(object->values[i]) == ft_strlen(object->values[i]))
            printf(BGREEN "✔ "BWHITE"Test %d : %s\n" RESET, i, object->keys[i]);
        else
            printf(BRED "✘ "BWHITE"Test %d : %s\n" RESET, i, object->keys[i]);
    }
}

void test_ft_bzero() {
    printf(MAGENTA "\nft_bzero test :\n\n" RESET);
    for (int i = 0; i < 4; i++) {
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


void test_ft_strdup() {
    printf(MAGENTA "\nft_strdup test :\n\n" RESET);

    for (int i = 0; i < 4; i++) {
        char *test_str1 = strdup((char *)object->values[i]);
        char *test_str2 = ft_strdup((char *)object->values[i]);

        if (!memcmp(test_str1, test_str2, sizeof(object->values[i])))
            printf(BGREEN "✔ "BWHITE"Test %d : %s --> memcmp()\n" RESET, i, object->keys[i]);
        else
            printf(BRED "✘ "BWHITE"Test %d : %s --> memcmp()\n" RESET, i, object->keys[i]);
    }
}

void test_ft_memset() {
    printf(MAGENTA "\nft_memset test :\n\n" RESET);

    for (int i = 0; i < 4; i++) {
        char *test_str1 = strdup((char *)object->values[i]);
        char *test_str2 = strdup((char *)object->values[i]);

        memset(test_str1, '#', 3);
        ft_memset(test_str2, '#', 3);
        if (!memcmp(test_str1, test_str2, sizeof(object->values[i])))
            printf(BGREEN "✔ "BWHITE"Test %d : %s --> memcmp()\n" RESET, i, object->keys[i]);
        else
            printf(BRED "✘ "BWHITE"Test %d : %s --> memcmp()\n" RESET, i, object->keys[i]);
    }
}


void test_ft_strcat()
{
    printf(MAGENTA "\nft_strcat test :\n\n" RESET);

    for (int i = 0; i < 4; i++)
    {
        char *test_str1 = strdup((char *)object->values[i]);

        char *s1 = ft_strcat(test_str1, "Roger");
        char *s2 = strcat(test_str1, "Roger");

        if (!strcmp(s1, s2))
            printf(BGREEN "✔ "BWHITE"Test %d : %s --> strcmp()\n" RESET, i, object->keys[i]);
        else
            printf(BRED "✘ "BWHITE"Test %d : %s --> strcmp()\n" RESET, i, object->keys[i]);
    }

}

void test_ft_is()
{
    int _alpha = 0;
    int _ascii = 0;
    int _digit = 0;
    int _print = 0;
    int _alnum = 0;
    printf(MAGENTA "\nft_is* test (-150 to 150):\n\n"RESET);
    for (int i = -150; i < 150; i++)
        if (isalpha(i) == ft_isalpha(i))
            _alpha++;
    for (int i = -150; i < 150; i++)
        if (isascii(i) == ft_isascii(i))
            _ascii++;
    for (int i = -150; i < 150; i++)
        if (isdigit(i) == ft_isdigit(i))
            _digit++;
    for (int i = -150; i < 150; i++)
        if (isprint(i) == ft_isprint(i))
            _print++;
    for (int i = -150; i < 150; i++)
        if (isalnum(i) == ft_isalnum(i))
            _alnum++;
    printf("%s"BWHITE"ft_alnum\n"RESET, (_alnum == 300) ? BGREEN"✔ " : BRED"✘ ");
    printf("%s"BWHITE"ft_print\n"RESET, (_print == 300) ? BGREEN"✔ " : BRED"✘ ");
    printf("%s"BWHITE"ft_digit\n"RESET, (_digit == 300) ? BGREEN"✔ " : BRED"✘ ");
    printf("%s"BWHITE"ft_alpha\n"RESET, (_alpha == 300) ? BGREEN"✔ " : BRED"✘ ");
    printf("%s"BWHITE"ft_ascii\n"RESET, (_ascii == 300) ? BGREEN"✔ " : BRED"✘ ");
}

void    test_ft_to()
{
    int _lower = 0;
    int _upper = 0;
    printf(MAGENTA "\nft_to* test (-150 to 150):\n\n"RESET);
    for (int i = -150; i < 150; i++)
        if (tolower(i) == ft_tolower(i))
            _lower++;
    for (int i = -150; i < 150; i++)
        if (toupper(i) == ft_toupper(i))
            _upper++;
    printf("%s"BWHITE"ft_tolower\n"RESET, (_lower == 300) ? BGREEN"✔ " : BRED"✘ ");
    printf("%s"BWHITE"ft_toupper\n"RESET, (_upper == 300) ? BGREEN"✔ " : BRED"✘ ");
}

void    test_ft_puts()
{
    int ok1 = 0;
    int ok2 = 0;
    printf(MAGENTA "\nft_to* test (-150 to 150):\n\n"RESET);
    for (int i = 0; i < 4; i++) {
        puts("\033[34mPUTS\033[0m");
        puts(object->values[i]);
        ft_puts("\033[33mPUTS\033[0m");
        ft_puts(object->values[i]);
        printf("----------------------------------------\n");
    }
}

int main(void) {

    object = object_new(4);
    object_insert(object, "Normal string", "Roger");
    object_insert(object, "Escaped string", "\n\tllsjfldfhlsdflhhsdlf\tfgfgfgfg");
    object_insert(object, "Empty string", "");
    object_insert(object, "Whitespaced string", "          ");

    test_ft_strlen();
    test_ft_bzero();
    test_ft_memcpy();
    test_ft_strdup();
    test_ft_memset();
    test_ft_strcat();
    test_ft_is();
    test_ft_to();
    test_ft_puts();

    // printf("------->%d -- %d\n", ft_atoi("\t\r\f\v ++48"), atoi("444tf"));
    // char *s = strdup("Roger");
    // printf("--------> %s\n", ft_strchr(s, 'o'));
    // printf("===> %d\n", ft_strcmp("Roger", "Roser"));
    // printf("---> %s\n", ft_strstr("PLease oger", "Roger"));
    // printf("---> %s\n", ft_strcpy(s, "sober"));
    // s = strdup("Roger");
    // printf("---> %s\n", ft_strncpy(s, "sober", 2));
}
