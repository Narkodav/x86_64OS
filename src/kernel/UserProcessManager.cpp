#include "../../include/kernel/UserProcessManager.h"

namespace Kernel
{
    int UserProcessManager::executeUserProcess(UserMain userMain, size_t stackSize //= 4096 * 4
    )
    {
        UserContext context;
        context.userStackSize = stackSize;
        context.entryPoint = userMain;
        context.userStack = s_kernelHeap.allocate(stackSize);

        if (!context.userStack)
            return -1;

        int exitCode = call_user_mode(context.entryPoint,
                                      reinterpret_cast<uintptr_t>(context.userStack),
                                      stackSize);

        s_kernelHeap.free(context.userStack);
        return exitCode;
    }

}