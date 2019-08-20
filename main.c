/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Roger Ndaba <rogerndaba@gmail.com>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/07 15:11:02 by Roger Ndaba       #+#    #+#             */
/*   Updated: 2019/08/20 16:25:48 by Roger Ndaba      ###   ########.fr       */
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
}
