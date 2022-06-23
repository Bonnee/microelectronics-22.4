
module BOOTHENC_NBIT10_i0 ( A_s, A_ns, B, O, A_so, A_nso );
  input [9:0] A_s;
  input [9:0] A_ns;
  input [9:0] B;
  output [9:0] O;
  output [9:0] A_so;
  output [9:0] A_nso;
  wire   \A_s[8] , \A_s[7] , \A_s[6] , \A_s[5] , \A_s[4] , \A_s[3] , \A_s[2] ,
         \A_s[1] , \A_s[0] , \A_ns[8] , \A_ns[7] , \A_ns[6] , \A_ns[5] ,
         \A_ns[4] , \A_ns[3] , \A_ns[2] , \A_ns[1] , \A_ns[0] , n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n1, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13;
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

  NOR2_X1 U3 ( .A1(n13), .A2(B[1]), .ZN(n15) );
  INV_X1 U4 ( .A(n16), .ZN(n11) );
  INV_X1 U5 ( .A(\A_ns[8] ), .ZN(n1) );
  INV_X1 U6 ( .A(\A_ns[1] ), .ZN(n9) );
  INV_X1 U7 ( .A(\A_ns[2] ), .ZN(n8) );
  INV_X1 U8 ( .A(\A_ns[3] ), .ZN(n7) );
  INV_X1 U9 ( .A(\A_ns[4] ), .ZN(n6) );
  INV_X1 U10 ( .A(\A_ns[5] ), .ZN(n5) );
  INV_X1 U11 ( .A(\A_ns[6] ), .ZN(n4) );
  INV_X1 U12 ( .A(\A_ns[7] ), .ZN(n3) );
  NOR2_X1 U13 ( .A1(n13), .A2(n15), .ZN(n16) );
  OAI221_X1 U14 ( .B1(n17), .B2(n10), .C1(n11), .C2(n9), .A(n25), .ZN(O[1]) );
  OAI221_X1 U15 ( .B1(n17), .B2(n9), .C1(n11), .C2(n8), .A(n24), .ZN(O[2]) );
  INV_X1 U16 ( .A(B[0]), .ZN(n13) );
  INV_X1 U17 ( .A(n14), .ZN(O[9]) );
  AOI222_X1 U18 ( .A1(A_s[9]), .A2(n15), .B1(\A_ns[8] ), .B2(n12), .C1(A_ns[9]), .C2(n16), .ZN(n14) );
  INV_X1 U19 ( .A(n17), .ZN(n12) );
  OAI221_X1 U20 ( .B1(n17), .B2(n8), .C1(n11), .C2(n7), .A(n23), .ZN(O[3]) );
  OAI221_X1 U21 ( .B1(n17), .B2(n7), .C1(n11), .C2(n6), .A(n22), .ZN(O[4]) );
  OAI221_X1 U22 ( .B1(n17), .B2(n6), .C1(n11), .C2(n5), .A(n21), .ZN(O[5]) );
  OAI221_X1 U23 ( .B1(n17), .B2(n5), .C1(n11), .C2(n4), .A(n20), .ZN(O[6]) );
  OAI221_X1 U24 ( .B1(n17), .B2(n4), .C1(n11), .C2(n3), .A(n19), .ZN(O[7]) );
  OAI221_X1 U25 ( .B1(n17), .B2(n3), .C1(n1), .C2(n11), .A(n18), .ZN(O[8]) );
  NAND2_X1 U26 ( .A1(B[1]), .A2(n13), .ZN(n17) );
  NAND2_X1 U27 ( .A1(\A_s[2] ), .A2(n15), .ZN(n24) );
  NAND2_X1 U28 ( .A1(\A_s[3] ), .A2(n15), .ZN(n23) );
  NAND2_X1 U29 ( .A1(\A_s[4] ), .A2(n15), .ZN(n22) );
  NAND2_X1 U30 ( .A1(\A_s[5] ), .A2(n15), .ZN(n21) );
  NAND2_X1 U31 ( .A1(\A_s[6] ), .A2(n15), .ZN(n20) );
  NAND2_X1 U32 ( .A1(\A_s[7] ), .A2(n15), .ZN(n19) );
  NAND2_X1 U33 ( .A1(\A_s[8] ), .A2(n15), .ZN(n18) );
  OAI21_X1 U34 ( .B1(n11), .B2(n10), .A(n26), .ZN(O[0]) );
  NAND2_X1 U35 ( .A1(\A_s[0] ), .A2(n15), .ZN(n26) );
  NAND2_X1 U36 ( .A1(\A_s[1] ), .A2(n15), .ZN(n25) );
  INV_X1 U37 ( .A(\A_ns[0] ), .ZN(n10) );
endmodule


module BOOTHENC_NBIT12_i2 ( A_s, A_ns, B, O, A_so, A_nso );
  input [11:0] A_s;
  input [11:0] A_ns;
  input [11:0] B;
  output [11:0] O;
  output [11:0] A_so;
  output [11:0] A_nso;
  wire   \A_s[9] , \A_s[8] , \A_s[7] , \A_s[6] , \A_s[5] , \A_s[4] , \A_s[3] ,
         \A_s[2] , \A_s[1] , \A_s[0] , \A_ns[9] , \A_ns[8] , \A_ns[7] ,
         \A_ns[6] , \A_ns[5] , \A_ns[4] , \A_ns[3] , \A_ns[2] , \A_ns[1] ,
         \A_ns[0] , n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  assign A_nso[0] = 1'b0;
  assign A_nso[1] = 1'b0;
  assign A_so[0] = 1'b0;
  assign A_so[1] = 1'b0;
  assign O[0] = 1'b0;
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

  INV_X1 U2 ( .A(\A_ns[2] ), .ZN(n8) );
  INV_X1 U3 ( .A(\A_ns[3] ), .ZN(n7) );
  INV_X1 U4 ( .A(\A_ns[4] ), .ZN(n6) );
  INV_X1 U5 ( .A(\A_ns[5] ), .ZN(n5) );
  INV_X1 U6 ( .A(\A_ns[6] ), .ZN(n4) );
  INV_X1 U7 ( .A(n35), .ZN(O[1]) );
  NOR2_X1 U8 ( .A1(n38), .A2(B[3]), .ZN(n26) );
  NOR2_X1 U9 ( .A1(n22), .A2(n38), .ZN(n27) );
  INV_X1 U10 ( .A(B[3]), .ZN(n22) );
  XNOR2_X1 U11 ( .A(B[1]), .B(B[2]), .ZN(n38) );
  OAI221_X1 U12 ( .B1(n23), .B2(n11), .C1(n24), .C2(n9), .A(n34), .ZN(O[2]) );
  INV_X1 U13 ( .A(\A_s[0] ), .ZN(n11) );
  OAI221_X1 U14 ( .B1(n23), .B2(n13), .C1(n24), .C2(n1), .A(n36), .ZN(O[11])
         );
  INV_X1 U15 ( .A(\A_s[9] ), .ZN(n13) );
  INV_X1 U16 ( .A(\A_ns[9] ), .ZN(n1) );
  AOI22_X1 U17 ( .A1(\A_s[1] ), .A2(n26), .B1(\A_ns[1] ), .B2(n27), .ZN(n34)
         );
  OAI221_X1 U18 ( .B1(n23), .B2(n21), .C1(n24), .C2(n20), .A(n33), .ZN(O[3])
         );
  INV_X1 U19 ( .A(\A_ns[1] ), .ZN(n20) );
  OAI221_X1 U20 ( .B1(n23), .B2(n19), .C1(n24), .C2(n8), .A(n32), .ZN(O[4]) );
  INV_X1 U21 ( .A(\A_s[2] ), .ZN(n19) );
  OAI221_X1 U22 ( .B1(n23), .B2(n18), .C1(n24), .C2(n7), .A(n31), .ZN(O[5]) );
  INV_X1 U23 ( .A(\A_s[3] ), .ZN(n18) );
  OAI221_X1 U24 ( .B1(n23), .B2(n17), .C1(n24), .C2(n6), .A(n30), .ZN(O[6]) );
  INV_X1 U25 ( .A(\A_s[4] ), .ZN(n17) );
  OAI221_X1 U26 ( .B1(n23), .B2(n16), .C1(n24), .C2(n5), .A(n29), .ZN(O[7]) );
  INV_X1 U27 ( .A(\A_s[5] ), .ZN(n16) );
  OAI221_X1 U28 ( .B1(n23), .B2(n15), .C1(n24), .C2(n4), .A(n28), .ZN(O[8]) );
  INV_X1 U29 ( .A(\A_s[6] ), .ZN(n15) );
  OAI221_X1 U30 ( .B1(n23), .B2(n14), .C1(n24), .C2(n3), .A(n25), .ZN(O[9]) );
  INV_X1 U31 ( .A(\A_s[7] ), .ZN(n14) );
  INV_X1 U32 ( .A(\A_ns[7] ), .ZN(n3) );
  OAI221_X1 U33 ( .B1(n12), .B2(n23), .C1(n2), .C2(n24), .A(n37), .ZN(O[10])
         );
  INV_X1 U34 ( .A(\A_s[8] ), .ZN(n12) );
  INV_X1 U35 ( .A(\A_ns[8] ), .ZN(n2) );
  NAND3_X1 U36 ( .A1(n38), .A2(n39), .A3(B[3]), .ZN(n24) );
  OR2_X1 U37 ( .A1(n39), .A2(B[3]), .ZN(n23) );
  AOI22_X1 U38 ( .A1(\A_s[2] ), .A2(n26), .B1(\A_ns[2] ), .B2(n27), .ZN(n33)
         );
  AOI22_X1 U39 ( .A1(\A_s[3] ), .A2(n26), .B1(\A_ns[3] ), .B2(n27), .ZN(n32)
         );
  AOI22_X1 U40 ( .A1(\A_s[4] ), .A2(n26), .B1(\A_ns[4] ), .B2(n27), .ZN(n31)
         );
  AOI22_X1 U41 ( .A1(\A_s[5] ), .A2(n26), .B1(\A_ns[5] ), .B2(n27), .ZN(n30)
         );
  AOI22_X1 U42 ( .A1(\A_s[6] ), .A2(n26), .B1(\A_ns[6] ), .B2(n27), .ZN(n29)
         );
  AOI22_X1 U43 ( .A1(\A_s[7] ), .A2(n26), .B1(\A_ns[7] ), .B2(n27), .ZN(n28)
         );
  AOI22_X1 U44 ( .A1(\A_s[8] ), .A2(n26), .B1(\A_ns[8] ), .B2(n27), .ZN(n25)
         );
  AOI22_X1 U45 ( .A1(\A_s[9] ), .A2(n26), .B1(\A_ns[9] ), .B2(n27), .ZN(n37)
         );
  AOI22_X1 U46 ( .A1(A_s[10]), .A2(n26), .B1(A_ns[10]), .B2(n27), .ZN(n36) );
  NAND2_X1 U47 ( .A1(B[1]), .A2(B[2]), .ZN(n39) );
  INV_X1 U48 ( .A(\A_s[1] ), .ZN(n21) );
  AOI22_X1 U49 ( .A1(n27), .A2(\A_ns[0] ), .B1(n26), .B2(\A_s[0] ), .ZN(n35)
         );
  INV_X1 U50 ( .A(\A_ns[0] ), .ZN(n9) );
endmodule


module BOOTHENC_NBIT14_i4 ( A_s, A_ns, B, O, A_so, A_nso );
  input [13:0] A_s;
  input [13:0] A_ns;
  input [13:0] B;
  output [13:0] O;
  output [13:0] A_so;
  output [13:0] A_nso;
  wire   \A_s[11] , \A_s[10] , \A_s[9] , \A_s[8] , \A_s[7] , \A_s[6] ,
         \A_s[5] , \A_s[4] , \A_s[3] , \A_s[2] , \A_s[1] , \A_s[0] ,
         \A_ns[11] , \A_ns[10] , \A_ns[9] , \A_ns[8] , \A_ns[7] , \A_ns[6] ,
         \A_ns[5] , \A_ns[4] , \A_ns[3] , \A_ns[2] , \A_ns[1] , \A_ns[0] , n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  assign A_nso[0] = 1'b0;
  assign A_nso[1] = 1'b0;
  assign A_so[0] = 1'b0;
  assign A_so[1] = 1'b0;
  assign O[0] = 1'b0;
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

  INV_X1 U2 ( .A(n39), .ZN(O[1]) );
  OAI221_X1 U3 ( .B1(n27), .B2(n17), .C1(n28), .C2(n1), .A(n40), .ZN(O[13]) );
  INV_X1 U4 ( .A(\A_s[11] ), .ZN(n17) );
  INV_X1 U5 ( .A(\A_ns[11] ), .ZN(n1) );
  OAI221_X1 U6 ( .B1(n27), .B2(n25), .C1(n28), .C2(n24), .A(n35), .ZN(O[5]) );
  INV_X1 U7 ( .A(\A_ns[3] ), .ZN(n24) );
  INV_X1 U8 ( .A(\A_s[3] ), .ZN(n25) );
  OAI221_X1 U9 ( .B1(n27), .B2(n23), .C1(n28), .C2(n8), .A(n34), .ZN(O[6]) );
  INV_X1 U10 ( .A(\A_s[4] ), .ZN(n23) );
  INV_X1 U11 ( .A(\A_ns[4] ), .ZN(n8) );
  OAI221_X1 U12 ( .B1(n27), .B2(n22), .C1(n28), .C2(n7), .A(n33), .ZN(O[7]) );
  INV_X1 U13 ( .A(\A_s[5] ), .ZN(n22) );
  INV_X1 U14 ( .A(\A_ns[5] ), .ZN(n7) );
  OAI221_X1 U15 ( .B1(n27), .B2(n21), .C1(n28), .C2(n6), .A(n32), .ZN(O[8]) );
  INV_X1 U16 ( .A(\A_s[6] ), .ZN(n21) );
  INV_X1 U17 ( .A(\A_ns[6] ), .ZN(n6) );
  OAI221_X1 U18 ( .B1(n27), .B2(n20), .C1(n28), .C2(n5), .A(n29), .ZN(O[9]) );
  INV_X1 U19 ( .A(\A_s[7] ), .ZN(n20) );
  INV_X1 U20 ( .A(\A_ns[7] ), .ZN(n5) );
  OAI221_X1 U21 ( .B1(n19), .B2(n27), .C1(n4), .C2(n28), .A(n43), .ZN(O[10])
         );
  INV_X1 U22 ( .A(\A_s[8] ), .ZN(n19) );
  INV_X1 U23 ( .A(\A_ns[8] ), .ZN(n4) );
  OAI221_X1 U24 ( .B1(n27), .B2(n18), .C1(n28), .C2(n3), .A(n42), .ZN(O[11])
         );
  INV_X1 U25 ( .A(\A_s[9] ), .ZN(n18) );
  INV_X1 U26 ( .A(\A_ns[9] ), .ZN(n3) );
  OAI221_X1 U27 ( .B1(n27), .B2(n16), .C1(n28), .C2(n2), .A(n41), .ZN(O[12])
         );
  INV_X1 U28 ( .A(\A_s[10] ), .ZN(n16) );
  INV_X1 U29 ( .A(\A_ns[10] ), .ZN(n2) );
  OAI221_X1 U30 ( .B1(n27), .B2(n15), .C1(n28), .C2(n14), .A(n36), .ZN(O[4])
         );
  INV_X1 U31 ( .A(\A_s[2] ), .ZN(n15) );
  INV_X1 U32 ( .A(\A_ns[2] ), .ZN(n14) );
  NOR2_X2 U33 ( .A1(n44), .A2(B[5]), .ZN(n30) );
  NOR2_X2 U34 ( .A1(n26), .A2(n44), .ZN(n31) );
  INV_X1 U35 ( .A(B[5]), .ZN(n26) );
  NAND3_X1 U36 ( .A1(n44), .A2(n45), .A3(B[5]), .ZN(n28) );
  XNOR2_X1 U37 ( .A(B[3]), .B(B[4]), .ZN(n44) );
  OR2_X1 U38 ( .A1(n45), .A2(B[5]), .ZN(n27) );
  AOI22_X1 U39 ( .A1(\A_s[3] ), .A2(n30), .B1(\A_ns[3] ), .B2(n31), .ZN(n36)
         );
  AOI22_X1 U40 ( .A1(\A_s[4] ), .A2(n30), .B1(\A_ns[4] ), .B2(n31), .ZN(n35)
         );
  AOI22_X1 U41 ( .A1(\A_s[5] ), .A2(n30), .B1(\A_ns[5] ), .B2(n31), .ZN(n34)
         );
  AOI22_X1 U42 ( .A1(\A_s[6] ), .A2(n30), .B1(\A_ns[6] ), .B2(n31), .ZN(n33)
         );
  AOI22_X1 U43 ( .A1(\A_s[7] ), .A2(n30), .B1(\A_ns[7] ), .B2(n31), .ZN(n32)
         );
  AOI22_X1 U44 ( .A1(\A_s[8] ), .A2(n30), .B1(\A_ns[8] ), .B2(n31), .ZN(n29)
         );
  AOI22_X1 U45 ( .A1(\A_s[9] ), .A2(n30), .B1(\A_ns[9] ), .B2(n31), .ZN(n43)
         );
  AOI22_X1 U46 ( .A1(\A_s[10] ), .A2(n30), .B1(\A_ns[10] ), .B2(n31), .ZN(n42)
         );
  AOI22_X1 U47 ( .A1(\A_s[11] ), .A2(n30), .B1(\A_ns[11] ), .B2(n31), .ZN(n41)
         );
  AOI22_X1 U48 ( .A1(A_s[12]), .A2(n30), .B1(A_ns[12]), .B2(n31), .ZN(n40) );
  NAND2_X1 U49 ( .A1(B[3]), .A2(B[4]), .ZN(n45) );
  OAI221_X1 U50 ( .B1(n27), .B2(n12), .C1(n28), .C2(n9), .A(n38), .ZN(O[2]) );
  INV_X1 U51 ( .A(\A_s[0] ), .ZN(n12) );
  INV_X1 U52 ( .A(\A_ns[0] ), .ZN(n9) );
  OAI221_X1 U53 ( .B1(n27), .B2(n13), .C1(n28), .C2(n11), .A(n37), .ZN(O[3])
         );
  INV_X1 U54 ( .A(\A_s[1] ), .ZN(n13) );
  INV_X1 U55 ( .A(\A_ns[1] ), .ZN(n11) );
  AOI22_X1 U56 ( .A1(\A_s[1] ), .A2(n30), .B1(\A_ns[1] ), .B2(n31), .ZN(n38)
         );
  AOI22_X1 U57 ( .A1(\A_s[2] ), .A2(n30), .B1(\A_ns[2] ), .B2(n31), .ZN(n37)
         );
  AOI22_X1 U58 ( .A1(n31), .A2(\A_ns[0] ), .B1(n30), .B2(\A_s[0] ), .ZN(n39)
         );
endmodule


module BOOTHENC_NBIT16_i6 ( A_s, A_ns, B, O, A_so, A_nso );
  input [15:0] A_s;
  input [15:0] A_ns;
  input [15:0] B;
  output [15:0] O;
  output [15:0] A_so;
  output [15:0] A_nso;
  wire   \A_s[13] , \A_s[12] , \A_s[11] , \A_s[10] , \A_s[9] , \A_s[8] ,
         \A_s[7] , \A_s[6] , \A_s[5] , \A_s[4] , \A_s[3] , \A_s[2] , \A_s[1] ,
         \A_s[0] , \A_ns[13] , \A_ns[12] , \A_ns[11] , \A_ns[10] , \A_ns[9] ,
         \A_ns[8] , \A_ns[7] , \A_ns[6] , \A_ns[5] , \A_ns[4] , \A_ns[3] ,
         \A_ns[2] , \A_ns[1] , \A_ns[0] , n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  assign A_nso[0] = 1'b0;
  assign A_nso[1] = 1'b0;
  assign A_so[0] = 1'b0;
  assign A_so[1] = 1'b0;
  assign O[0] = 1'b0;
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

  INV_X1 U2 ( .A(n43), .ZN(O[1]) );
  OAI221_X1 U3 ( .B1(n31), .B2(n29), .C1(n32), .C2(n28), .A(n37), .ZN(O[7]) );
  INV_X1 U4 ( .A(\A_ns[5] ), .ZN(n28) );
  INV_X1 U5 ( .A(\A_s[5] ), .ZN(n29) );
  OAI221_X1 U6 ( .B1(n31), .B2(n27), .C1(n32), .C2(n8), .A(n36), .ZN(O[8]) );
  INV_X1 U7 ( .A(\A_s[6] ), .ZN(n27) );
  INV_X1 U8 ( .A(\A_ns[6] ), .ZN(n8) );
  OAI221_X1 U9 ( .B1(n31), .B2(n26), .C1(n32), .C2(n7), .A(n33), .ZN(O[9]) );
  INV_X1 U10 ( .A(\A_s[7] ), .ZN(n26) );
  INV_X1 U11 ( .A(\A_ns[7] ), .ZN(n7) );
  OAI221_X1 U12 ( .B1(n25), .B2(n31), .C1(n6), .C2(n32), .A(n49), .ZN(O[10])
         );
  INV_X1 U13 ( .A(\A_s[8] ), .ZN(n25) );
  INV_X1 U14 ( .A(\A_ns[8] ), .ZN(n6) );
  OAI221_X1 U15 ( .B1(n31), .B2(n24), .C1(n32), .C2(n5), .A(n48), .ZN(O[11])
         );
  INV_X1 U16 ( .A(\A_s[9] ), .ZN(n24) );
  INV_X1 U17 ( .A(\A_ns[9] ), .ZN(n5) );
  OAI221_X1 U18 ( .B1(n31), .B2(n23), .C1(n32), .C2(n4), .A(n47), .ZN(O[12])
         );
  INV_X1 U19 ( .A(\A_s[10] ), .ZN(n23) );
  INV_X1 U20 ( .A(\A_ns[10] ), .ZN(n4) );
  OAI221_X1 U21 ( .B1(n31), .B2(n22), .C1(n32), .C2(n3), .A(n46), .ZN(O[13])
         );
  INV_X1 U22 ( .A(\A_s[11] ), .ZN(n22) );
  INV_X1 U23 ( .A(\A_ns[11] ), .ZN(n3) );
  OAI221_X1 U24 ( .B1(n31), .B2(n20), .C1(n32), .C2(n2), .A(n45), .ZN(O[14])
         );
  INV_X1 U25 ( .A(\A_s[12] ), .ZN(n20) );
  INV_X1 U26 ( .A(\A_ns[12] ), .ZN(n2) );
  OAI221_X1 U27 ( .B1(n31), .B2(n19), .C1(n32), .C2(n18), .A(n38), .ZN(O[6])
         );
  INV_X1 U28 ( .A(\A_s[4] ), .ZN(n19) );
  INV_X1 U29 ( .A(\A_ns[4] ), .ZN(n18) );
  OAI221_X1 U30 ( .B1(n31), .B2(n21), .C1(n32), .C2(n1), .A(n44), .ZN(O[15])
         );
  INV_X1 U31 ( .A(\A_s[13] ), .ZN(n21) );
  INV_X1 U32 ( .A(\A_ns[13] ), .ZN(n1) );
  NOR2_X2 U33 ( .A1(n50), .A2(B[7]), .ZN(n34) );
  NOR2_X2 U34 ( .A1(n30), .A2(n50), .ZN(n35) );
  INV_X1 U35 ( .A(B[7]), .ZN(n30) );
  NAND3_X1 U36 ( .A1(n50), .A2(n51), .A3(B[7]), .ZN(n32) );
  XNOR2_X1 U37 ( .A(B[5]), .B(B[6]), .ZN(n50) );
  OR2_X1 U38 ( .A1(n51), .A2(B[7]), .ZN(n31) );
  AOI22_X1 U39 ( .A1(\A_s[5] ), .A2(n34), .B1(\A_ns[5] ), .B2(n35), .ZN(n38)
         );
  AOI22_X1 U40 ( .A1(\A_s[6] ), .A2(n34), .B1(\A_ns[6] ), .B2(n35), .ZN(n37)
         );
  AOI22_X1 U41 ( .A1(\A_s[7] ), .A2(n34), .B1(\A_ns[7] ), .B2(n35), .ZN(n36)
         );
  AOI22_X1 U42 ( .A1(\A_s[8] ), .A2(n34), .B1(\A_ns[8] ), .B2(n35), .ZN(n33)
         );
  AOI22_X1 U43 ( .A1(\A_s[9] ), .A2(n34), .B1(\A_ns[9] ), .B2(n35), .ZN(n49)
         );
  AOI22_X1 U44 ( .A1(\A_s[10] ), .A2(n34), .B1(\A_ns[10] ), .B2(n35), .ZN(n48)
         );
  AOI22_X1 U45 ( .A1(\A_s[11] ), .A2(n34), .B1(\A_ns[11] ), .B2(n35), .ZN(n47)
         );
  AOI22_X1 U46 ( .A1(\A_s[12] ), .A2(n34), .B1(\A_ns[12] ), .B2(n35), .ZN(n46)
         );
  AOI22_X1 U47 ( .A1(\A_s[13] ), .A2(n34), .B1(\A_ns[13] ), .B2(n35), .ZN(n45)
         );
  AOI22_X1 U48 ( .A1(A_s[14]), .A2(n34), .B1(A_ns[14]), .B2(n35), .ZN(n44) );
  NAND2_X1 U49 ( .A1(B[5]), .A2(B[6]), .ZN(n51) );
  OAI221_X1 U50 ( .B1(n31), .B2(n16), .C1(n32), .C2(n14), .A(n40), .ZN(O[4])
         );
  INV_X1 U51 ( .A(\A_s[2] ), .ZN(n16) );
  INV_X1 U52 ( .A(\A_ns[2] ), .ZN(n14) );
  OAI221_X1 U53 ( .B1(n31), .B2(n17), .C1(n32), .C2(n15), .A(n39), .ZN(O[5])
         );
  INV_X1 U54 ( .A(\A_s[3] ), .ZN(n17) );
  INV_X1 U55 ( .A(\A_ns[3] ), .ZN(n15) );
  OAI221_X1 U56 ( .B1(n31), .B2(n12), .C1(n32), .C2(n9), .A(n42), .ZN(O[2]) );
  INV_X1 U57 ( .A(\A_s[0] ), .ZN(n12) );
  INV_X1 U58 ( .A(\A_ns[0] ), .ZN(n9) );
  OAI221_X1 U59 ( .B1(n31), .B2(n13), .C1(n32), .C2(n11), .A(n41), .ZN(O[3])
         );
  INV_X1 U60 ( .A(\A_s[1] ), .ZN(n13) );
  INV_X1 U61 ( .A(\A_ns[1] ), .ZN(n11) );
  AOI22_X1 U62 ( .A1(\A_s[1] ), .A2(n34), .B1(\A_ns[1] ), .B2(n35), .ZN(n42)
         );
  AOI22_X1 U63 ( .A1(\A_s[2] ), .A2(n34), .B1(\A_ns[2] ), .B2(n35), .ZN(n41)
         );
  AOI22_X1 U64 ( .A1(\A_s[3] ), .A2(n34), .B1(\A_ns[3] ), .B2(n35), .ZN(n40)
         );
  AOI22_X1 U65 ( .A1(\A_s[4] ), .A2(n34), .B1(\A_ns[4] ), .B2(n35), .ZN(n39)
         );
  AOI22_X1 U66 ( .A1(n35), .A2(\A_ns[0] ), .B1(n34), .B2(\A_s[0] ), .ZN(n43)
         );
endmodule


module RCA_NBIT12_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .S(SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
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
  wire   n1;
  wire   [13:1] carry;

  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .S(SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
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
  wire   n1;
  wire   [15:1] carry;

  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .S(SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
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
  wire   A_n_9, \A_n[0] , \SHIFT[3][13] , \SHIFT[3][12] , \SHIFT[3][11] ,
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

  BOOTHENC_NBIT10_i0 ENC1 ( .A_s({A[7], A[7], A[7:1], \A_n[0] }), .A_ns({A_n_9, 
        A_n_9, n11, n10, n9, n8, n7, n6, n5, \A_n[0] }), .B({B[7], B[7], B}), 
        .O({\OTMP[0][10] , \OTMP[0][8] , \OTMP[0][7] , \OTMP[0][6] , 
        \OTMP[0][5] , \OTMP[0][4] , \OTMP[0][3] , \OTMP[0][2] , \OTMP[0][1] , 
        \OTMP[0][0] }), .A_so({\SHIFT[1][9] , \SHIFT[1][8] , \SHIFT[1][7] , 
        \SHIFT[1][6] , \SHIFT[1][5] , \SHIFT[1][4] , \SHIFT[1][3] , 
        \SHIFT[1][2] , \SHIFT[1][1] , SYNOPSYS_UNCONNECTED__0}), .A_nso({
        \SHIFT_n[1][9] , \SHIFT_n[1][8] , \SHIFT_n[1][7] , \SHIFT_n[1][6] , 
        \SHIFT_n[1][5] , \SHIFT_n[1][4] , \SHIFT_n[1][3] , \SHIFT_n[1][2] , 
        \SHIFT_n[1][1] , SYNOPSYS_UNCONNECTED__1}) );
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
  AND2_X1 U5 ( .A1(n26), .A2(n17), .ZN(n4) );
  XOR2_X1 U6 ( .A(n20), .B(n19), .Z(n5) );
  XOR2_X1 U7 ( .A(n21), .B(n12), .Z(n6) );
  XOR2_X1 U8 ( .A(n22), .B(n13), .Z(n7) );
  XOR2_X1 U9 ( .A(n23), .B(n14), .Z(n8) );
  XOR2_X1 U10 ( .A(n24), .B(n15), .Z(n9) );
  XOR2_X1 U11 ( .A(n25), .B(n16), .Z(n10) );
  XOR2_X1 U12 ( .A(n26), .B(n17), .Z(n11) );
  AND2_X1 U13 ( .A1(n20), .A2(n19), .ZN(n12) );
  AND2_X1 U14 ( .A1(n21), .A2(n12), .ZN(n13) );
  AND2_X1 U15 ( .A1(n22), .A2(n13), .ZN(n14) );
  AND2_X1 U16 ( .A1(n23), .A2(n14), .ZN(n15) );
  AND2_X1 U17 ( .A1(n24), .A2(n15), .ZN(n16) );
  AND2_X1 U18 ( .A1(n25), .A2(n16), .ZN(n17) );
  INV_X1 U19 ( .A(n18), .ZN(A_n_9) );
  XNOR2_X1 U20 ( .A(n26), .B(n4), .ZN(n18) );
  INV_X1 U21 ( .A(\A_n[0] ), .ZN(n19) );
  INV_X1 U22 ( .A(A[1]), .ZN(n20) );
  INV_X1 U23 ( .A(A[2]), .ZN(n21) );
  INV_X1 U24 ( .A(A[7]), .ZN(n26) );
  INV_X1 U25 ( .A(A[3]), .ZN(n22) );
  INV_X1 U26 ( .A(A[4]), .ZN(n23) );
  INV_X1 U27 ( .A(A[5]), .ZN(n24) );
  INV_X1 U28 ( .A(A[6]), .ZN(n25) );
endmodule

