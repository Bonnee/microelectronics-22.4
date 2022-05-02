Q: Analyze the real timing report (rf-timing-clk.txt). Did something change? Do
you understand the meaning of the reported values?
A: Before the creation of the CLK signal, the critical path didn't consider the
propagation delay of the signal through all the registers due to the clock.
After the clock signal is added, otherwise, shows all the delay of the circuit.
The data arrival time passes from 0.09 ns, without a clock setted, to 0.34 ns,
with a clock setted to 2 ns. The report timing now show us how much time goes
by the singular parts of the critical path.  The second part of the table tells
us the delay due to the clock and the library setup time, and shows the max
data arrival time that it possible to use without errors. 

Q: Consider again Figure 3.2, what happens to the combinational paths between
the inputs INs and the first stage of registers (paths in Block 1), or between
the output registers and the outputs OUTs (paths in block 3)?
A: Block 1 and 3 are external to the clocked circuit. For this reason the
constraint applied to the clock does not affect those blocks. In order to
consider them it is necessary to put additional contraints on blocks 1 and 3
and evaluate their timing characteristics separately. In our case, blocks 1 and
3 are not present, thus a further analysis is not required.

