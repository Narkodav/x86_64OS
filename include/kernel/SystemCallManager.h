#ifndef SYSTEM_CALL_MANAGER_H
#define SYSTEM_CALL_MANAGER_H
#include "../utils/Types.h"
#include "../utils/Utils.h"
#include "../drivers/Console.h"

extern "C"
{
    extern void syscall_handler();
    extern void setup_syscall();
    extern uint64_t syscall_exit(uint64_t code, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t);
    extern uint64_t syscall_dispatcher(uint64_t num, uint64_t arg1,
                                       uint64_t arg2, uint64_t arg3,
                                       uint64_t arg4, uint64_t arg5,
                                       uint64_t arg6);
}

namespace Kernel
{
    enum class SystemCall : uint64_t
    {
        read = 0,
        write = 1,
        exit = 60,
        num = 256,
    };

    using SystemCallHandler = uint64_t (*)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t);
};

// Global array accessible from assembly
extern volatile Kernel::SystemCallHandler syscall_handlers[static_cast<uint64_t>(Kernel::SystemCall::num)];

namespace Kernel
{
    class SystemCallManager
    {
    public:
        friend uint64_t ::syscall_dispatcher(uint64_t num, uint64_t arg1,
                                             uint64_t arg2, uint64_t arg3,
                                             uint64_t arg4, uint64_t arg5,
                                             uint64_t arg6);

    public:
        static void initialise();
        static void registerSystemCall(SystemCall call, SystemCallHandler handler);

    private:
        static uint64_t syscallUnimplemented(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t);
        static uint64_t syscallRead(uint64_t fd, uint64_t buf, uint64_t count, uint64_t, uint64_t, uint64_t);
        static uint64_t syscallWrite(uint64_t fd, uint64_t buf, uint64_t count, uint64_t, uint64_t, uint64_t);
    };

}

#endif // SYSTEM_CALL_MANAGER_H