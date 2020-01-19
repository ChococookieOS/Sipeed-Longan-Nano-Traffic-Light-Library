# Assembler Library for Sipeed Longan Nano

This library allows for user interaction of push buttons and leds which are connected to the [Sipeed Longan Nano](https://longan.sipeed.com/en/)

## Supported functions

Every function has been split into their own *.S file with an quite self-explanatory name but still:
* enableGPIOClocksAB() : enables the GPIO clocks for the A and B pinbase. This needs to be called before any GPIO action can be performed. Is already called in prepareLEDS()
* prepareLEDS() calls enableGPIOClocksAB() and than sets the led pins specified in the table to output pins.
* prepareInput() sets the push button pins to input pins.
* turnCOLOROn() sets the corresponding output pin LOW so that current can flow from +5V to GND
* turnCOLOROff() sets the corresponding output pin HIGH so that there is no voltage difference between the pin and +5V


## Wiring

| Pin | Hardware |
| --- | --- | --- |
| 5v | Leds +; Buttons + |
| A8 | Red Led - |
| B15 | Yellow Led - |
| B14 | Green Led - |
| B13 | Button0 - |
| B12 | Button1 - |

## Download latest:
[Click here for latest precompiled release](https://github.com/ChococookieOS/Sipeed-Longan-Nano-Traffic-Light-Library/releases)