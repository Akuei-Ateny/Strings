/*
str.h - Header file for string manipulation functions
*/

#ifndef STR_H
#define STR_H

#include <stddef.h>

/* Function prototypes */

/* Get the length of a string.
Parameters:
str: Pointer to the source string
Returns: Length of the string
*/
size_t Str_getLength(const char *str);

/* Copy a string
Parameters:
dest: Pointer to the destinatio string
src: Pointer to the destination string
Returns:
Pointer to the destination string
*/
char *Str_copy(char *dest, const char *src);

/* Concatenate two strings
Parameters:
dest: Pointer to the destination string
src: Pointer to the source string
Returns:
Pointer to the destination string*/
char *Str_concat(char *dest, const char *src);

/* Compare two strings.
Parameters:
str1: Pointer to the first string
str2; Pointer to the second string
Returns:
0 if strings are equal, < 0 if str1 < str2, > 0 if str1 > str2
*/
int Str_compare(const char *str1, const char *str2);

/* Search for a substring within a string.
Parameters:
haystack: Pointer to the string to search in
needle: Pointer to the substring to search for
Returns:
Pointer to the first occurence of the substring in the string, or NULL
if the substring is not found */
const char *Str_search(const char *haystack, const char *needle);

#endif /* STR_H */
