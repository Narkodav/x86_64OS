#include "../../include/user_code/SomeCode.h"

extern "C" int user_main(void)
{
    volatile int data = 3;
    volatile int anotherData = data + 3;
    // do something here
    return anotherData;
}