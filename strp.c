#include <assert.h>
#include <stddef.h>
#include "str.h"

size_t Str_getLength(const char *str) {
   const char *ptr = str;
   assert(str != NULL);
   while (*ptr != '\0') { 
      ptr++;
    }
   return (size_t)(ptr - str);
}

char *Str_copy(char *dest, const char *src) {
   char *dest_start = dest;
   assert(dest != NULL);
   assert(src != NULL);
   while ((*dest++ = *src++) != '\0') {}
   return dest_start;
}

char *Str_concat(char *dest, const char *src) {
   char *dest_start = dest;
   assert(dest != NULL);
   assert(src != NULL);
   while (*dest != '\0') {
      dest++;
    }
    while ((*dest++ = *src++) != '\0') {}
    return dest_start;
}

int Str_compare(const char *str1, const char *str2) {
    assert(str1 != NULL);
    assert(str2 != NULL);
    while (*str1 == *str2) {
        if (*str1 == '\0') {
            return 0;
        }
        str1++;
        str2++;
    }
    return *str1 - *str2;
}

const char *Str_search(const char *haystack, const char *needle) {
   size_t needle_len = Str_getLength(needle);
   assert(haystack != NULL);
   assert(needle != NULL);
   if (needle_len == 0) {
      return haystack;
    }
   while (*haystack != '\0') {
      const char *haystack_ptr = haystack;
      const char *needle_ptr = needle;
      while (*haystack_ptr == *needle_ptr) {
         if (*(needle_ptr + 1) == '\0') {
            return haystack;
            }
            haystack_ptr++;
            needle_ptr++;
        }
        haystack++;
    }
    return NULL;
}
