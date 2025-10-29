#include "../../include/kernel/Mouse.h"
namespace Kernel
{
    void Mouse::initialise()
    {
        InterruptManager::registerInterruptCallback(InterruptManager::InterruptVector::irqPs2Mouse, interruptHandler);
        port_out_byte(0x64, 0xA8); // Enable auxiliary device
        port_out_byte(0x64, 0x20); // Get command byte
        uint8_t status = port_in_byte(0x60);
        port_out_byte(0x64, 0x60);       // Set command byte
        port_out_byte(0x60, status | 2); // Enable IRQ12
    }

    void Mouse::interruptHandler(InterruptFrame &frame)
    {
        uint8_t data = port_in_byte(0x60);

        // First byte has bit 3 set (packet sync)
        if (s_cycle == 0 && !(data & 0x08))
        {
            return; // Wait for valid first byte
        }

        s_mouseBytes[s_cycle++] = data;

        if (s_cycle == 3)
        {
            // Complete packet received
            int x_delta = (int8_t)s_mouseBytes[1];
            int y_delta = (int8_t)s_mouseBytes[2];
            bool left_btn = s_mouseBytes[0] & 1;
            bool right_btn = s_mouseBytes[0] & 2;
            bool middle_btn = s_mouseBytes[0] & 4;

            // Process mouse movement/clicks here

            s_cycle = 0; // Reset for next packet
        }
    }
}