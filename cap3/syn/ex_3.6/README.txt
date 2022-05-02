Q:What do you think it implements in detail?
A:Is a 4_bit_Adder between a serial Input and a Parallel input.
To do this, it was used a SIPO register (Serial Input - Parallel Output, first in is the MSB and the last LSB) to ¨trasform¨ the serial singal in a parallel one, and we have the data ready after just 3 clock cycles because we take the LSB directly to the input.
After A and B get addded ( B is accumulate in a 4_bit_PIPO register, Parallel Input - Parallel Output), the sum is introduced in a PISO register (Parallel Input - Serial Output, first out is MSB and last LSB), that is enable by the Control Unit when the START C signal is '1', triggered when the sum is ready.

Q:The report that you have here is general for the whole SIPISOALU and you can distinguish three contributions: do you understand the source of these power consumption?
A:We have 3 contributions: 
1- Cell Internal Power, is the power consumed by the cell.
2- Net Switching Power, is the power dissipated in the charge and discharge of net capacitances. 
3- Cell Leakage Power, is the static power caused by unwanted static current in the circuit.

Q:Which is the period used for the power computation here, given that we did not defined any clock signal? The period assumed by default is defined inside the technology library. We can chanfe it and see what  happens to the power report. To which value? We can use for ecample exactly the worst critical path as a limit clock (MAX_PATH).
A:Using the net_only_power report, and using the function f=P/(Vdd^2*Cload*alfa), is possible to find the clock default, that is 2 ns. As the MAX_PATH clock value, we set 0.27 ns.

Q:Compile again and analyze both the new power and timing reports: you should expect that if you force a lower power limit, the maximum delay within the circuit will increase... do you know why?
A: Unexpected, the command set_max_dynamic_power doesn't work. The expected values were that with a less max power , the circuit get syntetyzed to work  "slower", so with a higher delay. But us report shows, with a CLK equal to 10 ns, that with a constrain of 100 uWatt or 0 uWatt as max power, nothing changes. The slack remains the same, and total power too.  
