# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"




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



# 6 "stra.c" 2
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 7 "stra.c" 2
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
# 8 "stra.c" 2


size_t Str_getLength(const char str[]) {
   size_t length;
   length = 0;
   
# 13 "stra.c" 3 4
  ((
# 13 "stra.c"
  str != 
# 13 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 13 "stra.c"
  "str != NULL"
# 13 "stra.c" 3 4
  , "stra.c", 13, __extension__ __PRETTY_FUNCTION__))
# 13 "stra.c"
                     ;
   while (str[length] != '\0') {
        length++;
    }
    return length;
}


char *Str_copy(char dest[], const char src[]) {
   size_t i;
   i = 0;

   
# 25 "stra.c" 3 4
  ((
# 25 "stra.c"
  dest != 
# 25 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 25 "stra.c"
  "dest != NULL"
# 25 "stra.c" 3 4
  , "stra.c", 25, __extension__ __PRETTY_FUNCTION__))
# 25 "stra.c"
                      ;
   
# 26 "stra.c" 3 4
  ((
# 26 "stra.c"
  src != 
# 26 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 26 "stra.c"
  "src != NULL"
# 26 "stra.c" 3 4
  , "stra.c", 26, __extension__ __PRETTY_FUNCTION__))
# 26 "stra.c"
                     ;
    while ((dest[i] = src[i]) != '\0') {
        i++;
    }
    return dest;
}


char *Str_concat(char dest[], const char src[]) {
   size_t dest_len;
   size_t i;
   i = 0;
   dest_len = Str_getLength(dest);

   
# 40 "stra.c" 3 4
  ((
# 40 "stra.c"
  dest != 
# 40 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 40 "stra.c"
  "dest != NULL"
# 40 "stra.c" 3 4
  , "stra.c", 40, __extension__ __PRETTY_FUNCTION__))
# 40 "stra.c"
                      ;
   
# 41 "stra.c" 3 4
  ((
# 41 "stra.c"
  src != 
# 41 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 41 "stra.c"
  "src != NULL"
# 41 "stra.c" 3 4
  , "stra.c", 41, __extension__ __PRETTY_FUNCTION__))
# 41 "stra.c"
                     ;
   while (src[i] != '\0') {
        dest[dest_len + i] = src[i];
        i++;
    }
    dest[dest_len + i] = '\0';
    return dest;
}


int Str_compare(const char str1[], const char str2[]) {
   size_t i;
   i = 0;

   
# 55 "stra.c" 3 4
  ((
# 55 "stra.c"
  str1 != 
# 55 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 55 "stra.c"
  "str1 != NULL"
# 55 "stra.c" 3 4
  , "stra.c", 55, __extension__ __PRETTY_FUNCTION__))
# 55 "stra.c"
                      ;
   
# 56 "stra.c" 3 4
  ((
# 56 "stra.c"
  str2 != 
# 56 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 56 "stra.c"
  "str2 != NULL"
# 56 "stra.c" 3 4
  , "stra.c", 56, __extension__ __PRETTY_FUNCTION__))
# 56 "stra.c"
                      ;
   while (str1[i] == str2[i]) {
       if (str1[i] == '\0') {
            return 0;
        }
        i++;
    }
   return (int)(str1[i] - str2[i]);
}


const char *Str_search(const char haystack[], const char needle[]) {
    size_t needle_len = Str_getLength(needle);
    
# 69 "stra.c" 3 4
   ((
# 69 "stra.c"
   haystack != 
# 69 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 69 "stra.c"
   "haystack != NULL"
# 69 "stra.c" 3 4
   , "stra.c", 69, __extension__ __PRETTY_FUNCTION__))
# 69 "stra.c"
                           ;
    
# 70 "stra.c" 3 4
   ((
# 70 "stra.c"
   needle != 
# 70 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 70 "stra.c"
   "needle != NULL"
# 70 "stra.c" 3 4
   , "stra.c", 70, __extension__ __PRETTY_FUNCTION__))
# 70 "stra.c"
                         ;

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

    return 
# 87 "stra.c" 3 4
          ((void *)0)
# 87 "stra.c"
              ;
}
