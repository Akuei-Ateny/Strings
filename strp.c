/* strp.c - Implementation of Str module using pointer notation */

#include <assert.h>
#include <stddef.h>
#include "str.h"

/* Functions to calculate the length of a string */
size_t Str_getLength(const char *str) {
   const char *ptr = str; /* Initializing pointer to the start */
   assert(str != NULL); /* Ensuring the input string is not null */
   while (*ptr != '\0') { 
      ptr++;
    }
   return (size_t)(ptr - str); /* Returning difference as the length */
}

/* Function to copy a string */
char *Str_copy(char *dest, const char *src) {
   char *dest_start = dest;
   /* Ensuring the source and the destination strings are not null */
   assert(dest != NULL);
   assert(src != NULL);
   while ((*dest++ = *src++) != '\0');
   return dest_start;
}

/* Function to concatenate two strings */
char *Str_concat(char *dest, const char *src) {
   char *dest_start = dest; /* Storing the start of the dest string */
   /* Ensuring the source and the destination files are not null */
   assert(dest != NULL);
   assert(src != NULL);
   while (*dest != '\0') dest++;
   while ((*dest++ = *src++) != '\0');
   return dest_start; /* Returning the start of the dest string */
}

/* Function to compare two strings */
int Str_compare(const char *str1, const char *str2) {
   /* Ensuring the two strings being compared are not null */
    assert(str1 != NULL);
    assert(str2 != NULL);
    while (*str1 == *str2) {
        if (*str1 == '\0') {
            return 0;
        }
        str1++;
        str2++;
    }
    return (int)(*str1 - *str2); /* Returning the difference */
}

/* Function to search for a substirng within a string */
const char *Str_search(const char *haystack, const char *needle) {
   size_t needle_len = Str_getLength(needle);
   /* Ensuring the haystack and needle strings is not null */
   assert(haystack != NULL);
   assert(needle != NULL);
   if (needle_len == 0) {
      return haystack; /* Return haystack if the needle is empty */
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
   return NULL; /* If needle is not found, return NULL */
}
