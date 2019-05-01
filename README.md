# 128x64 GLCD on Proteus using 8051 microcontroller
An implemetantion of a 128 x 64 GLCD using a generic 8051 microcontroller with its simulation on Proteus. The code used in this program is commented in Portuguese.

To compile the code use the SDCC compiler using the following commands.
1. **sdcc main.c**
2. **packihx main.ihx > main.hex**

Upload the **main.hex** in the microcontroller. 

There's also a file called **blink.hex** which contains an example of a blinkling LED in the port **P3_0**.

If you don't know how to upload a .hex file to a microcontroller using Proteus, please watch the video below;
https://www.youtube.com/watch?v=qbkgWiOr4d0

If you're using Linux you can install the SDCC compiler using the following commands.
1. **sudo apt update**
2. **sudo apt install sdcc**

There's also a version for Windows that you can find here http://sdcc.sourceforge.net/snap.php#Windows, but I had problem trying to run the .hex file compiled on Windows, although I was able to generate the .hex, it wasn't running on the simulations.
