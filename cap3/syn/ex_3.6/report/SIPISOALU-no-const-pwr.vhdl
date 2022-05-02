
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

   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_3_port, NEXT_STATE_2_port, 
      NEXT_STATE_1_port, NEXT_STATE_0_port, N129, n1, n6, n7, n8, n9, n10, 
      loadC_port, n2, n3, n4, n5, n11, n12, n13, n14, n15, n16, n17, n18, n19, 
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50, n51, n52, n53, n54 : std_logic;

begin
   loadB <= N129;
   loadC <= loadC_port;
   startC <= loadC_port;
   
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n1, Q => n5, QN => n10);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n1, Q => n2, QN => n9);
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => NEXT_STATE_3_port, CK => 
                           clk, RN => n1, Q => n3, QN => n7);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => n11, QN => n6);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => n4, QN => n8);
   U3 : INV_X1 port map( A => rst, ZN => n1);
   U4 : NOR3_X1 port map( A1 => n12, A2 => n7, A3 => n10, ZN => 
                           NEXT_STATE_4_port);
   U5 : NAND4_X1 port map( A1 => n13, A2 => n14, A3 => n15, A4 => n16, ZN => 
                           NEXT_STATE_3_port);
   U6 : OAI21_X1 port map( B1 => n17, B2 => N129, A => n18, ZN => n15);
   U7 : OAI221_X1 port map( B1 => n19, B2 => n20, C1 => n21, C2 => n16, A => 
                           n22, ZN => NEXT_STATE_2_port);
   U8 : NOR2_X1 port map( A1 => n23, A2 => n24, ZN => n20);
   U9 : NOR3_X1 port map( A1 => n25, A2 => n9, A3 => n10, ZN => n23);
   U10 : INV_X1 port map( A => n26, ZN => n19);
   U11 : NAND3_X1 port map( A1 => n22, A2 => n27, A3 => n28, ZN => 
                           NEXT_STATE_1_port);
   U12 : MUX2_X1 port map( A => n14, B => n29, S => n21, Z => n28);
   U13 : NOR2_X1 port map( A1 => n30, A2 => n31, ZN => n14);
   U14 : INV_X1 port map( A => n32, ZN => n30);
   U15 : NAND3_X1 port map( A1 => n33, A2 => n26, A3 => n34, ZN => n27);
   U16 : AOI21_X1 port map( B1 => n5, B2 => n2, A => n25, ZN => n34);
   U17 : INV_X1 port map( A => n35, ZN => n22);
   U18 : OAI21_X1 port map( B1 => n36, B2 => n18, A => n13, ZN => n35);
   U19 : AOI21_X1 port map( B1 => n4, B2 => n31, A => loadC_port, ZN => n13);
   U20 : AND2_X1 port map( A1 => n37, A2 => n4, ZN => loadC_port);
   U21 : INV_X1 port map( A => n21, ZN => n18);
   U22 : OAI211_X1 port map( C1 => n36, C2 => n26, A => n38, B => n39, ZN => 
                           NEXT_STATE_0_port);
   U23 : AOI21_X1 port map( B1 => n40, B2 => n41, A => n31, ZN => n39);
   U24 : NOR2_X1 port map( A1 => n42, A2 => n9, ZN => n31);
   U25 : OAI21_X1 port map( B1 => n9, B2 => n5, A => n26, ZN => n41);
   U26 : INV_X1 port map( A => n25, ZN => n40);
   U27 : MUX2_X1 port map( A => n29, B => n43, S => n21, Z => n38);
   U28 : NOR2_X1 port map( A1 => n44, A2 => strobeA, ZN => n21);
   U29 : AND3_X1 port map( A1 => n36, A2 => n32, A3 => n16, ZN => n43);
   U30 : NAND4_X1 port map( A1 => n8, A2 => n6, A3 => n45, A4 => n5, ZN => n16)
                           ;
   U31 : NOR2_X1 port map( A1 => n9, A2 => n7, ZN => n45);
   U32 : NAND2_X1 port map( A1 => n8, A2 => n37, ZN => n32);
   U33 : NOR4_X1 port map( A1 => n2, A2 => n11, A3 => n10, A4 => n7, ZN => n37)
                           ;
   U34 : INV_X1 port map( A => n24, ZN => n29);
   U35 : OAI21_X1 port map( B1 => n5, B2 => n46, A => n47, ZN => n24);
   U36 : OAI21_X1 port map( B1 => n48, B2 => n17, A => n4, ZN => n47);
   U37 : INV_X1 port map( A => n42, ZN => n17);
   U38 : NOR3_X1 port map( A1 => n3, A2 => n11, A3 => n2, ZN => n48);
   U39 : NAND2_X1 port map( A1 => strobeA, A2 => n44, ZN => n26);
   U40 : INV_X1 port map( A => strobeB, ZN => n44);
   U41 : INV_X1 port map( A => n49, ZN => n36);
   U42 : OAI221_X1 port map( B1 => n33, B2 => n25, C1 => n10, C2 => n46, A => 
                           n50, ZN => n49);
   U43 : NOR2_X1 port map( A1 => n51, A2 => n52, ZN => n50);
   U44 : NOR3_X1 port map( A1 => n42, A2 => n2, A3 => n4, ZN => n52);
   U45 : NAND3_X1 port map( A1 => n6, A2 => n3, A3 => n10, ZN => n42);
   U46 : NAND3_X1 port map( A1 => n8, A2 => n6, A3 => n7, ZN => n25);
   U47 : OAI21_X1 port map( B1 => n7, B2 => n12, A => n53, ZN => shiftC);
   U48 : INV_X1 port map( A => n51, ZN => n53);
   U49 : NOR4_X1 port map( A1 => n33, A2 => n3, A3 => n4, A4 => n6, ZN => n51);
   U50 : AND3_X1 port map( A1 => n8, A2 => n33, A3 => n6, ZN => shiftA);
   U51 : NAND2_X1 port map( A1 => n10, A2 => n9, ZN => n33);
   U52 : INV_X1 port map( A => n46, ZN => N129);
   U53 : NAND2_X1 port map( A1 => n7, A2 => n54, ZN => n46);
   U54 : INV_X1 port map( A => n12, ZN => n54);
   U55 : NAND3_X1 port map( A1 => n4, A2 => n2, A3 => n6, ZN => n12);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal EA, LDB, LDC, SHIFTC, n31, n39, n40, n41, n42, n43, n44, n45, n46, 
      n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, 
      n77, n78, n79, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006, 
      n_1007 : std_logic;

begin
   
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n45, Q => n76
                           , QN => n_1000);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n45, Q => n74
                           , QN => n53);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n43, CK => CLK, RN => n45, Q => n70
                           , QN => n_1001);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n42, CK => CLK, RN => n45, Q => n71
                           , QN => n_1002);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n41, CK => CLK, RN => n45, Q => n73
                           , QN => n52);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n40, CK => CLK, RN => n45, Q => n77
                           , QN => n_1003);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n39, CK => CLK, RN => n45, Q => n78
                           , QN => n_1004);
   PISO_reg_3_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => n45, Q => 
                           n_1005, QN => n72);
   PISO_reg_2_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => n45, Q => 
                           n_1006, QN => n79);
   PISO_reg_1_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => n45, Q => 
                           n_1007, QN => n75);
   PISO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n45, Q => C, 
                           QN => n31);
   U41 : OAI222_X1 port map( A1 => n54, A2 => n55, B1 => n79, B2 => n56, C1 => 
                           n75, C2 => n57, ZN => n51);
   U42 : XOR2_X1 port map( A => n58, B => n59, Z => n54);
   U43 : XOR2_X1 port map( A => n76, B => n77, Z => n59);
   U44 : NAND2_X1 port map( A1 => n78, A2 => A, ZN => n58);
   U45 : OAI222_X1 port map( A1 => n55, A2 => n60, B1 => n72, B2 => n56, C1 => 
                           n79, C2 => n57, ZN => n50);
   U46 : XNOR2_X1 port map( A => n61, B => n62, ZN => n60);
   U47 : XOR2_X1 port map( A => n52, B => n74, Z => n62);
   U48 : OAI22_X1 port map( A1 => n72, A2 => n57, B1 => n55, B2 => n63, ZN => 
                           n49);
   U49 : XOR2_X1 port map( A => n64, B => n65, Z => n63);
   U50 : XNOR2_X1 port map( A => n71, B => n70, ZN => n65);
   U51 : OAI22_X1 port map( A1 => n61, A2 => n53, B1 => n66, B2 => n52, ZN => 
                           n64);
   U52 : AND2_X1 port map( A1 => n53, A2 => n61, ZN => n66);
   U53 : AOI21_X1 port map( B1 => n76, B2 => n77, A => n67, ZN => n61);
   U54 : INV_X1 port map( A => n68, ZN => n67);
   U55 : OAI211_X1 port map( C1 => n77, C2 => n76, A => A, B => n78, ZN => n68)
                           ;
   U56 : OAI222_X1 port map( A1 => n75, A2 => n56, B1 => n69, B2 => n55, C1 => 
                           n31, C2 => n57, ZN => n48);
   U57 : XNOR2_X1 port map( A => A, B => n78, ZN => n69);
   U58 : NAND2_X1 port map( A1 => n57, A2 => n55, ZN => n56);
   U59 : INV_X1 port map( A => LDC, ZN => n55);
   U60 : OR2_X1 port map( A1 => LDC, A2 => SHIFTC, ZN => n57);
   U61 : MUX2_X1 port map( A => n76, B => A, S => EA, Z => n46);
   U62 : INV_X1 port map( A => RESET, ZN => n45);
   U63 : MUX2_X1 port map( A => n74, B => n76, S => EA, Z => n44);
   U64 : MUX2_X1 port map( A => n70, B => n74, S => EA, Z => n43);
   U65 : MUX2_X1 port map( A => n71, B => B(3), S => LDB, Z => n42);
   U66 : MUX2_X1 port map( A => n73, B => B(2), S => LDB, Z => n41);
   U67 : MUX2_X1 port map( A => n77, B => B(1), S => LDB, Z => n40);
   U68 : MUX2_X1 port map( A => n78, B => B(0), S => LDB, Z => n39);

end SYN_A;
