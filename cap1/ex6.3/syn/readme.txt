In the structural architecture the netlist mirrors the definition in the source vhdl.
The RCA in the behavioural implementation uses one less full adder compared to
the structural implementation. Instead, since the first carry in signal is not
needed, only a XOR gate is used to perform the sum of the first bit, while a AND
provides the carry in signal for the second bit.

The multiplexer in the structural architecture is done using the VHDL reference
netlist, using an inverter and a NAND. In the behavioural implementation the
multiplexer is done with a standard multiplexer cell.
