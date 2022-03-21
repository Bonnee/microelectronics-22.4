Q1
What can you do to solve the problem?
A1
The carry in signal was not used in the sum and the carry out was not
propagated.  
The solution is to add the "carry in" in the sum and extend by one bit the
operands and result signals so that the eventual reminder is not lost and can
be carried out.

Q2
Which is the difference among the three output “S1”, “S2”, “S3”?
A2
All these signals represent the result of A + B.
The S1 signal is updated with the result value without glitches, this is
because the rca is configured with a structural architecture and without delays
in the carry out signals. 
S2 shows glitches in the output because there is a 0.2 ns delay in the carry
out of each full adder. Once the carry signal has propagated to all the adders
the signal becomes stable and solution is correct.
S1 and S3 are functionally identical, even if the implementation is different,
as S1 comes from a structural implementation and S3 from a behavioural one.

Q3
Zoom the waves in the range 24.5ns - 24.6ns: what’s happening to the three outputs?
A3
The result of the sum doesn't fit in 6 bit, so the RCA overflows. In S2 we can
see the intermediate value of S2 before the carry signals are propagated, in
this case this only happens after a delay of 0.2 ns. Before the propagation of
the carry signals their value is influenced by the previous sum.


