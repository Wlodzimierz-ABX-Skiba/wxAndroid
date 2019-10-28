/* Author: Wlodzimierz ABX Skiba
   Date:   25 Oct 2019
*/

#ifndef ANDROIDEXPATCONFIG_H
#define ANDROIDEXPATCONFIG_H

/* use wxWidgets' configure */
#include "wx/setup.h"

#ifdef WORDS_BIGENDIAN
#define BYTEORDER  4321
#else
#define BYTEORDER 1234
#endif

#define STDC_HEADERS 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STRINGS_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_UNISTD_H 1
#define HAVE_DLFCN_H 1
#define STDC_HEADERS 1
#define HAVE_MEMMOVE 1
#define HAVE_BCOPY 1
#define HAVE_ARC4RANDOM_BUF 1
#define HAVE_FCNTL_H 1
#define HAVE_UNISTD_H 1
#define HAVE_STDLIB_H 1
#define HAVE_UNISTD_H 1
#define HAVE_SYS_PARAM_H 1
#define HAVE_GETPAGESIZE 1
#define HAVE_MMAP 1
#define XML_NS 1
#define XML_DTD 1
#define XML_CONTEXT_BYTES 1024

#endif /* ifndef ANDROIDEXPATCONFIG_H */
