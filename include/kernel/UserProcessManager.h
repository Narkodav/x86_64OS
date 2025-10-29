#include "../utils/Types.h"
#include "KernelData.h"

extern "C"
{
    int call_in_user_mode(uintptr_t entry_point, uintptr_t user_stack_top);
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
            void *kernelStack;
            uintptr_t entryPoint;
        };

    public:
        static int startUserProcess(UserMain userMain, size_t stackSize = 4096 * 4)
        {
            UserContext context;
            context.userStackSize = stackSize;
            context.entryPoint = reinterpret_cast<uintptr_t>(userMain);
            context.kernelStack = stack_top;
            context.userStack = s_kernelHeap.allocate(stackSize);
            if (!context.userStack)
                return 1;

            int exitCode = callInUserMode(context);

            s_kernelHeap.free(context.userStack);
            return exitCode;
        }

    private:
        [[noreturn]] static int callInUserMode(const UserContext &userContext)
        {
            // Calculate stack top (stacks grow downward)
            uintptr_t userStackTop = reinterpret_cast<uintptr_t>(userContext.userStack) + userContext.userStackSize;

            return call_in_user_mode(userContext.entryPoint, userStackTop);
        }

        // will be used when i setup multiple async process execution
        static void setup_tss_kernel_stack(uintptr_t stackTop)
        {
            // Update the TSS rsp0 field with our kernel stack
            // This ensures interrupts in user mode use the correct kernel stack
            *reinterpret_cast<uint64_t *>(tss_entry + 4) = reinterpret_cast<uint64_t>(stackTop); // rsp0 offset
        }
    };
}