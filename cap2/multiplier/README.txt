Q5 `report_timing -nworst 10`: Analyze the report: which are the differences among the paths?
A5: The 10 paths are identical with the same arrival time of 1.99, apart from
some rounding errors inside the path, as can be seen in
mul8-timing-no-opt-10worst.txt at line 53 and 107.

Q6 `timing-topt`: Look at the differences: did something change? Display the critical path and compare it with the
previous results. If there is any improvement, explain why.
A6: The total delay changed from 10.13 to 6.88, not reaching the max_delay value
of 6.74. The new critical path follows a similar path to the non optimized
design. The starting point for the optimized design is A[1], while for the non
optimized is A[0]. The path travels through the negation entity and then in
second encoder. It then travels through all the adders in the chain, reaching
the output S.  Delay gains can be seen inside the encoder, where some components
have been optimized. For example the optimized design uses a multiplexer entity
instead of discrete logic gates.

Q7 `source MUL_t.scr`: Which are the differences with respect to the results obtained before?
A7: using the script is more convenient and saves time compared to the manual
method. Manually doing all the steps can also introduce errors, that can be more
easilly prevented by using a script. If no errors are committed, the results of
using the script are identical to the manual method.

Q8: How was the synthesized managed to obtain a lower delay? Browse the design and see what changed.
Look at the saved VHDL netlist as well and see the used components.
A8: