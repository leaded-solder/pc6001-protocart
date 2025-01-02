# PC-6001 Pico Cartridge
Raspberry Pi Pico based cartridge

# Version History
## v1.2
Refined version of v1.1
 - Add pull-up to data buffer IN/out to make sure it works properly during startup (paranoid)
 - Make address lines always IN using a +3.3v pull-up
 - Bypass caps for 74lvc245 to improve performance (paranoid)

## v1.1 (released)
Adds buffers for address/data multiplexing purposes

## v1.0 (released)
Initial version, unbuffered

# Special Thanks
 * alank2 on the Vintage Computer Festival forum, for measuring his Canyon Climber cartridge
 * thweasel on the FujiNet discord for helping check my design
