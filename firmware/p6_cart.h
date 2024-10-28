/*
p6picocart
Code for cartridge emulation when attached to a PC-6001
*/

#ifndef __P6_CART_H__
#define __P6_CART_H__

#define P6_A0_PIN 2 // "Address 0" pin, used to check if the PC-6001 is attached and running

void p6_cart_main();

#endif