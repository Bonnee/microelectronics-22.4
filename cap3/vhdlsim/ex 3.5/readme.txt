-Question 4

Is a 4_bit_Adder between a serial Input and a Parallel input.
To do this, it was used a SIPO register (Serial Input - Parallel Output, first in is the MSB and the last LSB) to ¨trasform¨ the serial singal in a parallel one, and we have the data ready after just 3 clock cycles because we take the LSB directly to the input.
After A and B get addded ( B is accumulate in a 4_bit_PIPO register, Parallel Input - Parallel Output), the sum is introduced in a PISO register (Parallel Input - Serial Output, first out is MSB and last LSB), that is enable by the Control Unit when the START C signal is '1', triggered when the sum is ready.
