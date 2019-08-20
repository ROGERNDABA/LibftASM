#include "libftasm.h"

object_t *object_new (int size) {
    object_t *h = calloc(1, sizeof (object_t));
    h->keys = calloc(size, sizeof (void *));
    h->values = calloc(size, sizeof (void *));
    h->size = size;
    return h;
}

int object_index (object_t *h, void *key) {
    int i = (int) key % h->size;
    while (h->keys[i] && h->keys[i] != key)
        i = (i + 1) % h->size;
    return i;
}

void object_insert (object_t *h, void *key, void *value) {
    int i = object_index(h, key);
    h->keys[i] = key;
    h->values[i] = value;
}

void *object_lookup (object_t *h, void *key) {
    int i = object_index(h, key);
    return h->values[i];
}
