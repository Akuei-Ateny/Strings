# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"


# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 4 "strp.c" 2
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 5 "strp.c" 2
# 1 "str.h" 1







# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 9 "str.h" 2
# 17 "str.h"

# 17 "str.h"
size_t Str_getLength(const char *str);
# 26 "str.h"
char *Str_copy(char *dest, const char *src);







char *Str_concat(char *dest, const char *src);
# 43 "str.h"
int Str_compare(const char *str1, const char *str2);
# 52 "str.h"
const char *Str_search(const char *haystack, const char *needle);
# 6 "strp.c" 2


size_t Str_getLength(const char *str) {
   const char *ptr = str;
   
# 10 "strp.c" 3 4
  ((
# 10 "strp.c"
  str != 
# 10 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 10 "strp.c"
  "str != NULL"
# 10 "strp.c" 3 4
  , "strp.c", 10, __extension__ __PRETTY_FUNCTION__))
# 10 "strp.c"
                     ;
   while (*ptr != '\0') {
      ptr++;
    }
   return (size_t)(ptr - str);
}


char *Str_copy(char *dest, const char *src) {
   char *dest_start = dest;

   
# 21 "strp.c" 3 4
  ((
# 21 "strp.c"
  dest != 
# 21 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 21 "strp.c"
  "dest != NULL"
# 21 "strp.c" 3 4
  , "strp.c", 21, __extension__ __PRETTY_FUNCTION__))
# 21 "strp.c"
                      ;
   
# 22 "strp.c" 3 4
  ((
# 22 "strp.c"
  src != 
# 22 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 22 "strp.c"
  "src != NULL"
# 22 "strp.c" 3 4
  , "strp.c", 22, __extension__ __PRETTY_FUNCTION__))
# 22 "strp.c"
                     ;
   while ((*dest++ = *src++) != '\0');
   return dest_start;
}


char *Str_concat(char *dest, const char *src) {
   char *dest_start = dest;

   
# 31 "strp.c" 3 4
  ((
# 31 "strp.c"
  dest != 
# 31 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 31 "strp.c"
  "dest != NULL"
# 31 "strp.c" 3 4
  , "strp.c", 31, __extension__ __PRETTY_FUNCTION__))
# 31 "strp.c"
                      ;
   
# 32 "strp.c" 3 4
  ((
# 32 "strp.c"
  src != 
# 32 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 32 "strp.c"
  "src != NULL"
# 32 "strp.c" 3 4
  , "strp.c", 32, __extension__ __PRETTY_FUNCTION__))
# 32 "strp.c"
                     ;
   while (*dest != '\0') dest++;
   while ((*dest++ = *src++) != '\0');
   return dest_start;
}


int Str_compare(const char *str1, const char *str2) {

    
# 41 "strp.c" 3 4
   ((
# 41 "strp.c"
   str1 != 
# 41 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 41 "strp.c"
   "str1 != NULL"
# 41 "strp.c" 3 4
   , "strp.c", 41, __extension__ __PRETTY_FUNCTION__))
# 41 "strp.c"
                       ;
    
# 42 "strp.c" 3 4
   ((
# 42 "strp.c"
   str2 != 
# 42 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 42 "strp.c"
   "str2 != NULL"
# 42 "strp.c" 3 4
   , "strp.c", 42, __extension__ __PRETTY_FUNCTION__))
# 42 "strp.c"
                       ;
    while (*str1 == *str2) {
        if (*str1 == '\0') {
            return 0;
        }
        str1++;
        str2++;
    }
    return (int)(*str1 - *str2);
}


const char *Str_search(const char *haystack, const char *needle) {
   size_t needle_len = Str_getLength(needle);

   
# 57 "strp.c" 3 4
  ((
# 57 "strp.c"
  haystack != 
# 57 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 57 "strp.c"
  "haystack != NULL"
# 57 "strp.c" 3 4
  , "strp.c", 57, __extension__ __PRETTY_FUNCTION__))
# 57 "strp.c"
                          ;
   
# 58 "strp.c" 3 4
  ((
# 58 "strp.c"
  needle != 
# 58 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 58 "strp.c"
  "needle != NULL"
# 58 "strp.c" 3 4
  , "strp.c", 58, __extension__ __PRETTY_FUNCTION__))
# 58 "strp.c"
                        ;
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
   return 
# 74 "strp.c" 3 4
         ((void *)0)
# 74 "strp.c"
             ;
}
