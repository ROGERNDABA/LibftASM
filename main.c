#include <stdio.h>
#include <string.h>

size_t ft_strlen(const char *s);

int main() {
    printf("ft_strlen : %ld -- strlen : %ld\n", ft_strlen(""), strlen(""));
    return 0;
}
