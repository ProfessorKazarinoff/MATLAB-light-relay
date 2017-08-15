# MATLAB-light-relay
A student project for ENGR114 at Portland Community College. Uses MATLAB connected to an Arudino over serial to control a relay that swithes a light on and off.

## Problem Statement
The objective was to find a way to turn a light on and off by using the Arduino micro controller
and interfacing the Arduino software with Mat lab. We set out to have a user input HIGH or LOW
inputs into mat lab which would be read by the Arduino software and subsequently run a current
through the relay to operate the light. Additionally, our mat lab code tracks the amount of time
the light is on per on/off cycle while the mat lab program is running and when the user closes
the serial port through mat lab a bar chart is shown of the time per on/off iteration the light was
on.

## Hardware Setup

### Bill of Materials
|component|vendor|
|---|---|
|Arduino|[SparkFun RedBoard - Programmed with Arduino](https://www.sparkfun.com/products/13975)|
|Relay|[SparkFun Beefcake Relay Control Kit (Ver. 2.0)](https://www.sparkfun.com/products/13815)|
|Jumper wires|[Jumper Wires Premium 6" M/M Pack of 10](https://www.sparkfun.com/products/8431 )|
|Mini-B USB cable|[SparkFun USB Mini-B Cable - 6 Foot](https://www.sparkfun.com/products/11301)|
|Enclosure|[Big Red Box - Enclosure](https://www.sparkfun.com/products/11366)|
|extension cord male end||Recieved from the PCC Engineering Lab|
|extension cord femail end|Recieved from PCC Engineering Lab|
|Wire Nuts|Recied from PCC Engineering Lab|
|Standoffs|[Black Nylon Screw and Stand-off Set – M2.5 Thread](https://www.adafruit.com/product/3299)|

### Assembly of Light Relay Components :

**Step 1:** Lay out all the components on the relay board following the instruction from 
https://learn.sparkfun.com/tutorials/beefcake-relay-control-hookup-guide?_ga=2.126438346.678827907.1495830299-657127905.1456517273
and solder all components in place. 

![image1](/doc/light_relay1rev2.jpg "Title Text 1")


**Step 2:** Prepare the box by drilling two holes on either end for the power cord. Also cut out two access holes for the USB and adapter cables.

![alt text](/doc/light_relay2.jpg "Logo Title Text 1")

**Step 3:** Temporarily install stand-offs on the red board and relay board; add a small drop of super glue then position inside box with outlets towards previously made cut-outs.

**Step 4:** Feed the power cables inside the box. Connect the two white (neutral) wires together and the two green (ground) wires together with wire nuts. Then feed the two black (hot) wires into the blue terminal block (high voltage side) of the relay into the two right-hand most slots (order depends on the code order, but CO - common and NO - normally open are the best options).

![alt text](/doc/light_relay3.jpg "Logo Title Text 1")

**Step 5:** Connect the three low voltage jumper wires between the Arduino and relay (low voltage side) as shown below:

![alt text](/doc/fritzing_light_relay.png "Logo Title Text 1")

**Step 6:** Tuck in all loose wires and create a loop in the power cord and secure with zip ties to provide strain relief.

**Step 7:** Screw on lid to complete.

## Arduino Code

The [light_relay.ino](light_relay.ino) sketch was uploaded on the Arduino using the Arduino IDE.

## MATLAB Code

The [light_relay.m](light_relay.m) script was run in MATLAB.

## Results
![alt text](/doc/results.png "Logo Title Text 1")

## Future Work
Unfortunately, I was unable to figure out a way to depict an animated plot in mat lab of an on/off
light cycle, but my hope is that by tracking the time the light remain on that the overall objective
of having a light source for an aquaponics system that can be controlled remotely and tracks
light data is met. So long as the broad objective relative to the rest of the project is
accomplished, the most valuable improvement to the aquaponics system would be to work to
further automate our component and interface with the light sensor team. Future endeavors
should be made to first automate the day/night cycle for the fish and plants, ideally, the
day/night cycle should mimic a natural cycle that based off the summer/winter solstice. In other
words, the day night cycle needs to increase amount of light leading up to the summer
solstice(maximum light time allowed on this day) and decrease leading up to the
winter(minimum light time allowed).
Additionally, the light relay team could also read data statements from the light sensor team and
write logic statements in the mat lab code such that the aquaponics light will turn off should the
ambient amount of light present in the area of operations be great enough. This hypothetical
feature for the system would greatly reduce the chance for over-exposure in the system and
potentially reduce algae growth.

