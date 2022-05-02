
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI33_X1
      port( A1, A2, A3, B1, B2, B3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal CURRENT_STATE_4_port, CURRENT_STATE_3_port, CURRENT_STATE_2_port, 
      CURRENT_STATE_1_port, CURRENT_STATE_0_port, NEXT_STATE_4_port, 
      NEXT_STATE_3_port, NEXT_STATE_2_port, NEXT_STATE_1_port, 
      NEXT_STATE_0_port, N129, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, 
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26
      , n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, 
      n41, n42, n43, n44, n45, n46, n47, loadC_port : std_logic;

begin
   loadB <= N129;
   loadC <= loadC_port;
   startC <= loadC_port;
   
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n1, Q => CURRENT_STATE_0_port, QN => n10)
                           ;
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n1, Q => CURRENT_STATE_1_port, QN => n9);
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => NEXT_STATE_3_port, CK => 
                           clk, RN => n1, Q => CURRENT_STATE_3_port, QN => n7);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => CURRENT_STATE_4_port, QN => n6);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => CURRENT_STATE_2_port, QN => n8);
   U3 : INV_X1 port map( A => rst, ZN => n1);
   U45 : XOR2_X1 port map( A => n10, B => CURRENT_STATE_1_port, Z => n33);
   U46 : OAI33_X1 port map( A1 => n37, A2 => n9, A3 => n8, B1 => n38, B2 => 
                           CURRENT_STATE_1_port, B3 => n10, ZN => n15);
   U47 : NAND3_X1 port map( A1 => n35, A2 => n20, A3 => n2, ZN => n42);
   U48 : NAND3_X1 port map( A1 => n9, A2 => n8, A3 => n5, ZN => n22);
   U49 : NAND3_X1 port map( A1 => n10, A2 => n6, A3 => CURRENT_STATE_3_port, ZN
                           => n37);
   U50 : NAND3_X1 port map( A1 => CURRENT_STATE_1_port, A2 => n10, A3 => n4, ZN
                           => n39);
   U51 : NAND3_X1 port map( A1 => n7, A2 => n6, A3 => n8, ZN => n30);
   U52 : NAND3_X1 port map( A1 => CURRENT_STATE_2_port, A2 => n6, A3 => 
                           CURRENT_STATE_3_port, ZN => n38);
   U53 : NAND3_X1 port map( A1 => n7, A2 => n6, A3 => CURRENT_STATE_2_port, ZN 
                           => n43);
   U4 : AOI21_X1 port map( B1 => n36, B2 => n19, A => n15, ZN => n26);
   U5 : NAND4_X1 port map( A1 => n45, A2 => n46, A3 => n22, A4 => n23, ZN => 
                           n36);
   U6 : NAND2_X1 port map( A1 => n4, A2 => n47, ZN => n45);
   U7 : INV_X1 port map( A => n30, ZN => n4);
   U8 : OAI211_X1 port map( C1 => n3, C2 => n11, A => n26, B => n31, ZN => 
                           NEXT_STATE_1_port);
   U9 : AOI21_X1 port map( B1 => n16, B2 => n11, A => n32, ZN => n31);
   U10 : INV_X1 port map( A => n28, ZN => n3);
   U11 : NOR3_X1 port map( A1 => n30, A2 => n12, A3 => n33, ZN => n32);
   U12 : INV_X1 port map( A => n36, ZN => n2);
   U13 : INV_X1 port map( A => n37, ZN => n5);
   U14 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => n16);
   U15 : OR3_X1 port map( A1 => n15, A2 => n16, A3 => n17, ZN => 
                           NEXT_STATE_3_port);
   U16 : OAI21_X1 port map( B1 => n18, B2 => n19, A => n20, ZN => n17);
   U17 : AND4_X1 port map( A1 => n21, A2 => n22, A3 => n23, A4 => n24, ZN => 
                           n18);
   U18 : INV_X1 port map( A => n19, ZN => n11);
   U19 : INV_X1 port map( A => n29, ZN => n12);
   U20 : NOR2_X1 port map( A1 => n43, A2 => n9, ZN => N129);
   U21 : NOR4_X1 port map( A1 => n7, A2 => n10, A3 => CURRENT_STATE_2_port, A4 
                           => CURRENT_STATE_4_port, ZN => n44);
   U22 : NOR3_X1 port map( A1 => n47, A2 => CURRENT_STATE_4_port, A3 => 
                           CURRENT_STATE_2_port, ZN => shiftA);
   U23 : OAI211_X1 port map( C1 => CURRENT_STATE_1_port, C2 => n43, A => n21, B
                           => n24, ZN => n28);
   U24 : NOR2_X1 port map( A1 => CURRENT_STATE_1_port, A2 => 
                           CURRENT_STATE_0_port, ZN => n47);
   U25 : OAI21_X1 port map( B1 => n9, B2 => n38, A => n46, ZN => shiftC);
   U26 : NAND4_X1 port map( A1 => CURRENT_STATE_3_port, A2 => 
                           CURRENT_STATE_2_port, A3 => CURRENT_STATE_0_port, A4
                           => n6, ZN => n14);
   U27 : NAND4_X1 port map( A1 => CURRENT_STATE_4_port, A2 => n47, A3 => n8, A4
                           => n7, ZN => n46);
   U28 : NOR2_X1 port map( A1 => CURRENT_STATE_1_port, A2 => n14, ZN => 
                           loadC_port);
   U29 : NAND2_X1 port map( A1 => n44, A2 => CURRENT_STATE_1_port, ZN => n20);
   U30 : NAND2_X1 port map( A1 => N129, A2 => CURRENT_STATE_0_port, ZN => n23);
   U31 : NAND2_X1 port map( A1 => N129, A2 => n10, ZN => n24);
   U32 : NAND2_X1 port map( A1 => n44, A2 => n9, ZN => n35);
   U33 : OAI211_X1 port map( C1 => n19, C2 => n20, A => n25, B => n26, ZN => 
                           NEXT_STATE_2_port);
   U34 : OAI21_X1 port map( B1 => n27, B2 => n28, A => n29, ZN => n25);
   U35 : NOR3_X1 port map( A1 => n30, A2 => n9, A3 => n10, ZN => n27);
   U36 : NAND2_X1 port map( A1 => n5, A2 => CURRENT_STATE_1_port, ZN => n34);
   U37 : NAND2_X1 port map( A1 => n5, A2 => CURRENT_STATE_2_port, ZN => n21);
   U38 : NOR2_X1 port map( A1 => n9, A2 => n14, ZN => NEXT_STATE_4_port);
   U39 : NAND4_X1 port map( A1 => n39, A2 => n34, A3 => n40, A4 => n41, ZN => 
                           NEXT_STATE_0_port);
   U40 : OAI21_X1 port map( B1 => n4, B2 => n36, A => n12, ZN => n40);
   U41 : AOI22_X1 port map( A1 => n19, A2 => n42, B1 => n28, B2 => n11, ZN => 
                           n41);
   U42 : NOR2_X1 port map( A1 => n13, A2 => strobeA, ZN => n19);
   U43 : NAND2_X1 port map( A1 => strobeA, A2 => n13, ZN => n29);
   U44 : INV_X1 port map( A => strobeB, ZN => n13);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal EA, LDB, LDC, SHIFTC, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, 
      n46, n47, n48, n49, n50, n51, n_1000, n_1001, n_1002, n_1003, n_1004, 
      n_1005, n_1006, n_1007, n_1008 : std_logic;

begin
   
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   PISO_reg_3_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => n45, Q => 
                           n_1000, QN => n15);
   PISO_reg_2_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => n45, Q => 
                           n_1001, QN => n23);
   PISO_reg_1_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => n45, Q => 
                           n_1002, QN => n10);
   PISO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n45, Q => C, 
                           QN => n31);
   U3 : OAI21_X1 port map( B1 => n33, B2 => LDB, A => n3, ZN => n39);
   U4 : NAND2_X1 port map( A1 => LDB, A2 => B(0), ZN => n3);
   U5 : OAI21_X1 port map( B1 => n34, B2 => LDB, A => n4, ZN => n40);
   U6 : NAND2_X1 port map( A1 => B(1), A2 => LDB, ZN => n4);
   U7 : OAI21_X1 port map( B1 => n47, B2 => LDB, A => n5, ZN => n41);
   U8 : NAND2_X1 port map( A1 => B(2), A2 => LDB, ZN => n5);
   U9 : OAI21_X1 port map( B1 => n35, B2 => LDB, A => n6, ZN => n42);
   U10 : NAND2_X1 port map( A1 => B(3), A2 => LDB, ZN => n6);
   U11 : OAI22_X1 port map( A1 => n37, A2 => n7, B1 => n36, B2 => EA, ZN => n43
                           );
   U12 : OAI22_X1 port map( A1 => n38, A2 => n7, B1 => n37, B2 => EA, ZN => n44
                           );
   U13 : INV_X1 port map( A => RESET, ZN => n45);
   U14 : OAI22_X1 port map( A1 => n38, A2 => EA, B1 => n7, B2 => n8, ZN => n46)
                           ;
   U15 : INV_X1 port map( A => A, ZN => n8);
   U16 : INV_X1 port map( A => EA, ZN => n7);
   U17 : OAI221_X1 port map( B1 => n9, B2 => n10, C1 => n31, C2 => n11, A => 
                           n12, ZN => n48);
   U18 : OAI211_X1 port map( C1 => A, C2 => n13, A => n14, B => LDC, ZN => n12)
                           ;
   U19 : OAI22_X1 port map( A1 => n11, A2 => n15, B1 => n16, B2 => n17, ZN => 
                           n49);
   U20 : XNOR2_X1 port map( A => n18, B => n19, ZN => n17);
   U21 : XOR2_X1 port map( A => n35, B => n36, Z => n19);
   U22 : OAI22_X1 port map( A1 => n20, A2 => n37, B1 => n21, B2 => n47, ZN => 
                           n18);
   U23 : AND2_X1 port map( A1 => n47, A2 => n21, ZN => n20);
   U24 : OAI222_X1 port map( A1 => n16, A2 => n22, B1 => n9, B2 => n15, C1 => 
                           n11, C2 => n23, ZN => n50);
   U26 : XOR2_X1 port map( A => n21, B => n24, Z => n22);
   U27 : XOR2_X1 port map( A => n37, B => n47, Z => n24);
   U28 : INV_X1 port map( A => n25, ZN => n21);
   U29 : OAI22_X1 port map( A1 => n38, A2 => n34, B1 => n26, B2 => n14, ZN => 
                           n25);
   U30 : AND2_X1 port map( A1 => n38, A2 => n34, ZN => n26);
   U31 : OAI222_X1 port map( A1 => n9, A2 => n23, B1 => n27, B2 => n16, C1 => 
                           n10, C2 => n11, ZN => n51);
   U33 : XOR2_X1 port map( A => n14, B => n28, Z => n27);
   U34 : XOR2_X1 port map( A => n34, B => n38, Z => n28);
   U35 : NAND2_X1 port map( A1 => A, A2 => n13, ZN => n14);
   U38 : NAND2_X1 port map( A1 => n11, A2 => n16, ZN => n9);
   U39 : INV_X1 port map( A => LDC, ZN => n16);
   U40 : OR2_X1 port map( A1 => SHIFTC, A2 => LDC, ZN => n11);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n43, CK => CLK, RN => n45, Q => 
                           n_1003, QN => n36);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n45, Q => 
                           n_1004, QN => n37);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n45, Q => 
                           n_1005, QN => n38);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n42, CK => CLK, RN => n45, Q => 
                           n_1006, QN => n35);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n41, CK => CLK, RN => n45, Q => 
                           n_1007, QN => n47);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n40, CK => CLK, RN => n45, Q => 
                           n_1008, QN => n34);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n39, CK => CLK, RN => n45, Q => n13
                           , QN => n33);

end SYN_A;
