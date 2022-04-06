2.1.5
################## QUESTION 1 ###################
Analyze the report: which are the differences among the paths?

The worst 10 cases have have the same arrival time, because they experience a similar critical path.
The critical path start from A[0] till the S[32-i] bit (i in [32-10,31]). 
These paths all undergo the same amount of gates, the biggest chain beeing the carry ripple from the carry genertation network.
The ripple is the propagation of the carry through the carry generate blocks.
Below the comparisons of all delays in each of the 10 worst critical paths (see that the timing is the same).

A[0] S[22]     A[0] S[23]    a[0] s[24]      a[0] s[25]   | A[0] S[26]   | A[0] S[27]   | A[0] S[28]   | A[0] S[29]   | A[0] S[30]   | A[0] S[31]  
0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f 
0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f 

0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f 
0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f | 0.00  0.00 f 
0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f | 0.07  0.07 f 
0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f 

0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f | 0.00  0.07 f 

0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r | 0.04  0.11 r 

0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f | 0.02  0.14 f 
             |              |                             |              |              |              |              |              | 
0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f 
             |              |              |              |              |              |              |              |              |              
0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f | 0.00  0.14 f 
             |              |              |              |              |              |              |              |              |              
0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r | 0.04  0.18 r 
             |              |              |              |              |              |              |              |              |              
0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f | 0.02  0.20 f 
0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f 
             |              |              |              |              |              |              |              |              |              
0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f | 0.00  0.20 f 
             |              |              |              |              |              |              |              |              |              
0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r | 0.04  0.25 r 
             |              |              |              |              |              |              |              |              |              
0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f | 0.04  0.29 f 
0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f 
0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f | 0.00  0.29 f 
0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r | 0.05  0.34 r 
0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f | 0.04  0.39 f 
0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f 
0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f | 0.00  0.39 f 
             |              |              |              |              |              |              |              |              |              
0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r | 0.06  0.45 r 
0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f | 0.05  0.50 f 
0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f 
0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f | 0.00  0.50 f 
             |              |              |              |              |              |              |              |              |              
0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r | 0.06  0.56 r 
0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f | 0.04  0.60 f 
0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f 

0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f 

0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f 
0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f | 0.00  0.60 f 
0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r | 0.07  0.66 r 
0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r 

0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r | 0.00  0.66 r 
0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r | 0.00  0.67 r 


################## QUESTION 2 ###################
Look at the differences: did something change? Display the critical path and compare it with the
previous results. If there is any improvement, explain why.

The maximum delay changed from 0.67 to 0.54 that is the timing constraint set in the previous step.
Now the critical path does not traverse the full chain of carry generate blocks (ripple) that provide the carry, but cuts at the carry generate of the 11th bit.
The time constarint optimized the logic cells of some blocks that are connected to the entities which provide carry after the 11 bit.


 Example for NBIT:32
                          <--------    │  -------> B[31:0]A[31:0]
                          optimized    │ non optimized     │      │
     ┌─────────────────────────────────│───────────────────▼───── ▼────┐
     │    B32                          │                               │
     │  A32 │  ...                     │                 ...  A0 B0    │
     │    │ │                          │                       │ │     │
     │   ┌▼─▼──────────────────────────│───────────────────────▼─▼┐    │
     │   │                             │                          ◄──┬─┼─Cin
     │C7 │                Carry Generat│or    Carry 4bit          │  │ │
 Cout◄───┤                             │                          │  │ │
     │G31└────┬──────┬──────┬──────┬───│───┬──────┬──────┬────────┘  │ │
     │        │C6    │C5    │C4    │C3 │   │C2    │C1    │C0    ┌────┘ │
     │ B[31:4]│      │      │      │   │   │      │      │B[3:0]│      │
     │ A[31:4]│      │      │      │   │   │      │      │A[3:0]│      │
     │ │      │G27   │G23   │G19   │G15│   │G11   │ G7   │G3│ │ │Cin   │
     │ │ ┌────▼──────▼──────▼──────▼───│───▼──────▼──────▼─┐▼─▼─▼─┐    │
     │ ├─►                             │                   │ RCA  │    │
     │ └─►                 Sum Generato│r                  │      │    │
     │   │                             │                   │ 4bit │    │
     │   └────────────────┬────────────│───────────────────┴┬─────┘    │
    S◄──────────────────+◄┘ S[31:4]    │                    │S[3:0]    │
     │                  ^──────────────│────────────────────┘          │
     └─────────────────────────────────│───────────────────────────────┘
                                       │
                                     
The optimization can be seen in the schematic view for some entities that are after the previous line.
For ex. the G blocks in the carry network are normally sinthesyzed as 
Gblock[i:j]=Gik or (Pik and Gk-1j)
but after optimization the G[27:0] is synthesized 
Gblock[27:j]=not(Gi) nand (Gk nand Pi)
Wich is the same logic as  before but in nand ports.
A speculation on this change is that nands are faster than the normal and,or logics therefore the previous critical path is now faster and no more the slowest one.
In fact the current slowest critical path is the one from port B[0] to port S[8]

################## QUESTION 3 ###################
Which are the differences with respect to the results obtained before?

We found no difference since we used a script to generate all the results see P4_ADDER_synth.scr


################## QUESTION 4 ###################
Look at answer 2.
The vhdl netlist is unreadable (4777 lines) but the used components are:

grep "component " P4_ADDER_32bit-structural-topt.vhdl | sort | uniq -i

component AND2_X1
component AOI21_X1
component AOI22_X1
component BUF_X1
component BUF_X2
component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4_2
component CLKBUF_X1
component CSB_NBIT4_1_0
component CSB_NBIT4_1_1
component CSB_NBIT4_1_2
component CSB_NBIT4_1_3
component CSB_NBIT4_1_4
component CSB_NBIT4_1_5
component CSB_NBIT4_1_6
component FA_X1
component GG_37
component GG_38
component GG_39
component GG_40
component GG_41
component GG_42
component GG_43
component GG_44
component GG_45
component GG_46
component GG_47
component GG_48
component GG_49
component GG_50
component GG_51
component GG_52
component GG_53
component GG_54
component GG_55
component GG_56
component GG_57
component GG_58
component GG_59
component GG_60
component GG_61
component GG_62
component GG_63
component GG_64
component GG_65
component GG_66
component GG_67
component GG_68
component GG_69
component GG_70
component GG_71
component GG_72
component GG_73
component gp_27
component gp_28
component gp_29
component gp_30
component gp_31
component gp_32
component gp_33
component gp_34
component gp_35
component gp_36
component gp_37
component gp_38
component gp_39
component gp_40
component gp_41
component gp_42
component gp_43
component gp_44
component gp_45
component gp_46
component gp_47
component gp_48
component gp_49
component gp_50
component gp_51
component gp_52
component gp_53
component INV_X1
component MUX2_X1
component NAND2_X1
component PG_PRIM_32
component PG_PRIM_33
component PG_PRIM_34
component PG_PRIM_35
component PG_PRIM_36
component PG_PRIM_37
component PG_PRIM_38
component PG_PRIM_39
component PG_PRIM_40
component PG_PRIM_41
component PG_PRIM_42
component PG_PRIM_43
component PG_PRIM_44
component PG_PRIM_45
component PG_PRIM_46
component PG_PRIM_47
component PG_PRIM_48
component PG_PRIM_49
component PG_PRIM_50
component PG_PRIM_51
component PG_PRIM_52
component PG_PRIM_53
component PG_PRIM_54
component PG_PRIM_55
component PG_PRIM_56
component PG_PRIM_57
component PG_PRIM_58
component PG_PRIM_59
component PG_PRIM_60
component PG_PRIM_61
component PG_PRIM_62
component PG_PRIM_63
component RCA_NBIT4_2_0
component RCA_NBIT4_2_1
component RCA_NBIT4_2_10
component RCA_NBIT4_2_11
component RCA_NBIT4_2_12
component RCA_NBIT4_2_13
component RCA_NBIT4_2_14
component RCA_NBIT4_2_2
component RCA_NBIT4_2_3
component RCA_NBIT4_2_4
component RCA_NBIT4_2_5
component RCA_NBIT4_2_6
component RCA_NBIT4_2_7
component RCA_NBIT4_2_8
component RCA_NBIT4_2_9
component SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7_2
component XOR2_X1

mainly inverters, buffers, multiplexers, full adders ... and then the original entities that inclue these primitives: pg primitives, G/GP blocks, RCAs etc..
