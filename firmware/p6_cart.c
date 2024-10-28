#include <string.h>
#include <stdlib.h>

#include "pico/stdlib.h"
#include "hardware/sync.h"

#include "ff.h"
#include "fatfs_disk.h"

#define ALL_GPIO_MASK   	0x3FFFFFFF // 30 IOs
#define ADDR_GPIO_MASK  	0x0003fffc // GPIO 2 .. GPIO 17 inclusive, GPIO 0 and GPIO 1 off
#define DATA_GPIO_MASK  	0x07f80000 // GPIO 19 .. GPIO 26 inclusive

#define CS_GPIO_MASK        0x00040000 // GPIO 18 lights up when CS2 or CS3 are selected

#define SET_DATA_MODE_OUT   gpio_set_dir_out_masked(DATA_GPIO_MASK)
#define SET_DATA_MODE_IN    gpio_set_dir_in_masked(DATA_GPIO_MASK)

#include "p6_bootrom.h"

// FIXME: oops i forgot R/W, I guess we're just going to serve up a ROM

int emulate_boot_rom() {
    // TODO: Configure stuff
    // TODO: Replace rom.h with my test ROM
    // TODO: Read address pins and chip select

    uint32_t pins = 0;
    uint16_t addr;
    uint8_t data;
    bool is_register_write = false;

    while(true) {
        // wait for chip select
		while (((pins = gpio_get_all()) & CS_GPIO_MASK)) ;

        // TODO: Detect R/W pin in future version of hardware

        if(is_register_write) {
            // TODO: Handle special register writes
        }
        else {
            // Totally normal cartridge ROM behaviour.
            SET_DATA_MODE_OUT;

            addr = pins & ADDR_GPIO_MASK;
            gpio_put_masked(DATA_GPIO_MASK, ((uint32_t)(A8PicoCart_rom[addr])) << 13))

            // wait for select to release
            while(!(gpio_get_all() & CS_GPIO_MASK));

            SET_DATA_MODE_IN;
        }

    }

    return 0;
}

void __not_in_flash_func(p6_cart_main)() {
    gpio_init_mask(ALL_GPIO_MASK);

    gpio_set_dir_in_masked(ADDR_GPIO_MASK|DATA_GPIO_MASK|CS_GPIO_MASK); // TODO: Others as they appear

    while(1) {
        int cmd = emulate_boot_rom();
    }
}