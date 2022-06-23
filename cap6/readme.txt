Files:
  6.1:
    Dump Of the layout: ./ex_6.1/SUM_dump.xwd
    Saved Innovus Design: ./ex_6.1/SUM , ./ex_6.1/SUM.dat
    Extracted capacitance: ./ex_6.1/SUM.setload
    Extracted resistance: ./ex_6.1/SUM.setres
    spf/spef file: ./ex_6.1/SUM.[spf|spef]
    delay reports: ./ex_6.1/timingReports/*
  6.2:
    Dump Of the layout: ./ex_6.2/P4_ADDER_NBIT32_screen_dump.xwd
    Saved Innovus Design: ./ex_6.2/P4_ADDER_NBIT32 , ./ex_6.2/P4_ADDER_NBIT32.dat
    Extracted capacitance: ./ex_6.2/reports/P4_ADDER_NBIT32.setload
    Extracted resistance: ./ex_6.2/reports/P4_ADDER_NBIT32.setres
    spf/spef file: ./ex_6.2/reports/P4_ADDER_NBIT32.[spf|spef]
    delay reports: ./ex_6.2/timingReports/*
  6.3:
    Dump Of the layout: ./ex_6.3/BOOTHMUL.xwd
    Saved Innovus Design: ./ex_6.3/BOOTHMUL_NBIT8 , ./ex_6.3/BOOTHMUL_NBIT8.dat
    Extracted capacitance: ./ex_6.3/BOOTHMUL_NBIT8.setload
    Extracted resistance: ./ex_6.3/BOOTHMUL_NBIT8.setres
    spf/spef file: ./ex_6.3/BOOTHMUL_NBIT8.[spf|spef]
    delay reports: ./ex_6.3/timingReports/*


Question 1) What does this rectangle represent for the foundry that is going to produce your chip?
  This rectangle will represent an area on the respecitve metal layer where the
 superface will not be etched/or where the metal will be deposed.

Question 2.1) Once done, look at the file SUM.spf (spf means Standard Parasitics Format): what does it
represent? Note the .subckt instruction and the “net section” at the top of the file, and “instance
section” at the bottom.
What about the SUM.spef file? Analyze the contained information and look for the net with
the greatest capacitance and the greatest length.
Read the files “SUM.setload” and “SUM.setres”, which will be both used later: what do they 

The spf file describes parasitic data of wires inside the chip.
The spf file in this case containes DSPF formatted data (detailed spf) wich can
be used by spice to simulate the microchip carachteristics.
The spf file is cadence standard while the spef format contained in .spef file is 
an IEEE specification. 

The interpretation of both can be found here
https://en.wikipedia.org/wiki/Standard_Parasitic_Exchange_Format .

Below the answers for each exercise:

ex_6.1
The CLK line is the highest capacitance line with capacitance 0.114051PF. (see ./ex_6.1/clk.gif)
The consecutive one is FE_OFN0_n386 with capacitance 0.016752PF. (see ./ex_6.1/fe.gif)

ex_6.2    
Network from input pin B[23] with capacitance 0.004769PF is the one with greatest capacitance (see ./ex_6.2/b32.gif)

ex_6.3
Network from ENC_3/n35 (3rd Encoder) with a capacitance of 0.008381PF (see ./ex_6.3/enc3.gif)

NOTE: we couldn't find the netwroks with the greatest length because not
available in the report, one could guess that they are the ones with either the
biggest resistance or the networks with the most connections but it's just a
guess that could easily not represent correctly the reality.

The .setload file sets the specified capacitance on the specified ports or nets of the cells. 

The capacitance specified overrides the capcitances from the SPEF files.

The .setres files does the same thing but for the resistance values. 

These values will be later used to compute the net delay.
