#include <string.h>
#include <stdlib.h>

#include "pico/stdlib.h"
#include "hardware/sync.h"

#include "ff.h"
#include "fatfs_disk.h"

// Revision 2, as of 2025:
//  Added 74lvc245 buffers and multiplexed address/data to save pins
//  Process is now:
//  1. Set IN/~OUT = H (v2 errata: add pull-up) to wait for address data
//  2. Set AD pins to INPUT using SET_DATA_MODE_IN
//  3. Set A/~D = H (address mode)
//  4. Set H/~L = H (high address half, a8..a15)
//  4. Listen for ~ROM_CS going low
//  5. When you get ~ROM_CS (time critical section:)
//      1. Fetch address a8..a15
//      2. Set H/~L = L
//      3. Fetch address a0..a7
//      4. Retrieve ROM contents from memory at that location (relocate the generated address)
//      5. Set A/~D = L (data mode)
//      6. Set AD pins to OUTPUT using SET_DATA_MODE_OUT
//      7. Put data on data pins
//      8. Wait until ~ROM_CS goes high

#define ALL_GPIO_MASK   	    0x3FFFFFFF // 30 IOs 0..29 inclusive
#define ADDR_DATA_GPIO_MASK  	0x000000ff // GPIO 0..7 inclusive
#define CS_GPIO_MASK            0x00000100 // GPIO 18 lights up when CS2 or CS3 are selected
#define ALL_SELECTS_GPIO_MASK   0x00002900 // ROMCS, RAMCS, IORQ (TODO: ESP interrupt?)
#define ROMADDR_GPIO_MASK       0x0000fffc // Just the addresses in an 8K ROM

#define SET_DATA_MODE_OUT   gpio_set_dir_out_masked(ADDR_DATA_GPIO_MASK)
#define SET_DATA_MODE_IN    gpio_set_dir_in_masked(ADDR_DATA_GPIO_MASK)

#define PIN_ADDRESS_DATA_MODE   20 // low for data, high for address
#define PIN_HIGH_LOW_MODE       21 // low for low, high for high half (only for address)
#define PIN_DATA_IN_OUT         22 // high for in, low for out

#include "p6_bootrom.h"

// FIXME: oops i forgot R/W, I guess we're just going to serve up a ROM

/**
 * Run whenever we're not actively serving something. Waits for
 * the select lines.
 */
inline static int __not_in_flash_func(listen)() {
    uint32_t pins = 0;
    uint16_t addr = 0;

    while(true) {
        // Return to listening state
        SET_DATA_MODE_IN; // pico A/D pins set to input now
        gpio_put(PIN_DATA_IN_OUT, 1); // 245s driving pico
        gpio_put(PIN_HIGH_LOW_MODE, 1); // high half
        gpio_put(PIN_ADDRESS_DATA_MODE, 1); // listen to addresses

        // Listen
        while((pins = gpio_get_all()) & CS_GPIO_MASK); // TODO: extend CS_GPIO_MASK to all selects

        // React
        // FIXME: assuming for now this is ROM CS add other devices here
        if(true) {
            // grab upper address pins
            addr = (pins & ADDR_DATA_GPIO_MASK) << 8; // shift into upper half
            // switch pin set (TODO: How do we know it switched?)
            gpio_put(PIN_HIGH_LOW_MODE, 0); // low half
            // TODO: Delay???
            pins = gpio_get_all();
            addr |= (pins & ADDR_DATA_GPIO_MASK); // lower half of address now
            // switch to data pins now
            SET_DATA_MODE_OUT;
            gpio_put(PIN_DATA_IN_OUT, 0); // output time
            // HACK: ROM should be larger than 8K...
            gpio_put_masked(ADDR_DATA_GPIO_MASK, ((uint32_t)(P6_bootrom[addr % 8192])));

            // wait for select to release (go high)
            while(!(gpio_get_all() & CS_GPIO_MASK));
            SET_DATA_MODE_IN;
            continue; // return to normal listening
        }
        // TODO: RAM, IO select/register writes, other peripherals
    }

    return 0; // no result from function (expect one from register write or something)
}

// int __not_in_flash_func(emulate_boot_rom)() {
//     // TODO: Configure stuff
    
//     uint32_t pins = 0;
//     uint16_t addr;
//     uint8_t data;
//     bool is_register_write = false;

//     while(true) {
//         // wait for chip select to go low
// 		while ((pins = gpio_get_all()) & CS_GPIO_MASK);

//         // TODO: Detect R/W pin in future version of hardware

//         if(is_register_write) {
//             // TODO: Handle special register writes
//         }
//         else {
//             // Totally normal cartridge ROM behaviour.
//             SET_DATA_MODE_OUT;

//             addr = (pins & ROMADDR_GPIO_MASK) >> 2; // shift down so it starts at 0
//             // address limited to 0x3fff (8k) because otherwise a14 and a15 from the decode will interfere

//             // FIXME: this modulo hack should not exist. try moving to CS2 and see where we get to

//             // shifted by number of address pins (and also the ESP pins on 0, 1 and GPIO18 for ~CS) - GPIO0 to 18 inclusive = 19 pins
//             gpio_put_masked(DATA_GPIO_MASK, ((uint32_t)(P6_bootrom[addr % 8192])) << 19); // modulo is HACK

//             // wait for select to release (go high)
//             while(!(gpio_get_all() & CS_GPIO_MASK));

//             SET_DATA_MODE_IN;
//         }

//         // TODO: Detect and log crazy address access
//     }

//     return 0;
// }

void __not_in_flash_func(p6_cart_main)() {
    gpio_init_mask(ALL_GPIO_MASK);
    stdio_init_all(); // serial output via printf

    gpio_set_dir_in_masked(ADDR_DATA_GPIO_MASK|ALL_SELECTS_GPIO_MASK); // TODO: Others as they appear
    gpio_set_dir(PIN_ADDRESS_DATA_MODE, true);
    gpio_set_dir(PIN_HIGH_LOW_MODE, true);
    gpio_set_dir(PIN_DATA_IN_OUT, true);

    while(1) {
        int cmd = listen();
    }
}