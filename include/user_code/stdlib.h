#ifndef STDLIB_H
#define STDLIB_H
#include "../utils/Types.h"

extern "C" uint64_t dispatch_syscall(uint64_t num,
                                     uint64_t arg0, uint64_t arg1, uint64_t arg2,
                                     uint64_t arg3, uint64_t arg4, uint64_t arg5);
#endif // STDLIB_H