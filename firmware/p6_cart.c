#include <string.h>
#include <stdlib.h>

#include "pico/stdlib.h"
#include "hardware/sync.h"

#include "ff.h"
#include "fatfs_disk.h"

#define ALL_GPIO_MASK   	0x3FFFFFFF // 30 IOs 0..29 inclusive
#define ADDR_GPIO_MASK  	0x0003fffc // GPIO 2 .. GPIO 17 inclusive, GPIO 0 and GPIO 1 off
#define CS_GPIO_MASK        0x00040000 // GPIO 18 lights up when CS2 or CS3 are selected
#define DATA_GPIO_MASK  	0x07f80000 // GPIO 19 .. GPIO 26 inclusive

#define SET_DATA_MODE_OUT   gpio_set_dir_out_masked(DATA_GPIO_MASK)
#define SET_DATA_MODE_IN    gpio_set_dir_in_masked(DATA_GPIO_MASK)

#include "p6_bootrom.h"

// FIXME: oops i forgot R/W, I guess we're just going to serve up a ROM

int __not_in_flash_func(emulate_boot_rom)() {
    // TODO: Configure stuff
    
    uint32_t pins = 0;
    uint16_t addr;
    uint8_t data;
    bool is_register_write = false;

    while(true) {
        // wait for chip select to go low
		while ((pins = gpio_get_all()) & CS_GPIO_MASK);

        // TODO: Detect R/W pin in future version of hardware

        if(is_register_write) {
            // TODO: Handle special register writes
        }
        else {
            // Totally normal cartridge ROM behaviour.
            SET_DATA_MODE_OUT;

            //addr = (pins & ADDR_GPIO_MASK) >> 2; // shift down so it starts at 0
            addr = 0; // HACK
            // shifted by number of address pins (and also the ESP pins on 0, 1 and GPIO18 for ~CS) - GPIO0 to 18 inclusive = 19 pins
            gpio_put_masked(DATA_GPIO_MASK, ((uint32_t)(P6_bootrom[addr])) << 19);

            // wait for select to release (go high)
            while(!(gpio_get_all() & CS_GPIO_MASK));

            SET_DATA_MODE_IN;
        }

    }

    return 0;
}

void __not_in_flash_func(p6_cart_main)() {
    gpio_init_mask(ALL_GPIO_MASK);
    stdio_init_all(); // serial output via printf

    gpio_set_dir_in_masked(ADDR_GPIO_MASK|DATA_GPIO_MASK|CS_GPIO_MASK); // TODO: Others as they appear

    while(1) {
        int cmd = emulate_boot_rom();
    }
}