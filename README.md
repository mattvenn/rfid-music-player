# rfid music player

## components

* teensy 3.2
* adafruit i2s amp
* rfid rc522 reader
* sd card breakout
* string of leds - currently ws2812, but need to switch to a clocked version for
 compatibility with audio library.

## pin allocations

    teensy          i/o
    6               led data out
    7               mosi sd and rfid reader
    9               i2s bclk
    10              cs sd card
    12              miso sd and rfid


    14              sck sd and rfid
    15              rfid cs
    16              rfid reset
    21 (A7)         vol pot in
    22              i2s din
    23              i2s lrc

    3.3v            rfid psu and positive vol pot
    vin (5v)        i2s amp psu, led string +5v
    

## sd pinout

    1           n/c
    2           cs
    3           mosi    
    4           3.3v
    5           clk
    6           gnd
    7           miso
    8           n/c
