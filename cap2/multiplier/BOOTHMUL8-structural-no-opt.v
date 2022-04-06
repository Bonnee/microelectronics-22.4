
module BOOTHENC_NBIT10_i0 ( A_s, A_ns, B, O, A_so, A_nso );
  input [9:0] A_s;
  input [9:0] A_ns;
  input [9:0] B;
  output [9:0] O;
  output [9:0] A_so;
  output [9:0] A_nso;
  wire   \A_s[8] , \A_s[7] , \A_s[6] , \A_s[5] , \A_s[4] , \A_s[3] , \A_s[2] ,
         \A_s[1] , \A_s[0] , \A_ns[8] , \A_ns[7] , \A_ns[6] , \A_ns[5] ,
         \A_ns[4] , \A_ns[3] , \A_ns[2] , \A_ns[1] , \A_ns[0] , n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201;
  assign A_nso[0] = 1'b0;
  assign A_so[0] = 1'b0;
  assign A_so[9] = \A_s[8] ;
  assign \A_s[8]  = A_s[8];
  assign A_so[8] = \A_s[7] ;
  assign \A_s[7]  = A_s[7];
  assign A_so[7] = \A_s[6] ;
  assign \A_s[6]  = A_s[6];
  assign A_so[6] = \A_s[5] ;
  assign \A_s[5]  = A_s[5];
  assign A_so[5] = \A_s[4] ;
  assign \A_s[4]  = A_s[4];
  assign A_so[4] = \A_s[3] ;
  assign \A_s[3]  = A_s[3];
  assign A_so[3] = \A_s[2] ;
  assign \A_s[2]  = A_s[2];
  assign A_so[2] = \A_s[1] ;
  assign \A_s[1]  = A_s[1];
  assign A_so[1] = \A_s[0] ;
  assign \A_s[0]  = A_s[0];
  assign A_nso[9] = \A_ns[8] ;
  assign \A_ns[8]  = A_ns[8];
  assign A_nso[8] = \A_ns[7] ;
  assign \A_ns[7]  = A_ns[7];
  assign A_nso[7] = \A_ns[6] ;
  assign \A_ns[6]  = A_ns[6];
  assign A_nso[6] = \A_ns[5] ;
  assign \A_ns[5]  = A_ns[5];
  assign A_nso[5] = \A_ns[4] ;
  assign \A_ns[4]  = A_ns[4];
  assign A_nso[4] = \A_ns[3] ;
  assign \A_ns[3]  = A_ns[3];
  assign A_nso[3] = \A_ns[2] ;
  assign \A_ns[2]  = A_ns[2];
  assign A_nso[2] = \A_ns[1] ;
  assign \A_ns[1]  = A_ns[1];
  assign A_nso[1] = \A_ns[0] ;
  assign \A_ns[0]  = A_ns[0];

  INV_X1 U3 ( .A(n177), .ZN(O[9]) );
  AOI222_X1 U4 ( .A1(A_s[9]), .A2(n178), .B1(\A_ns[8] ), .B2(n179), .C1(
        A_ns[9]), .C2(n180), .ZN(n177) );
  INV_X1 U5 ( .A(n181), .ZN(n179) );
  OAI221_X1 U6 ( .B1(n181), .B2(n182), .C1(n183), .C2(n184), .A(n185), .ZN(
        O[8]) );
  NAND2_X1 U7 ( .A1(\A_s[8] ), .A2(n178), .ZN(n185) );
  INV_X1 U8 ( .A(\A_ns[8] ), .ZN(n183) );
  OAI221_X1 U9 ( .B1(n181), .B2(n186), .C1(n184), .C2(n182), .A(n187), .ZN(
        O[7]) );
  NAND2_X1 U10 ( .A1(\A_s[7] ), .A2(n178), .ZN(n187) );
  INV_X1 U11 ( .A(\A_ns[7] ), .ZN(n182) );
  OAI221_X1 U12 ( .B1(n181), .B2(n188), .C1(n184), .C2(n186), .A(n189), .ZN(
        O[6]) );
  NAND2_X1 U13 ( .A1(\A_s[6] ), .A2(n178), .ZN(n189) );
  INV_X1 U14 ( .A(\A_ns[6] ), .ZN(n186) );
  OAI221_X1 U15 ( .B1(n181), .B2(n190), .C1(n184), .C2(n188), .A(n191), .ZN(
        O[5]) );
  NAND2_X1 U16 ( .A1(\A_s[5] ), .A2(n178), .ZN(n191) );
  INV_X1 U17 ( .A(\A_ns[5] ), .ZN(n188) );
  OAI221_X1 U18 ( .B1(n181), .B2(n192), .C1(n184), .C2(n190), .A(n193), .ZN(
        O[4]) );
  NAND2_X1 U19 ( .A1(\A_s[4] ), .A2(n178), .ZN(n193) );
  INV_X1 U20 ( .A(\A_ns[4] ), .ZN(n190) );
  OAI221_X1 U21 ( .B1(n181), .B2(n194), .C1(n184), .C2(n192), .A(n195), .ZN(
        O[3]) );
  NAND2_X1 U22 ( .A1(\A_s[3] ), .A2(n178), .ZN(n195) );
  INV_X1 U23 ( .A(\A_ns[3] ), .ZN(n192) );
  OAI221_X1 U24 ( .B1(n181), .B2(n196), .C1(n184), .C2(n194), .A(n197), .ZN(
        O[2]) );
  NAND2_X1 U25 ( .A1(\A_s[2] ), .A2(n178), .ZN(n197) );
  INV_X1 U26 ( .A(\A_ns[2] ), .ZN(n194) );
  OAI221_X1 U27 ( .B1(n181), .B2(n198), .C1(n184), .C2(n196), .A(n199), .ZN(
        O[1]) );
  NAND2_X1 U28 ( .A1(\A_s[1] ), .A2(n178), .ZN(n199) );
  INV_X1 U29 ( .A(\A_ns[1] ), .ZN(n196) );
  NAND2_X1 U30 ( .A1(B[1]), .A2(n200), .ZN(n181) );
  OAI21_X1 U31 ( .B1(n184), .B2(n198), .A(n201), .ZN(O[0]) );
  NAND2_X1 U32 ( .A1(\A_s[0] ), .A2(n178), .ZN(n201) );
  INV_X1 U33 ( .A(\A_ns[0] ), .ZN(n198) );
  INV_X1 U34 ( .A(n180), .ZN(n184) );
  NOR2_X1 U35 ( .A1(n200), .A2(n178), .ZN(n180) );
  NOR2_X1 U36 ( .A1(n200), .A2(B[1]), .ZN(n178) );
  INV_X1 U37 ( .A(B[0]), .ZN(n200) );
endmodule


module BOOTHENC_NBIT12_i2 ( A_s, A_ns, B, O, A_so, A_nso );
  input [11:0] A_s;
  input [11:0] A_ns;
  input [11:0] B;
  output [11:0] O;
  output [11:0] A_so;
  output [11:0] A_nso;
  wire   n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, \A_ns[9] , \A_ns[8] , \A_ns[7] ,
         \A_ns[6] , \A_ns[5] , \A_ns[4] , \A_ns[3] , \A_ns[2] , \A_ns[1] ,
         \A_ns[0] , \A_s[9] , \A_s[8] , \A_s[7] , \A_s[6] , \A_s[5] , \A_s[4] ,
         \A_s[3] , \A_s[2] , \A_s[1] , \A_s[0] ;
  assign A_nso[11] = \A_ns[9] ;
  assign \A_ns[9]  = A_ns[9];
  assign A_nso[10] = \A_ns[8] ;
  assign \A_ns[8]  = A_ns[8];
  assign A_nso[9] = \A_ns[7] ;
  assign \A_ns[7]  = A_ns[7];
  assign A_nso[8] = \A_ns[6] ;
  assign \A_ns[6]  = A_ns[6];
  assign A_nso[7] = \A_ns[5] ;
  assign \A_ns[5]  = A_ns[5];
  assign A_nso[6] = \A_ns[4] ;
  assign \A_ns[4]  = A_ns[4];
  assign A_nso[5] = \A_ns[3] ;
  assign \A_ns[3]  = A_ns[3];
  assign A_nso[4] = \A_ns[2] ;
  assign \A_ns[2]  = A_ns[2];
  assign A_nso[3] = \A_ns[1] ;
  assign \A_ns[1]  = A_ns[1];
  assign A_nso[2] = \A_ns[0] ;
  assign \A_ns[0]  = A_ns[0];
  assign A_so[11] = \A_s[9] ;
  assign \A_s[9]  = A_s[9];
  assign A_so[10] = \A_s[8] ;
  assign \A_s[8]  = A_s[8];
  assign A_so[9] = \A_s[7] ;
  assign \A_s[7]  = A_s[7];
  assign A_so[8] = \A_s[6] ;
  assign \A_s[6]  = A_s[6];
  assign A_so[7] = \A_s[5] ;
  assign \A_s[5]  = A_s[5];
  assign A_so[6] = \A_s[4] ;
  assign \A_s[4]  = A_s[4];
  assign A_so[5] = \A_s[3] ;
  assign \A_s[3]  = A_s[3];
  assign A_so[4] = \A_s[2] ;
  assign \A_s[2]  = A_s[2];
  assign A_so[3] = \A_s[1] ;
  assign \A_s[1]  = A_s[1];
  assign A_so[2] = \A_s[0] ;
  assign \A_s[0]  = A_s[0];
  assign A_nso[0] = 1'b0;
  assign A_nso[1] = 1'b0;
  assign A_so[0] = 1'b0;
  assign A_so[1] = 1'b0;
  assign O[0] = 1'b0;

  NOR3_X2 U2 ( .A1(B[1]), .A2(B[2]), .A3(n298), .ZN(n268) );
  OAI22_X1 U3 ( .A1(n261), .A2(n262), .B1(n263), .B2(n264), .ZN(O[1]) );
  OAI221_X1 U4 ( .B1(n263), .B2(n265), .C1(n261), .C2(n266), .A(n267), .ZN(
        O[9]) );
  AOI22_X1 U5 ( .A1(\A_ns[7] ), .A2(n268), .B1(\A_s[7] ), .B2(n269), .ZN(n267)
         );
  OAI221_X1 U6 ( .B1(n263), .B2(n270), .C1(n261), .C2(n271), .A(n272), .ZN(
        O[8]) );
  AOI22_X1 U7 ( .A1(\A_ns[6] ), .A2(n268), .B1(\A_s[6] ), .B2(n269), .ZN(n272)
         );
  INV_X1 U8 ( .A(\A_s[7] ), .ZN(n271) );
  INV_X1 U9 ( .A(\A_ns[7] ), .ZN(n270) );
  OAI221_X1 U10 ( .B1(n263), .B2(n273), .C1(n261), .C2(n274), .A(n275), .ZN(
        O[7]) );
  AOI22_X1 U11 ( .A1(\A_ns[5] ), .A2(n268), .B1(\A_s[5] ), .B2(n269), .ZN(n275) );
  INV_X1 U12 ( .A(\A_s[6] ), .ZN(n274) );
  INV_X1 U13 ( .A(\A_ns[6] ), .ZN(n273) );
  OAI221_X1 U14 ( .B1(n263), .B2(n276), .C1(n261), .C2(n277), .A(n278), .ZN(
        O[6]) );
  AOI22_X1 U15 ( .A1(\A_ns[4] ), .A2(n268), .B1(\A_s[4] ), .B2(n269), .ZN(n278) );
  INV_X1 U16 ( .A(\A_s[5] ), .ZN(n277) );
  INV_X1 U17 ( .A(\A_ns[5] ), .ZN(n276) );
  OAI221_X1 U18 ( .B1(n263), .B2(n279), .C1(n261), .C2(n280), .A(n281), .ZN(
        O[5]) );
  AOI22_X1 U19 ( .A1(\A_ns[3] ), .A2(n268), .B1(\A_s[3] ), .B2(n269), .ZN(n281) );
  INV_X1 U20 ( .A(\A_s[4] ), .ZN(n280) );
  INV_X1 U21 ( .A(\A_ns[4] ), .ZN(n279) );
  OAI221_X1 U22 ( .B1(n263), .B2(n282), .C1(n261), .C2(n283), .A(n284), .ZN(
        O[4]) );
  AOI22_X1 U23 ( .A1(\A_ns[2] ), .A2(n268), .B1(\A_s[2] ), .B2(n269), .ZN(n284) );
  INV_X1 U24 ( .A(\A_s[3] ), .ZN(n283) );
  INV_X1 U25 ( .A(\A_ns[3] ), .ZN(n282) );
  OAI221_X1 U26 ( .B1(n263), .B2(n285), .C1(n261), .C2(n286), .A(n287), .ZN(
        O[3]) );
  AOI22_X1 U27 ( .A1(\A_ns[1] ), .A2(n268), .B1(\A_s[1] ), .B2(n269), .ZN(n287) );
  INV_X1 U28 ( .A(n288), .ZN(n269) );
  INV_X1 U29 ( .A(\A_s[2] ), .ZN(n286) );
  INV_X1 U30 ( .A(\A_ns[2] ), .ZN(n285) );
  OAI221_X1 U31 ( .B1(n264), .B2(n289), .C1(n262), .C2(n288), .A(n290), .ZN(
        O[2]) );
  AOI22_X1 U32 ( .A1(\A_ns[1] ), .A2(n291), .B1(\A_s[1] ), .B2(n292), .ZN(n290) );
  INV_X1 U33 ( .A(\A_s[0] ), .ZN(n262) );
  INV_X1 U34 ( .A(\A_ns[0] ), .ZN(n264) );
  OAI221_X1 U35 ( .B1(n289), .B2(n293), .C1(n288), .C2(n294), .A(n295), .ZN(
        O[11]) );
  AOI22_X1 U36 ( .A1(A_ns[10]), .A2(n291), .B1(A_s[10]), .B2(n292), .ZN(n295)
         );
  INV_X1 U37 ( .A(\A_s[9] ), .ZN(n294) );
  INV_X1 U38 ( .A(\A_ns[9] ), .ZN(n293) );
  OAI221_X1 U39 ( .B1(n265), .B2(n289), .C1(n266), .C2(n288), .A(n296), .ZN(
        O[10]) );
  AOI22_X1 U40 ( .A1(\A_ns[9] ), .A2(n291), .B1(\A_s[9] ), .B2(n292), .ZN(n296) );
  INV_X1 U41 ( .A(n261), .ZN(n292) );
  NAND2_X1 U42 ( .A1(n297), .A2(n298), .ZN(n261) );
  INV_X1 U43 ( .A(n263), .ZN(n291) );
  NAND2_X1 U44 ( .A1(B[3]), .A2(n297), .ZN(n263) );
  XOR2_X1 U45 ( .A(B[1]), .B(B[2]), .Z(n297) );
  NAND3_X1 U46 ( .A1(B[2]), .A2(n298), .A3(B[1]), .ZN(n288) );
  INV_X1 U47 ( .A(\A_s[8] ), .ZN(n266) );
  INV_X1 U48 ( .A(n268), .ZN(n289) );
  INV_X1 U49 ( .A(B[3]), .ZN(n298) );
  INV_X1 U50 ( .A(\A_ns[8] ), .ZN(n265) );
endmodule


module BOOTHENC_NBIT14_i4 ( A_s, A_ns, B, O, A_so, A_nso );
  input [13:0] A_s;
  input [13:0] A_ns;
  input [13:0] B;
  output [13:0] O;
  output [13:0] A_so;
  output [13:0] A_nso;
  wire   n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         \A_ns[11] , \A_ns[10] , \A_ns[9] , \A_ns[8] , \A_ns[7] , \A_ns[6] ,
         \A_ns[5] , \A_ns[4] , \A_ns[3] , \A_ns[2] , \A_ns[1] , \A_ns[0] ,
         \A_s[11] , \A_s[10] , \A_s[9] , \A_s[8] , \A_s[7] , \A_s[6] ,
         \A_s[5] , \A_s[4] , \A_s[3] , \A_s[2] , \A_s[1] , \A_s[0] ;
  assign A_nso[13] = \A_ns[11] ;
  assign \A_ns[11]  = A_ns[11];
  assign A_nso[12] = \A_ns[10] ;
  assign \A_ns[10]  = A_ns[10];
  assign A_nso[11] = \A_ns[9] ;
  assign \A_ns[9]  = A_ns[9];
  assign A_nso[10] = \A_ns[8] ;
  assign \A_ns[8]  = A_ns[8];
  assign A_nso[9] = \A_ns[7] ;
  assign \A_ns[7]  = A_ns[7];
  assign A_nso[8] = \A_ns[6] ;
  assign \A_ns[6]  = A_ns[6];
  assign A_nso[7] = \A_ns[5] ;
  assign \A_ns[5]  = A_ns[5];
  assign A_nso[6] = \A_ns[4] ;
  assign \A_ns[4]  = A_ns[4];
  assign A_nso[5] = \A_ns[3] ;
  assign \A_ns[3]  = A_ns[3];
  assign A_nso[4] = \A_ns[2] ;
  assign \A_ns[2]  = A_ns[2];
  assign A_nso[3] = \A_ns[1] ;
  assign \A_ns[1]  = A_ns[1];
  assign A_nso[2] = \A_ns[0] ;
  assign \A_ns[0]  = A_ns[0];
  assign A_so[13] = \A_s[11] ;
  assign \A_s[11]  = A_s[11];
  assign A_so[12] = \A_s[10] ;
  assign \A_s[10]  = A_s[10];
  assign A_so[11] = \A_s[9] ;
  assign \A_s[9]  = A_s[9];
  assign A_so[10] = \A_s[8] ;
  assign \A_s[8]  = A_s[8];
  assign A_so[9] = \A_s[7] ;
  assign \A_s[7]  = A_s[7];
  assign A_so[8] = \A_s[6] ;
  assign \A_s[6]  = A_s[6];
  assign A_so[7] = \A_s[5] ;
  assign \A_s[5]  = A_s[5];
  assign A_so[6] = \A_s[4] ;
  assign \A_s[4]  = A_s[4];
  assign A_so[5] = \A_s[3] ;
  assign \A_s[3]  = A_s[3];
  assign A_so[4] = \A_s[2] ;
  assign \A_s[2]  = A_s[2];
  assign A_so[3] = \A_s[1] ;
  assign \A_s[1]  = A_s[1];
  assign A_so[2] = \A_s[0] ;
  assign \A_s[0]  = A_s[0];
  assign A_nso[0] = 1'b0;
  assign A_nso[1] = 1'b0;
  assign A_so[0] = 1'b0;
  assign A_so[1] = 1'b0;
  assign O[0] = 1'b0;

  NOR2_X2 U2 ( .A1(n339), .A2(B[5]), .ZN(n299) );
  NOR2_X2 U3 ( .A1(n340), .A2(n339), .ZN(n300) );
  INV_X1 U4 ( .A(n298), .ZN(O[1]) );
  AOI22_X1 U5 ( .A1(n299), .A2(\A_s[0] ), .B1(n300), .B2(\A_ns[0] ), .ZN(n298)
         );
  OAI221_X1 U6 ( .B1(n301), .B2(n302), .C1(n303), .C2(n304), .A(n305), .ZN(
        O[9]) );
  AOI22_X1 U7 ( .A1(\A_ns[8] ), .A2(n300), .B1(\A_s[8] ), .B2(n299), .ZN(n305)
         );
  INV_X1 U8 ( .A(\A_s[7] ), .ZN(n304) );
  INV_X1 U9 ( .A(\A_ns[7] ), .ZN(n302) );
  OAI221_X1 U10 ( .B1(n301), .B2(n306), .C1(n303), .C2(n307), .A(n308), .ZN(
        O[8]) );
  AOI22_X1 U11 ( .A1(\A_ns[7] ), .A2(n300), .B1(\A_s[7] ), .B2(n299), .ZN(n308) );
  INV_X1 U12 ( .A(\A_s[6] ), .ZN(n307) );
  INV_X1 U13 ( .A(\A_ns[6] ), .ZN(n306) );
  OAI221_X1 U14 ( .B1(n301), .B2(n309), .C1(n303), .C2(n310), .A(n311), .ZN(
        O[7]) );
  AOI22_X1 U15 ( .A1(\A_ns[6] ), .A2(n300), .B1(\A_s[6] ), .B2(n299), .ZN(n311) );
  INV_X1 U16 ( .A(\A_s[5] ), .ZN(n310) );
  INV_X1 U17 ( .A(\A_ns[5] ), .ZN(n309) );
  OAI221_X1 U18 ( .B1(n301), .B2(n312), .C1(n303), .C2(n313), .A(n314), .ZN(
        O[6]) );
  AOI22_X1 U19 ( .A1(\A_ns[5] ), .A2(n300), .B1(\A_s[5] ), .B2(n299), .ZN(n314) );
  INV_X1 U20 ( .A(\A_s[4] ), .ZN(n313) );
  INV_X1 U21 ( .A(\A_ns[4] ), .ZN(n312) );
  OAI221_X1 U22 ( .B1(n301), .B2(n315), .C1(n303), .C2(n316), .A(n317), .ZN(
        O[5]) );
  AOI22_X1 U23 ( .A1(\A_ns[4] ), .A2(n300), .B1(\A_s[4] ), .B2(n299), .ZN(n317) );
  INV_X1 U24 ( .A(\A_s[3] ), .ZN(n316) );
  INV_X1 U25 ( .A(\A_ns[3] ), .ZN(n315) );
  OAI221_X1 U26 ( .B1(n301), .B2(n318), .C1(n303), .C2(n319), .A(n320), .ZN(
        O[4]) );
  AOI22_X1 U27 ( .A1(\A_ns[3] ), .A2(n300), .B1(\A_s[3] ), .B2(n299), .ZN(n320) );
  INV_X1 U28 ( .A(\A_s[2] ), .ZN(n319) );
  INV_X1 U29 ( .A(\A_ns[2] ), .ZN(n318) );
  OAI221_X1 U30 ( .B1(n301), .B2(n321), .C1(n303), .C2(n322), .A(n323), .ZN(
        O[3]) );
  AOI22_X1 U31 ( .A1(\A_ns[2] ), .A2(n300), .B1(\A_s[2] ), .B2(n299), .ZN(n323) );
  INV_X1 U32 ( .A(\A_s[1] ), .ZN(n322) );
  INV_X1 U33 ( .A(\A_ns[1] ), .ZN(n321) );
  OAI221_X1 U34 ( .B1(n324), .B2(n301), .C1(n325), .C2(n303), .A(n326), .ZN(
        O[2]) );
  AOI22_X1 U35 ( .A1(\A_ns[1] ), .A2(n300), .B1(\A_s[1] ), .B2(n299), .ZN(n326) );
  INV_X1 U36 ( .A(\A_s[0] ), .ZN(n325) );
  INV_X1 U37 ( .A(\A_ns[0] ), .ZN(n324) );
  OAI221_X1 U38 ( .B1(n301), .B2(n327), .C1(n303), .C2(n328), .A(n329), .ZN(
        O[13]) );
  AOI22_X1 U39 ( .A1(A_ns[12]), .A2(n300), .B1(A_s[12]), .B2(n299), .ZN(n329)
         );
  INV_X1 U40 ( .A(\A_s[11] ), .ZN(n328) );
  INV_X1 U41 ( .A(\A_ns[11] ), .ZN(n327) );
  OAI221_X1 U42 ( .B1(n301), .B2(n330), .C1(n303), .C2(n331), .A(n332), .ZN(
        O[12]) );
  AOI22_X1 U43 ( .A1(\A_ns[11] ), .A2(n300), .B1(\A_s[11] ), .B2(n299), .ZN(
        n332) );
  INV_X1 U44 ( .A(\A_s[10] ), .ZN(n331) );
  INV_X1 U45 ( .A(\A_ns[10] ), .ZN(n330) );
  OAI221_X1 U46 ( .B1(n301), .B2(n333), .C1(n303), .C2(n334), .A(n335), .ZN(
        O[11]) );
  AOI22_X1 U47 ( .A1(\A_ns[10] ), .A2(n300), .B1(\A_s[10] ), .B2(n299), .ZN(
        n335) );
  INV_X1 U48 ( .A(\A_s[9] ), .ZN(n334) );
  INV_X1 U49 ( .A(\A_ns[9] ), .ZN(n333) );
  OAI221_X1 U50 ( .B1(n336), .B2(n301), .C1(n337), .C2(n303), .A(n338), .ZN(
        O[10]) );
  AOI22_X1 U51 ( .A1(\A_ns[9] ), .A2(n300), .B1(\A_s[9] ), .B2(n299), .ZN(n338) );
  NAND3_X1 U52 ( .A1(B[4]), .A2(n340), .A3(B[3]), .ZN(n303) );
  INV_X1 U53 ( .A(B[5]), .ZN(n340) );
  INV_X1 U54 ( .A(\A_s[8] ), .ZN(n337) );
  NAND3_X1 U55 ( .A1(B[5]), .A2(n341), .A3(n339), .ZN(n301) );
  XNOR2_X1 U56 ( .A(B[3]), .B(B[4]), .ZN(n339) );
  INV_X1 U57 ( .A(B[3]), .ZN(n341) );
  INV_X1 U58 ( .A(\A_ns[8] ), .ZN(n336) );
endmodule


module BOOTHENC_NBIT16_i6 ( A_s, A_ns, B, O, A_so, A_nso );
  input [15:0] A_s;
  input [15:0] A_ns;
  input [15:0] B;
  output [15:0] O;
  output [15:0] A_so;
  output [15:0] A_nso;
  wire   n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, \A_ns[13] , \A_ns[12] ,
         \A_ns[11] , \A_ns[10] , \A_ns[9] , \A_ns[8] , \A_ns[7] , \A_ns[6] ,
         \A_ns[5] , \A_ns[4] , \A_ns[3] , \A_ns[2] , \A_ns[1] , \A_ns[0] ,
         \A_s[13] , \A_s[12] , \A_s[11] , \A_s[10] , \A_s[9] , \A_s[8] ,
         \A_s[7] , \A_s[6] , \A_s[5] , \A_s[4] , \A_s[3] , \A_s[2] , \A_s[1] ,
         \A_s[0] ;
  assign A_nso[15] = \A_ns[13] ;
  assign \A_ns[13]  = A_ns[13];
  assign A_nso[14] = \A_ns[12] ;
  assign \A_ns[12]  = A_ns[12];
  assign A_nso[13] = \A_ns[11] ;
  assign \A_ns[11]  = A_ns[11];
  assign A_nso[12] = \A_ns[10] ;
  assign \A_ns[10]  = A_ns[10];
  assign A_nso[11] = \A_ns[9] ;
  assign \A_ns[9]  = A_ns[9];
  assign A_nso[10] = \A_ns[8] ;
  assign \A_ns[8]  = A_ns[8];
  assign A_nso[9] = \A_ns[7] ;
  assign \A_ns[7]  = A_ns[7];
  assign A_nso[8] = \A_ns[6] ;
  assign \A_ns[6]  = A_ns[6];
  assign A_nso[7] = \A_ns[5] ;
  assign \A_ns[5]  = A_ns[5];
  assign A_nso[6] = \A_ns[4] ;
  assign \A_ns[4]  = A_ns[4];
  assign A_nso[5] = \A_ns[3] ;
  assign \A_ns[3]  = A_ns[3];
  assign A_nso[4] = \A_ns[2] ;
  assign \A_ns[2]  = A_ns[2];
  assign A_nso[3] = \A_ns[1] ;
  assign \A_ns[1]  = A_ns[1];
  assign A_nso[2] = \A_ns[0] ;
  assign \A_ns[0]  = A_ns[0];
  assign A_so[15] = \A_s[13] ;
  assign \A_s[13]  = A_s[13];
  assign A_so[14] = \A_s[12] ;
  assign \A_s[12]  = A_s[12];
  assign A_so[13] = \A_s[11] ;
  assign \A_s[11]  = A_s[11];
  assign A_so[12] = \A_s[10] ;
  assign \A_s[10]  = A_s[10];
  assign A_so[11] = \A_s[9] ;
  assign \A_s[9]  = A_s[9];
  assign A_so[10] = \A_s[8] ;
  assign \A_s[8]  = A_s[8];
  assign A_so[9] = \A_s[7] ;
  assign \A_s[7]  = A_s[7];
  assign A_so[8] = \A_s[6] ;
  assign \A_s[6]  = A_s[6];
  assign A_so[7] = \A_s[5] ;
  assign \A_s[5]  = A_s[5];
  assign A_so[6] = \A_s[4] ;
  assign \A_s[4]  = A_s[4];
  assign A_so[5] = \A_s[3] ;
  assign \A_s[3]  = A_s[3];
  assign A_so[4] = \A_s[2] ;
  assign \A_s[2]  = A_s[2];
  assign A_so[3] = \A_s[1] ;
  assign \A_s[1]  = A_s[1];
  assign A_so[2] = \A_s[0] ;
  assign \A_s[0]  = A_s[0];
  assign A_nso[0] = 1'b0;
  assign A_nso[1] = 1'b0;
  assign A_so[0] = 1'b0;
  assign A_so[1] = 1'b0;
  assign O[0] = 1'b0;

  NOR2_X2 U2 ( .A1(n385), .A2(B[7]), .ZN(n339) );
  NOR2_X2 U3 ( .A1(n386), .A2(n385), .ZN(n340) );
  INV_X1 U4 ( .A(n338), .ZN(O[1]) );
  AOI22_X1 U5 ( .A1(n339), .A2(\A_s[0] ), .B1(n340), .B2(\A_ns[0] ), .ZN(n338)
         );
  OAI221_X1 U6 ( .B1(n341), .B2(n342), .C1(n343), .C2(n344), .A(n345), .ZN(
        O[9]) );
  AOI22_X1 U7 ( .A1(\A_ns[8] ), .A2(n340), .B1(\A_s[8] ), .B2(n339), .ZN(n345)
         );
  INV_X1 U8 ( .A(\A_s[7] ), .ZN(n344) );
  INV_X1 U9 ( .A(\A_ns[7] ), .ZN(n342) );
  OAI221_X1 U10 ( .B1(n341), .B2(n346), .C1(n343), .C2(n347), .A(n348), .ZN(
        O[8]) );
  AOI22_X1 U11 ( .A1(\A_ns[7] ), .A2(n340), .B1(\A_s[7] ), .B2(n339), .ZN(n348) );
  INV_X1 U12 ( .A(\A_s[6] ), .ZN(n347) );
  INV_X1 U13 ( .A(\A_ns[6] ), .ZN(n346) );
  OAI221_X1 U14 ( .B1(n341), .B2(n349), .C1(n343), .C2(n350), .A(n351), .ZN(
        O[7]) );
  AOI22_X1 U15 ( .A1(\A_ns[6] ), .A2(n340), .B1(\A_s[6] ), .B2(n339), .ZN(n351) );
  INV_X1 U16 ( .A(\A_s[5] ), .ZN(n350) );
  INV_X1 U17 ( .A(\A_ns[5] ), .ZN(n349) );
  OAI221_X1 U18 ( .B1(n341), .B2(n352), .C1(n343), .C2(n353), .A(n354), .ZN(
        O[6]) );
  AOI22_X1 U19 ( .A1(\A_ns[5] ), .A2(n340), .B1(\A_s[5] ), .B2(n339), .ZN(n354) );
  INV_X1 U20 ( .A(\A_s[4] ), .ZN(n353) );
  INV_X1 U21 ( .A(\A_ns[4] ), .ZN(n352) );
  OAI221_X1 U22 ( .B1(n341), .B2(n355), .C1(n343), .C2(n356), .A(n357), .ZN(
        O[5]) );
  AOI22_X1 U23 ( .A1(\A_ns[4] ), .A2(n340), .B1(\A_s[4] ), .B2(n339), .ZN(n357) );
  INV_X1 U24 ( .A(\A_s[3] ), .ZN(n356) );
  INV_X1 U25 ( .A(\A_ns[3] ), .ZN(n355) );
  OAI221_X1 U26 ( .B1(n341), .B2(n358), .C1(n343), .C2(n359), .A(n360), .ZN(
        O[4]) );
  AOI22_X1 U27 ( .A1(\A_ns[3] ), .A2(n340), .B1(\A_s[3] ), .B2(n339), .ZN(n360) );
  INV_X1 U28 ( .A(\A_s[2] ), .ZN(n359) );
  INV_X1 U29 ( .A(\A_ns[2] ), .ZN(n358) );
  OAI221_X1 U30 ( .B1(n341), .B2(n361), .C1(n343), .C2(n362), .A(n363), .ZN(
        O[3]) );
  AOI22_X1 U31 ( .A1(\A_ns[2] ), .A2(n340), .B1(\A_s[2] ), .B2(n339), .ZN(n363) );
  INV_X1 U32 ( .A(\A_s[1] ), .ZN(n362) );
  INV_X1 U33 ( .A(\A_ns[1] ), .ZN(n361) );
  OAI221_X1 U34 ( .B1(n364), .B2(n341), .C1(n365), .C2(n343), .A(n366), .ZN(
        O[2]) );
  AOI22_X1 U35 ( .A1(\A_ns[1] ), .A2(n340), .B1(\A_s[1] ), .B2(n339), .ZN(n366) );
  INV_X1 U36 ( .A(\A_s[0] ), .ZN(n365) );
  INV_X1 U37 ( .A(\A_ns[0] ), .ZN(n364) );
  OAI221_X1 U38 ( .B1(n341), .B2(n367), .C1(n343), .C2(n368), .A(n369), .ZN(
        O[15]) );
  AOI22_X1 U39 ( .A1(A_ns[14]), .A2(n340), .B1(A_s[14]), .B2(n339), .ZN(n369)
         );
  INV_X1 U40 ( .A(\A_s[13] ), .ZN(n368) );
  INV_X1 U41 ( .A(\A_ns[13] ), .ZN(n367) );
  OAI221_X1 U42 ( .B1(n341), .B2(n370), .C1(n343), .C2(n371), .A(n372), .ZN(
        O[14]) );
  AOI22_X1 U43 ( .A1(\A_ns[13] ), .A2(n340), .B1(\A_s[13] ), .B2(n339), .ZN(
        n372) );
  INV_X1 U44 ( .A(\A_s[12] ), .ZN(n371) );
  INV_X1 U45 ( .A(\A_ns[12] ), .ZN(n370) );
  OAI221_X1 U46 ( .B1(n341), .B2(n373), .C1(n343), .C2(n374), .A(n375), .ZN(
        O[13]) );
  AOI22_X1 U47 ( .A1(\A_ns[12] ), .A2(n340), .B1(\A_s[12] ), .B2(n339), .ZN(
        n375) );
  INV_X1 U48 ( .A(\A_s[11] ), .ZN(n374) );
  INV_X1 U49 ( .A(\A_ns[11] ), .ZN(n373) );
  OAI221_X1 U50 ( .B1(n341), .B2(n376), .C1(n343), .C2(n377), .A(n378), .ZN(
        O[12]) );
  AOI22_X1 U51 ( .A1(\A_ns[11] ), .A2(n340), .B1(\A_s[11] ), .B2(n339), .ZN(
        n378) );
  INV_X1 U52 ( .A(\A_s[10] ), .ZN(n377) );
  INV_X1 U53 ( .A(\A_ns[10] ), .ZN(n376) );
  OAI221_X1 U54 ( .B1(n341), .B2(n379), .C1(n343), .C2(n380), .A(n381), .ZN(
        O[11]) );
  AOI22_X1 U55 ( .A1(\A_ns[10] ), .A2(n340), .B1(\A_s[10] ), .B2(n339), .ZN(
        n381) );
  INV_X1 U56 ( .A(\A_s[9] ), .ZN(n380) );
  INV_X1 U57 ( .A(\A_ns[9] ), .ZN(n379) );
  OAI221_X1 U58 ( .B1(n382), .B2(n341), .C1(n383), .C2(n343), .A(n384), .ZN(
        O[10]) );
  AOI22_X1 U59 ( .A1(\A_ns[9] ), .A2(n340), .B1(\A_s[9] ), .B2(n339), .ZN(n384) );
  NAND3_X1 U60 ( .A1(B[6]), .A2(n386), .A3(B[5]), .ZN(n343) );
  INV_X1 U61 ( .A(B[7]), .ZN(n386) );
  INV_X1 U62 ( .A(\A_s[8] ), .ZN(n383) );
  NAND3_X1 U63 ( .A1(B[7]), .A2(n387), .A3(n385), .ZN(n341) );
  XNOR2_X1 U64 ( .A(B[5]), .B(B[6]), .ZN(n385) );
  INV_X1 U65 ( .A(B[5]), .ZN(n387) );
  INV_X1 U66 ( .A(\A_ns[8] ), .ZN(n382) );
endmodule


module RCA_NBIT12_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n43, n44, n45, n46,
         n47, n48, n49, n50, n51;
  wire   [11:1] carry;

  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U33 ( .A(n55), .B(n57), .Z(SUM[7]) );
  XOR2_X1 U34 ( .A(B[7]), .B(A[7]), .Z(n57) );
  XOR2_X1 U35 ( .A(B[6]), .B(A[6]), .Z(n60) );
  XOR2_X1 U36 ( .A(B[5]), .B(A[5]), .Z(n63) );
  XOR2_X1 U37 ( .A(B[4]), .B(A[4]), .Z(n66) );
  XOR2_X1 U38 ( .A(B[3]), .B(A[3]), .Z(n69) );
  XOR2_X1 U39 ( .A(A[2]), .B(n71), .Z(SUM[2]) );
  XOR2_X1 U40 ( .A(carry[2]), .B(B[2]), .Z(n71) );
  XOR2_X1 U41 ( .A(n72), .B(n73), .Z(SUM[11]) );
  XOR2_X1 U42 ( .A(carry[10]), .B(n74), .Z(SUM[10]) );
  XOR2_X1 U43 ( .A(A[10]), .B(B[10]), .Z(n74) );
  XOR2_X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  INV_X1 U1 ( .A(n52), .ZN(n44) );
  XNOR2_X1 U2 ( .A(B[11]), .B(A[11]), .ZN(n72) );
  AOI22_X1 U3 ( .A1(carry[10]), .A2(n74), .B1(A[10]), .B2(B[10]), .ZN(n73) );
  AOI22_X1 U4 ( .A1(n48), .A2(A[5]), .B1(n61), .B2(B[5]), .ZN(n58) );
  OR2_X1 U5 ( .A1(A[5]), .A2(n48), .ZN(n61) );
  INV_X1 U6 ( .A(n62), .ZN(n48) );
  AOI21_X1 U7 ( .B1(n55), .B2(A[7]), .A(n45), .ZN(n52) );
  INV_X1 U8 ( .A(n56), .ZN(n45) );
  OAI21_X1 U9 ( .B1(A[7]), .B2(n55), .A(B[7]), .ZN(n56) );
  AOI22_X1 U10 ( .A1(n50), .A2(A[3]), .B1(n67), .B2(B[3]), .ZN(n65) );
  OR2_X1 U11 ( .A1(A[3]), .A2(n50), .ZN(n67) );
  INV_X1 U12 ( .A(n68), .ZN(n50) );
  AOI22_X1 U13 ( .A1(n49), .A2(A[4]), .B1(n64), .B2(B[4]), .ZN(n62) );
  OR2_X1 U14 ( .A1(A[4]), .A2(n49), .ZN(n64) );
  INV_X1 U15 ( .A(n65), .ZN(n49) );
  OAI21_X1 U16 ( .B1(n58), .B2(n46), .A(n59), .ZN(n55) );
  INV_X1 U17 ( .A(A[6]), .ZN(n46) );
  OAI21_X1 U18 ( .B1(A[6]), .B2(n47), .A(B[6]), .ZN(n59) );
  INV_X1 U19 ( .A(n58), .ZN(n47) );
  AOI21_X1 U20 ( .B1(A[2]), .B2(B[2]), .A(n51), .ZN(n68) );
  INV_X1 U21 ( .A(n70), .ZN(n51) );
  OAI21_X1 U22 ( .B1(A[2]), .B2(B[2]), .A(carry[2]), .ZN(n70) );
  XNOR2_X1 U23 ( .A(n65), .B(n66), .ZN(SUM[4]) );
  XNOR2_X1 U24 ( .A(n52), .B(n54), .ZN(SUM[8]) );
  XNOR2_X1 U25 ( .A(B[8]), .B(n43), .ZN(n54) );
  XNOR2_X1 U26 ( .A(n68), .B(n69), .ZN(SUM[3]) );
  OAI21_X1 U27 ( .B1(n52), .B2(n43), .A(n53), .ZN(carry[9]) );
  OAI21_X1 U28 ( .B1(A[8]), .B2(n44), .A(B[8]), .ZN(n53) );
  INV_X1 U29 ( .A(A[8]), .ZN(n43) );
  XNOR2_X1 U30 ( .A(n62), .B(n63), .ZN(SUM[5]) );
  XNOR2_X1 U31 ( .A(n58), .B(n60), .ZN(SUM[6]) );
  AND2_X1 U32 ( .A1(A[0]), .A2(B[0]), .ZN(n1) );
endmodule


module RCA_NBIT12 ( A, B, Ci, S, Co );
  input [11:0] A;
  input [11:0] B;
  output [11:0] S;
  input Ci;
  output Co;

  assign Co = 1'b0;

  RCA_NBIT12_DW01_add_0 add_95 ( .A(A), .B(B), .CI(1'b0), .SUM(S) );
endmodule


module RCA_NBIT14_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n27, n28, n29, n30, n31, n32, n33, n34, n24, n25, n26;
  wire   [13:1] carry;

  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(n26), .B(B[5]), .CI(A[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U10 ( .A(carry[9]), .B(n31), .Z(SUM[9]) );
  XOR2_X1 U11 ( .A(carry[4]), .B(n28), .Z(SUM[4]) );
  XOR2_X1 U12 ( .A(A[4]), .B(B[4]), .Z(n28) );
  XOR2_X1 U13 ( .A(n32), .B(n33), .Z(SUM[13]) );
  XOR2_X1 U14 ( .A(carry[12]), .B(n34), .Z(SUM[12]) );
  XOR2_X1 U15 ( .A(A[12]), .B(B[12]), .Z(n34) );
  XOR2_X1 U16 ( .A(n30), .B(n29), .Z(SUM[10]) );
  XOR2_X1 U17 ( .A(A[9]), .B(B[9]), .Z(n31) );
  XOR2_X1 U18 ( .A(n24), .B(B[10]), .Z(n30) );
  XOR2_X1 U19 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  INV_X1 U1 ( .A(A[10]), .ZN(n24) );
  XNOR2_X1 U2 ( .A(B[13]), .B(A[13]), .ZN(n32) );
  AOI22_X1 U3 ( .A1(carry[12]), .A2(n34), .B1(A[12]), .B2(B[12]), .ZN(n33) );
  AOI22_X1 U4 ( .A1(B[9]), .A2(A[9]), .B1(n31), .B2(carry[9]), .ZN(n29) );
  AOI22_X1 U5 ( .A1(B[4]), .A2(A[4]), .B1(n28), .B2(carry[4]), .ZN(n27) );
  OAI22_X1 U6 ( .A1(n25), .A2(n24), .B1(n29), .B2(n30), .ZN(carry[11]) );
  INV_X1 U7 ( .A(B[10]), .ZN(n25) );
  INV_X1 U8 ( .A(n27), .ZN(n26) );
  AND2_X1 U9 ( .A1(A[0]), .A2(B[0]), .ZN(n1) );
endmodule


module RCA_NBIT14 ( A, B, Ci, S, Co );
  input [13:0] A;
  input [13:0] B;
  output [13:0] S;
  input Ci;
  output Co;

  assign Co = 1'b0;

  RCA_NBIT14_DW01_add_0 add_95 ( .A(A), .B(B), .CI(1'b0), .SUM(S) );
endmodule


module RCA_NBIT16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34;
  wire   [15:1] carry;

  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  XOR2_X1 U1 ( .A(A[15]), .B(B[15]), .Z(n3) );
  XOR2_X1 U3 ( .A(carry[15]), .B(n3), .Z(SUM[15]) );
  XOR2_X1 U4 ( .A(A[10]), .B(B[10]), .Z(n4) );
  XOR2_X1 U5 ( .A(carry[10]), .B(n4), .Z(SUM[10]) );
  NAND3_X1 U9 ( .A1(n5), .A2(n6), .A3(n7), .ZN(carry[11]) );
  XOR2_X1 U10 ( .A(A[14]), .B(B[14]), .Z(n8) );
  XOR2_X1 U11 ( .A(n13), .B(n8), .Z(SUM[14]) );
  NAND3_X1 U15 ( .A1(n9), .A2(n10), .A3(n11), .ZN(carry[15]) );
  NAND3_X1 U16 ( .A1(n32), .A2(n33), .A3(n34), .ZN(n12) );
  NAND3_X1 U17 ( .A1(n32), .A2(n33), .A3(n34), .ZN(n13) );
  XOR2_X1 U18 ( .A(A[7]), .B(B[7]), .Z(n14) );
  XOR2_X1 U19 ( .A(carry[7]), .B(n14), .Z(SUM[7]) );
  NAND3_X1 U23 ( .A1(n15), .A2(n16), .A3(n17), .ZN(carry[8]) );
  XOR2_X1 U24 ( .A(A[9]), .B(B[9]), .Z(n18) );
  XOR2_X1 U25 ( .A(carry[9]), .B(n18), .Z(SUM[9]) );
  NAND3_X1 U29 ( .A1(n19), .A2(n20), .A3(n21), .ZN(carry[10]) );
  NAND3_X1 U30 ( .A1(n28), .A2(n29), .A3(n30), .ZN(n22) );
  XOR2_X1 U31 ( .A(A[11]), .B(B[11]), .Z(n23) );
  XOR2_X1 U32 ( .A(carry[11]), .B(n23), .Z(SUM[11]) );
  NAND3_X1 U36 ( .A1(n24), .A2(n25), .A3(n26), .ZN(carry[12]) );
  XOR2_X1 U37 ( .A(A[12]), .B(B[12]), .Z(n27) );
  XOR2_X1 U38 ( .A(carry[12]), .B(n27), .Z(SUM[12]) );
  NAND3_X1 U42 ( .A1(n28), .A2(n29), .A3(n30), .ZN(carry[13]) );
  XOR2_X1 U43 ( .A(A[13]), .B(B[13]), .Z(n31) );
  XOR2_X1 U44 ( .A(n22), .B(n31), .Z(SUM[13]) );
  NAND3_X1 U48 ( .A1(n32), .A2(n33), .A3(n34), .ZN(carry[14]) );
  NAND2_X1 U6 ( .A1(n22), .A2(A[13]), .ZN(n32) );
  NAND2_X1 U7 ( .A1(n12), .A2(A[14]), .ZN(n9) );
  NAND2_X1 U8 ( .A1(carry[12]), .A2(A[12]), .ZN(n28) );
  NAND2_X1 U12 ( .A1(carry[9]), .A2(A[9]), .ZN(n19) );
  NAND2_X1 U13 ( .A1(carry[9]), .A2(B[9]), .ZN(n20) );
  NAND2_X1 U14 ( .A1(A[9]), .A2(B[9]), .ZN(n21) );
  NAND2_X1 U20 ( .A1(carry[10]), .A2(A[10]), .ZN(n5) );
  NAND2_X1 U21 ( .A1(carry[10]), .A2(B[10]), .ZN(n6) );
  NAND2_X1 U22 ( .A1(A[10]), .A2(B[10]), .ZN(n7) );
  NAND2_X1 U26 ( .A1(carry[11]), .A2(A[11]), .ZN(n24) );
  NAND2_X1 U27 ( .A1(carry[11]), .A2(B[11]), .ZN(n25) );
  NAND2_X1 U28 ( .A1(A[11]), .A2(B[11]), .ZN(n26) );
  NAND2_X1 U33 ( .A1(A[13]), .A2(B[13]), .ZN(n34) );
  NAND2_X1 U34 ( .A1(carry[7]), .A2(A[7]), .ZN(n15) );
  NAND2_X1 U35 ( .A1(A[14]), .A2(B[14]), .ZN(n11) );
  NAND2_X1 U39 ( .A1(carry[13]), .A2(B[13]), .ZN(n33) );
  NAND2_X1 U40 ( .A1(carry[14]), .A2(B[14]), .ZN(n10) );
  NAND2_X1 U41 ( .A1(A[12]), .A2(B[12]), .ZN(n30) );
  NAND2_X1 U45 ( .A1(carry[12]), .A2(B[12]), .ZN(n29) );
  NAND2_X1 U46 ( .A1(A[7]), .A2(B[7]), .ZN(n17) );
  NAND2_X1 U47 ( .A1(carry[7]), .A2(B[7]), .ZN(n16) );
  AND2_X1 U49 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
endmodule


module RCA_NBIT16 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Ci;
  output Co;

  assign Co = 1'b0;

  RCA_NBIT16_DW01_add_0 add_95 ( .A(A), .B(B), .CI(1'b0), .SUM(S) );
endmodule


module BOOTHMUL_NBIT8 ( A, B, S );
  input [7:0] A;
  input [7:0] B;
  output [15:0] S;
  wire   \A_n[0] , \SHIFT[3][13] , \SHIFT[3][12] , \SHIFT[3][11] ,
         \SHIFT[3][10] , \SHIFT[3][9] , \SHIFT[3][8] , \SHIFT[3][7] ,
         \SHIFT[3][6] , \SHIFT[3][5] , \SHIFT[3][4] , \SHIFT[3][3] ,
         \SHIFT[3][2] , \SHIFT[2][11] , \SHIFT[2][10] , \SHIFT[2][9] ,
         \SHIFT[2][8] , \SHIFT[2][7] , \SHIFT[2][6] , \SHIFT[2][5] ,
         \SHIFT[2][4] , \SHIFT[2][3] , \SHIFT[2][2] , \SHIFT[1][9] ,
         \SHIFT[1][8] , \SHIFT[1][7] , \SHIFT[1][6] , \SHIFT[1][5] ,
         \SHIFT[1][4] , \SHIFT[1][3] , \SHIFT[1][2] , \SHIFT[1][1] ,
         \SHIFT_n[3][13] , \SHIFT_n[3][12] , \SHIFT_n[3][11] ,
         \SHIFT_n[3][10] , \SHIFT_n[3][9] , \SHIFT_n[3][8] , \SHIFT_n[3][7] ,
         \SHIFT_n[3][6] , \SHIFT_n[3][5] , \SHIFT_n[3][4] , \SHIFT_n[3][3] ,
         \SHIFT_n[3][2] , \SHIFT_n[2][11] , \SHIFT_n[2][10] , \SHIFT_n[2][9] ,
         \SHIFT_n[2][8] , \SHIFT_n[2][7] , \SHIFT_n[2][6] , \SHIFT_n[2][5] ,
         \SHIFT_n[2][4] , \SHIFT_n[2][3] , \SHIFT_n[2][2] , \SHIFT_n[1][9] ,
         \SHIFT_n[1][8] , \SHIFT_n[1][7] , \SHIFT_n[1][6] , \SHIFT_n[1][5] ,
         \SHIFT_n[1][4] , \SHIFT_n[1][3] , \SHIFT_n[1][2] , \SHIFT_n[1][1] ,
         \OTMP[3][15] , \OTMP[3][14] , \OTMP[3][13] , \OTMP[3][12] ,
         \OTMP[3][11] , \OTMP[3][10] , \OTMP[3][9] , \OTMP[3][8] ,
         \OTMP[3][7] , \OTMP[3][6] , \OTMP[3][5] , \OTMP[3][4] , \OTMP[3][3] ,
         \OTMP[3][2] , \OTMP[3][1] , \OTMP[2][13] , \OTMP[2][12] ,
         \OTMP[2][11] , \OTMP[2][10] , \OTMP[2][9] , \OTMP[2][8] ,
         \OTMP[2][7] , \OTMP[2][6] , \OTMP[2][5] , \OTMP[2][4] , \OTMP[2][3] ,
         \OTMP[2][2] , \OTMP[2][1] , \OTMP[1][11] , \OTMP[1][10] ,
         \OTMP[1][9] , \OTMP[1][8] , \OTMP[1][7] , \OTMP[1][6] , \OTMP[1][5] ,
         \OTMP[1][4] , \OTMP[1][3] , \OTMP[1][2] , \OTMP[1][1] , \OTMP[0][10] ,
         \OTMP[0][8] , \OTMP[0][7] , \OTMP[0][6] , \OTMP[0][5] , \OTMP[0][4] ,
         \OTMP[0][3] , \OTMP[0][2] , \OTMP[0][1] , \OTMP[0][0] , \PTMP[1][13] ,
         \PTMP[1][12] , \PTMP[1][11] , \PTMP[1][10] , \PTMP[1][9] ,
         \PTMP[1][8] , \PTMP[1][7] , \PTMP[1][6] , \PTMP[1][5] , \PTMP[1][4] ,
         \PTMP[1][3] , \PTMP[1][2] , \PTMP[1][1] , \PTMP[1][0] , \PTMP[0][12] ,
         \PTMP[0][10] , \PTMP[0][9] , \PTMP[0][8] , \PTMP[0][7] , \PTMP[0][6] ,
         \PTMP[0][5] , \PTMP[0][4] , \PTMP[0][3] , \PTMP[0][2] , \PTMP[0][1] ,
         \PTMP[0][0] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;
  assign \A_n[0]  = A[0];

  BOOTHENC_NBIT10_i0 ENC1 ( .A_s({A[7], A[7], A[7:1], \A_n[0] }), .A_ns({n4, 
        n4, n11, n9, n8, n7, n6, n5, n10, \A_n[0] }), .B({B[7], B[7], B}), .O(
        {\OTMP[0][10] , \OTMP[0][8] , \OTMP[0][7] , \OTMP[0][6] , \OTMP[0][5] , 
        \OTMP[0][4] , \OTMP[0][3] , \OTMP[0][2] , \OTMP[0][1] , \OTMP[0][0] }), 
        .A_so({\SHIFT[1][9] , \SHIFT[1][8] , \SHIFT[1][7] , \SHIFT[1][6] , 
        \SHIFT[1][5] , \SHIFT[1][4] , \SHIFT[1][3] , \SHIFT[1][2] , 
        \SHIFT[1][1] , SYNOPSYS_UNCONNECTED__0}), .A_nso({\SHIFT_n[1][9] , 
        \SHIFT_n[1][8] , \SHIFT_n[1][7] , \SHIFT_n[1][6] , \SHIFT_n[1][5] , 
        \SHIFT_n[1][4] , \SHIFT_n[1][3] , \SHIFT_n[1][2] , \SHIFT_n[1][1] , 
        SYNOPSYS_UNCONNECTED__1}) );
  BOOTHENC_NBIT12_i2 ENC_1 ( .A_s({\SHIFT[1][9] , \SHIFT[1][9] , \SHIFT[1][9] , 
        \SHIFT[1][8] , \SHIFT[1][7] , \SHIFT[1][6] , \SHIFT[1][5] , 
        \SHIFT[1][4] , \SHIFT[1][3] , \SHIFT[1][2] , \SHIFT[1][1] , 1'b0}), 
        .A_ns({\SHIFT_n[1][9] , \SHIFT_n[1][9] , \SHIFT_n[1][9] , 
        \SHIFT_n[1][8] , \SHIFT_n[1][7] , \SHIFT_n[1][6] , \SHIFT_n[1][5] , 
        \SHIFT_n[1][4] , \SHIFT_n[1][3] , \SHIFT_n[1][2] , \SHIFT_n[1][1] , 
        1'b0}), .B({B[7], B[7], B[7], B[7], B}), .O({\OTMP[1][11] , 
        \OTMP[1][10] , \OTMP[1][9] , \OTMP[1][8] , \OTMP[1][7] , \OTMP[1][6] , 
        \OTMP[1][5] , \OTMP[1][4] , \OTMP[1][3] , \OTMP[1][2] , \OTMP[1][1] , 
        SYNOPSYS_UNCONNECTED__2}), .A_so({\SHIFT[2][11] , \SHIFT[2][10] , 
        \SHIFT[2][9] , \SHIFT[2][8] , \SHIFT[2][7] , \SHIFT[2][6] , 
        \SHIFT[2][5] , \SHIFT[2][4] , \SHIFT[2][3] , \SHIFT[2][2] , 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4}), .A_nso({
        \SHIFT_n[2][11] , \SHIFT_n[2][10] , \SHIFT_n[2][9] , \SHIFT_n[2][8] , 
        \SHIFT_n[2][7] , \SHIFT_n[2][6] , \SHIFT_n[2][5] , \SHIFT_n[2][4] , 
        \SHIFT_n[2][3] , \SHIFT_n[2][2] , SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  BOOTHENC_NBIT14_i4 ENC_2 ( .A_s({\SHIFT[2][11] , \SHIFT[2][11] , 
        \SHIFT[2][11] , \SHIFT[2][10] , \SHIFT[2][9] , \SHIFT[2][8] , 
        \SHIFT[2][7] , \SHIFT[2][6] , \SHIFT[2][5] , \SHIFT[2][4] , 
        \SHIFT[2][3] , \SHIFT[2][2] , 1'b0, 1'b0}), .A_ns({\SHIFT_n[2][11] , 
        \SHIFT_n[2][11] , \SHIFT_n[2][11] , \SHIFT_n[2][10] , \SHIFT_n[2][9] , 
        \SHIFT_n[2][8] , \SHIFT_n[2][7] , \SHIFT_n[2][6] , \SHIFT_n[2][5] , 
        \SHIFT_n[2][4] , \SHIFT_n[2][3] , \SHIFT_n[2][2] , 1'b0, 1'b0}), .B({
        B[7], B[7], B[7], B[7], B[7], B[7], B}), .O({\OTMP[2][13] , 
        \OTMP[2][12] , \OTMP[2][11] , \OTMP[2][10] , \OTMP[2][9] , 
        \OTMP[2][8] , \OTMP[2][7] , \OTMP[2][6] , \OTMP[2][5] , \OTMP[2][4] , 
        \OTMP[2][3] , \OTMP[2][2] , \OTMP[2][1] , SYNOPSYS_UNCONNECTED__7}), 
        .A_so({\SHIFT[3][13] , \SHIFT[3][12] , \SHIFT[3][11] , \SHIFT[3][10] , 
        \SHIFT[3][9] , \SHIFT[3][8] , \SHIFT[3][7] , \SHIFT[3][6] , 
        \SHIFT[3][5] , \SHIFT[3][4] , \SHIFT[3][3] , \SHIFT[3][2] , 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}), .A_nso({
        \SHIFT_n[3][13] , \SHIFT_n[3][12] , \SHIFT_n[3][11] , \SHIFT_n[3][10] , 
        \SHIFT_n[3][9] , \SHIFT_n[3][8] , \SHIFT_n[3][7] , \SHIFT_n[3][6] , 
        \SHIFT_n[3][5] , \SHIFT_n[3][4] , \SHIFT_n[3][3] , \SHIFT_n[3][2] , 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  BOOTHENC_NBIT16_i6 ENC_3 ( .A_s({\SHIFT[3][13] , \SHIFT[3][13] , 
        \SHIFT[3][13] , \SHIFT[3][12] , \SHIFT[3][11] , \SHIFT[3][10] , 
        \SHIFT[3][9] , \SHIFT[3][8] , \SHIFT[3][7] , \SHIFT[3][6] , 
        \SHIFT[3][5] , \SHIFT[3][4] , \SHIFT[3][3] , \SHIFT[3][2] , 1'b0, 1'b0}), .A_ns({\SHIFT_n[3][13] , \SHIFT_n[3][13] , \SHIFT_n[3][13] , 
        \SHIFT_n[3][12] , \SHIFT_n[3][11] , \SHIFT_n[3][10] , \SHIFT_n[3][9] , 
        \SHIFT_n[3][8] , \SHIFT_n[3][7] , \SHIFT_n[3][6] , \SHIFT_n[3][5] , 
        \SHIFT_n[3][4] , \SHIFT_n[3][3] , \SHIFT_n[3][2] , 1'b0, 1'b0}), .B({
        B[7], B[7], B[7], B[7], B[7], B[7], B[7], B[7], B}), .O({\OTMP[3][15] , 
        \OTMP[3][14] , \OTMP[3][13] , \OTMP[3][12] , \OTMP[3][11] , 
        \OTMP[3][10] , \OTMP[3][9] , \OTMP[3][8] , \OTMP[3][7] , \OTMP[3][6] , 
        \OTMP[3][5] , \OTMP[3][4] , \OTMP[3][3] , \OTMP[3][2] , \OTMP[3][1] , 
        SYNOPSYS_UNCONNECTED__12}) );
  RCA_NBIT12 ADDER1 ( .A({\OTMP[0][10] , \OTMP[0][10] , \OTMP[0][10] , 
        \OTMP[0][8] , \OTMP[0][7] , \OTMP[0][6] , \OTMP[0][5] , \OTMP[0][4] , 
        \OTMP[0][3] , \OTMP[0][2] , \OTMP[0][1] , \OTMP[0][0] }), .B({
        \OTMP[1][11] , \OTMP[1][10] , \OTMP[1][9] , \OTMP[1][8] , \OTMP[1][7] , 
        \OTMP[1][6] , \OTMP[1][5] , \OTMP[1][4] , \OTMP[1][3] , \OTMP[1][2] , 
        \OTMP[1][1] , 1'b0}), .Ci(1'b0), .S({\PTMP[0][12] , \PTMP[0][10] , 
        \PTMP[0][9] , \PTMP[0][8] , \PTMP[0][7] , \PTMP[0][6] , \PTMP[0][5] , 
        \PTMP[0][4] , \PTMP[0][3] , \PTMP[0][2] , \PTMP[0][1] , \PTMP[0][0] })
         );
  RCA_NBIT14 ADDER_2 ( .A({\PTMP[0][12] , \PTMP[0][12] , \PTMP[0][12] , 
        \PTMP[0][10] , \PTMP[0][9] , \PTMP[0][8] , \PTMP[0][7] , \PTMP[0][6] , 
        \PTMP[0][5] , \PTMP[0][4] , \PTMP[0][3] , \PTMP[0][2] , \PTMP[0][1] , 
        \PTMP[0][0] }), .B({\OTMP[2][13] , \OTMP[2][12] , \OTMP[2][11] , 
        \OTMP[2][10] , \OTMP[2][9] , \OTMP[2][8] , \OTMP[2][7] , \OTMP[2][6] , 
        \OTMP[2][5] , \OTMP[2][4] , \OTMP[2][3] , \OTMP[2][2] , \OTMP[2][1] , 
        1'b0}), .Ci(1'b0), .S({\PTMP[1][13] , \PTMP[1][12] , \PTMP[1][11] , 
        \PTMP[1][10] , \PTMP[1][9] , \PTMP[1][8] , \PTMP[1][7] , \PTMP[1][6] , 
        \PTMP[1][5] , \PTMP[1][4] , \PTMP[1][3] , \PTMP[1][2] , \PTMP[1][1] , 
        \PTMP[1][0] }) );
  RCA_NBIT16 ADDER_3 ( .A({\PTMP[1][13] , \PTMP[1][13] , \PTMP[1][13] , 
        \PTMP[1][12] , \PTMP[1][11] , \PTMP[1][10] , \PTMP[1][9] , 
        \PTMP[1][8] , \PTMP[1][7] , \PTMP[1][6] , \PTMP[1][5] , \PTMP[1][4] , 
        \PTMP[1][3] , \PTMP[1][2] , \PTMP[1][1] , \PTMP[1][0] }), .B({
        \OTMP[3][15] , \OTMP[3][14] , \OTMP[3][13] , \OTMP[3][12] , 
        \OTMP[3][11] , \OTMP[3][10] , \OTMP[3][9] , \OTMP[3][8] , \OTMP[3][7] , 
        \OTMP[3][6] , \OTMP[3][5] , \OTMP[3][4] , \OTMP[3][3] , \OTMP[3][2] , 
        \OTMP[3][1] , 1'b0}), .Ci(1'b0), .S(S) );
  XNOR2_X1 U5 ( .A(n26), .B(n18), .ZN(n4) );
  NAND2_X1 U6 ( .A1(n26), .A2(n17), .ZN(n18) );
  XOR2_X1 U7 ( .A(n21), .B(n12), .Z(n5) );
  XOR2_X1 U8 ( .A(n22), .B(n13), .Z(n6) );
  XOR2_X1 U9 ( .A(n23), .B(n14), .Z(n7) );
  XOR2_X1 U10 ( .A(n24), .B(n15), .Z(n8) );
  XOR2_X1 U11 ( .A(n25), .B(n16), .Z(n9) );
  XOR2_X1 U12 ( .A(n20), .B(n19), .Z(n10) );
  XOR2_X1 U13 ( .A(n26), .B(n17), .Z(n11) );
  AND2_X1 U14 ( .A1(n20), .A2(n19), .ZN(n12) );
  AND2_X1 U15 ( .A1(n21), .A2(n12), .ZN(n13) );
  AND2_X1 U16 ( .A1(n22), .A2(n13), .ZN(n14) );
  AND2_X1 U17 ( .A1(n23), .A2(n14), .ZN(n15) );
  AND2_X1 U18 ( .A1(n24), .A2(n15), .ZN(n16) );
  AND2_X1 U19 ( .A1(n25), .A2(n16), .ZN(n17) );
  INV_X1 U20 ( .A(A[7]), .ZN(n26) );
  INV_X1 U21 ( .A(A[6]), .ZN(n25) );
  INV_X1 U22 ( .A(A[5]), .ZN(n24) );
  INV_X1 U23 ( .A(A[4]), .ZN(n23) );
  INV_X1 U24 ( .A(A[3]), .ZN(n22) );
  INV_X1 U25 ( .A(A[2]), .ZN(n21) );
  INV_X1 U26 ( .A(A[1]), .ZN(n20) );
  INV_X1 U27 ( .A(\A_n[0] ), .ZN(n19) );
endmodule

