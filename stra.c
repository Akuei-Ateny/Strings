/*
stra.c - Implementation of stirng manipulation functions using arrays.
*/

#include <assert.h>
#include <stddef.h>
#include "str.h"

/* Function to get the length of a string */
size_t Str_getLength(const char str[]) {
   size_t length;
   length = 0;
   assert(str != NULL); /* To ensure source string is not null */
   while (str[length] != '\0') {
        length++;
    }
    return length;
}

/* Function to copy a string */
char *Str_copy(char dest[], const char src[]) {
   size_t i;
   i = 0;
   /* Ensuring the source and destination strings are not null */
   assert(dest != NULL);
   assert(src != NULL);
    while ((dest[i] = src[i]) != '\0') {
        i++;
    }
    return dest;
}

/* Function to concatenate two strings */
char *Str_concat(char dest[], const char src[]) {
   size_t dest_len;
   size_t i;
   i = 0;
   dest_len = Str_getLength(dest);
   /* Ensuring the source and the destination strings are not null */
   assert(dest != NULL);
   assert(src != NULL); 
   while (src[i] != '\0') {
        dest[dest_len + i] = src[i];
        i++;
    }
    dest[dest_len + i] = '\0';
    return dest;
}

/* Function to compare two strings */
int Str_compare(const char str1[], const char str2[]) {
   size_t i;
   i = 0;
   /* Ensuring the source and the destination strings are not null */
   assert(str1 != NULL);
   assert(str2 != NULL);
   while (str1[i] == str2[i]) {
       if (str1[i] == '\0') {
            return 0;
        }
        i++;
    }
   return (int)(str1[i] - str2[i]);
}

/* Function to search for a substring within a string */
const char *Str_search(const char haystack[], const char needle[]) {
    size_t needle_len = Str_getLength(needle);
    assert(haystack != NULL);
    assert(needle != NULL);

    if (needle_len == 0) {
        return haystack;
    }

    while (*haystack != '\0') {
        size_t i = 0;
        while (haystack[i] == needle[i]) {
            if (needle[i + 1] == '\0') {
                return haystack;
            }
            i++;
        }
        haystack++;
    }

    return NULL;
}
