#include "../../include/kernel/SystemCallManager.h"

Kernel::SystemCallHandler syscall_handlers[static_cast<uint64_t>(Kernel::SystemCall::num)] = {nullptr};

namespace Kernel
{
    // Define the global handlers array

    void SystemCallManager::initialise()
    {
        Console::print("System call manager : Initialising\n", Console::Attributes::CyanOnBlack);
        setup_syscall();
        for (size_t i = 0; i < static_cast<size_t>(SystemCall::num); ++i)
            syscall_handlers[i] = syscallUnimplemented;
        registerSystemCall(SystemCall::read, syscallRead);
        registerSystemCall(SystemCall::write, syscallWrite);

        // exit is handled in assmbly because it requires direct stack manipulation
        registerSystemCall(SystemCall::exit, syscall_exit);
    }

    void SystemCallManager::registerSystemCall(SystemCall call, SystemCallHandler handler)
    {
        syscall_handlers[static_cast<uint64_t>(call)] = handler;
    }

    uint64_t SystemCallManager::syscallUnimplemented(uint64_t, uint64_t, uint64_t,
                                                     uint64_t, uint64_t, uint64_t)
    {
        Console::print("System call: Unimplemented\n", Console::Attributes::RedOnBlack);
        return -1; // Return error code
    }

    uint64_t SystemCallManager::syscallRead(uint64_t fd, uint64_t buf, uint64_t count, uint64_t, uint64_t, uint64_t)
    {
        Console::print("System call: Read\n", Console::Attributes::CyanOnBlack);
        Console::print("  Args: %d, %d, %d\n", fd, buf, count);
        return 0;
    }

    uint64_t SystemCallManager::syscallWrite(uint64_t fd, uint64_t buf, uint64_t count, uint64_t, uint64_t, uint64_t)
    {
        Console::print("System call: Write\n", Console::Attributes::CyanOnBlack);
        Console::print("  Args: %d, %d, %d\n", fd, buf, count);
        return 0;
    }

    // uint64_t SystemCallManager::syscallExit(uint64_t code, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
    // {
    //     Console::print("System call: Exit\n", Console::Attributes::CyanOnBlack);
    //     Console::print("  Args: %d\n", code);

    //     // Call assembly function that unwinds stack back to call_user_mode
    //     syscall_exit(code);

    //     // Should never reach here
    //     __builtin_unreachable();
    // }

}