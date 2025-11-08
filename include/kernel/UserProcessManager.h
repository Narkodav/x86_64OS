#ifndef USER_PROCESS_MANAGER_H
#define USER_PROCESS_MANAGER_H

#include "../utils/Types.h"
#include "KernelData.h"

extern "C"
{
    int call_user_mode(int (*entry)(void), uintptr_t userStack, uint64_t stackSize);
}

namespace Kernel
{

    class UserProcessManager
    {
    public:
        using UserMain = int (*)(void);

    private:
        struct UserContext
        {
            void *userStack;
            size_t userStackSize;
            UserMain entryPoint;
        };

    public:
        static int executeUserProcess(UserMain userMain, size_t stackSize = 4096 * 4);

    private:
        // will be used when i setup multiple async process execution
        static void setup_tss_kernel_stack(uintptr_t stackTop)
        {
            // Update the TSS rsp0 field with our kernel stack
            // This ensures interrupts in user mode use the correct kernel stack
            *reinterpret_cast<uint64_t *>(tss_entry + 4) = reinterpret_cast<uint64_t>(stackTop); // rsp0 offset
        }
    };
}

#endif // USER_PROCESS_MANAGER_H