# 128x64 GLCD on Proteus using 8051 microcontroller
An implemetantion of a 128 x 64 GLCD using a generic 8051 microcontroller with its simulation on Proteus. The code used in this program is commented in Portuguese.

To compile the code use the SDCC compiler using the following commands.
1. **sdcc main.c**
2. **packihx main.ihx > main.hex**

Upload the **main.hex** in the microcontroller. 

There's also a file called **blink.hex** which contains an example of blinkling LED in the port **P3_0**.
