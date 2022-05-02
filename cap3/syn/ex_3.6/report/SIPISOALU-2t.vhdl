
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
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X2
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_2_port, NEXT_STATE_1_port, 
      NEXT_STATE_0_port, N129, n6, n7, n8, n9, n10, n1, n2, n3, n4, n5, n11, 
      n12, loadC_port, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, 
      n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39
      , n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65 : std_logic;

begin
   loadB <= N129;
   loadC <= loadC_port;
   startC <= loadC_port;
   
   CURRENT_STATE_reg_0_inst : DFFR_X2 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n1, Q => n18, QN => n10);
   CURRENT_STATE_reg_1_inst : DFFR_X2 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n1, Q => n19, QN => n9);
   CURRENT_STATE_reg_3_inst : DFFR_X2 port map( D => n4, CK => clk, RN => n1, Q
                           => n22, QN => n7);
   CURRENT_STATE_reg_4_inst : DFFR_X2 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => n23, QN => n6);
   CURRENT_STATE_reg_2_inst : DFFR_X2 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => n24, QN => n8);
   U22 : NOR3_X1 port map( A1 => n26, A2 => n7, A3 => n10, ZN => 
                           NEXT_STATE_4_port);
   U23 : NOR4_X1 port map( A1 => n12, A2 => n28, A3 => n29, A4 => n30, ZN => 
                           n27);
   U24 : AOI21_X1 port map( B1 => n20, B2 => n31, A => n32, ZN => n28);
   U25 : NAND2_X1 port map( A1 => n33, A2 => n34, ZN => NEXT_STATE_2_port);
   U26 : AOI22_X1 port map( A1 => n35, A2 => n36, B1 => n12, B2 => n3, ZN => 
                           n33);
   U27 : OAI21_X1 port map( B1 => n38, B2 => n39, A => n14, ZN => n35);
   U28 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => n39);
   U29 : NAND2_X1 port map( A1 => n2, A2 => n40, ZN => NEXT_STATE_1_port);
   U30 : AOI21_X1 port map( B1 => n29, B2 => n3, A => n41, ZN => n40);
   U31 : NOR4_X1 port map( A1 => n5, A2 => n42, A3 => n43, A4 => n38, ZN => n41
                           );
   U32 : NOR2_X1 port map( A1 => n9, A2 => n10, ZN => n43);
   U33 : NAND2_X1 port map( A1 => n44, A2 => n45, ZN => n29);
   U34 : OAI21_X1 port map( B1 => n3, B2 => n14, A => n34, ZN => n46);
   U35 : AOI21_X1 port map( B1 => n47, B2 => n32, A => n30, ZN => n34);
   U36 : OAI21_X1 port map( B1 => n8, B2 => n45, A => n25, ZN => n30);
   U37 : NAND2_X1 port map( A1 => n48, A2 => n24, ZN => n25);
   U38 : NAND2_X1 port map( A1 => n50, A2 => n51, ZN => NEXT_STATE_0_port);
   U39 : AOI21_X1 port map( B1 => n32, B2 => n52, A => n53, ZN => n51);
   U40 : OAI21_X1 port map( B1 => n54, B2 => n38, A => n45, ZN => n53);
   U41 : NAND2_X1 port map( A1 => n15, A2 => n19, ZN => n45);
   U42 : AOI21_X1 port map( B1 => n10, B2 => n19, A => n5, ZN => n54);
   U43 : OR2_X1 port map( A1 => n55, A2 => n47, ZN => n52);
   U44 : NAND2_X1 port map( A1 => n44, A2 => n37, ZN => n55);
   U45 : NAND2_X1 port map( A1 => n56, A2 => n57, ZN => n37);
   U46 : NOR3_X1 port map( A1 => n10, A2 => n9, A3 => n7, ZN => n57);
   U47 : NAND2_X1 port map( A1 => n8, A2 => n48, ZN => n44);
   U48 : NOR4_X1 port map( A1 => n7, A2 => n10, A3 => n23, A4 => n19, ZN => n48
                           );
   U49 : AOI22_X1 port map( A1 => n5, A2 => n47, B1 => n49, B2 => n3, ZN => n50
                           );
   U50 : NOR2_X1 port map( A1 => n11, A2 => strobeA, ZN => n32);
   U51 : OAI21_X1 port map( B1 => n18, B2 => n20, A => n58, ZN => n49);
   U52 : OAI21_X1 port map( B1 => n59, B2 => n15, A => n24, ZN => n58);
   U53 : NOR3_X1 port map( A1 => n22, A2 => n23, A3 => n19, ZN => n59);
   U54 : NAND2_X1 port map( A1 => n60, A2 => n61, ZN => n47);
   U55 : NOR2_X1 port map( A1 => n62, A2 => n63, ZN => n61);
   U56 : NOR3_X1 port map( A1 => n31, A2 => n19, A3 => n24, ZN => n63);
   U57 : NAND2_X1 port map( A1 => n64, A2 => n10, ZN => n31);
   U58 : NOR2_X1 port map( A1 => n7, A2 => n23, ZN => n64);
   U59 : AOI22_X1 port map( A1 => n21, A2 => n42, B1 => N129, B2 => n18, ZN => 
                           n60);
   U60 : NAND2_X1 port map( A1 => n56, A2 => n7, ZN => n38);
   U61 : NOR2_X1 port map( A1 => n23, A2 => n24, ZN => n56);
   U62 : NAND2_X1 port map( A1 => strobeA, A2 => n11, ZN => n36);
   U63 : OAI21_X1 port map( B1 => n7, B2 => n26, A => n16, ZN => shiftC);
   U64 : NOR4_X1 port map( A1 => n6, A2 => n24, A3 => n22, A4 => n17, ZN => n62
                           );
   U65 : NOR3_X1 port map( A1 => n24, A2 => n42, A3 => n23, ZN => shiftA);
   U66 : NOR2_X1 port map( A1 => n18, A2 => n19, ZN => n42);
   U67 : NOR2_X1 port map( A1 => n22, A2 => n26, ZN => N129);
   U68 : NAND2_X1 port map( A1 => n65, A2 => n6, ZN => n26);
   U69 : NOR2_X1 port map( A1 => n9, A2 => n8, ZN => n65);
   U3 : INV_X1 port map( A => N129, ZN => n20);
   U4 : INV_X1 port map( A => n25, ZN => loadC_port);
   U5 : INV_X1 port map( A => n49, ZN => n14);
   U6 : INV_X1 port map( A => n27, ZN => n4);
   U7 : INV_X1 port map( A => n38, ZN => n21);
   U8 : INV_X1 port map( A => n46, ZN => n2);
   U9 : INV_X1 port map( A => n31, ZN => n15);
   U10 : INV_X1 port map( A => n37, ZN => n12);
   U11 : INV_X1 port map( A => n32, ZN => n3);
   U12 : INV_X1 port map( A => n36, ZN => n5);
   U13 : INV_X1 port map( A => n42, ZN => n17);
   U14 : INV_X1 port map( A => n62, ZN => n16);
   U15 : INV_X1 port map( A => rst, ZN => n1);
   U16 : INV_X1 port map( A => strobeB, ZN => n11);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X2
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal EA, LDB, LDC, SHIFTC, n31, n33, n39, n40, n41, n42, n43, n44, n46, 
      n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n69, n70, n71, n72, n73, n74, n75, n76, n77, 
      n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92
      , n93, n94, n95, n96, n97, n98, n99, n_1000, n_1001, n_1002 : std_logic;

begin
   
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   PISO_reg_3_inst : DFFR_X2 port map( D => n49, CK => CLK, RN => n54, Q => n65
                           , QN => n_1000);
   PISO_reg_2_inst : DFFR_X2 port map( D => n50, CK => CLK, RN => n54, Q => n66
                           , QN => n57);
   PISO_reg_1_inst : DFFR_X2 port map( D => n51, CK => CLK, RN => n54, Q => n67
                           , QN => n58);
   PISO_reg_0_inst : DFFR_X2 port map( D => n48, CK => CLK, RN => n54, Q => C, 
                           QN => n31);
   SIPO_reg_2_inst : DFFR_X2 port map( D => n43, CK => CLK, RN => n54, Q => 
                           n_1001, QN => n59);
   SIPO_reg_1_inst : DFFR_X2 port map( D => n44, CK => CLK, RN => n54, Q => n69
                           , QN => n60);
   SIPO_reg_0_inst : DFFR_X2 port map( D => n46, CK => CLK, RN => n54, Q => n70
                           , QN => n61);
   PIPO_reg_3_inst : DFFR_X2 port map( D => n42, CK => CLK, RN => n54, Q => n71
                           , QN => n62);
   PIPO_reg_2_inst : DFFR_X2 port map( D => n41, CK => CLK, RN => n54, Q => n72
                           , QN => n63);
   PIPO_reg_1_inst : DFFR_X2 port map( D => n40, CK => CLK, RN => n54, Q => n73
                           , QN => n64);
   PIPO_reg_0_inst : DFFR_X2 port map( D => n39, CK => CLK, RN => n54, Q => 
                           n_1002, QN => n33);
   U54 : OAI21_X1 port map( B1 => n52, B2 => n58, A => n74, ZN => n51);
   U55 : AOI22_X1 port map( A1 => n66, A2 => n75, B1 => LDC, B2 => n76, ZN => 
                           n74);
   U56 : XOR2_X1 port map( A => n77, B => n78, Z => n76);
   U57 : XOR2_X1 port map( A => n73, B => n70, Z => n78);
   U58 : NOR2_X1 port map( A1 => n33, A2 => n56, ZN => n77);
   U59 : OAI21_X1 port map( B1 => n57, B2 => n52, A => n79, ZN => n50);
   U60 : AOI22_X1 port map( A1 => n65, A2 => n75, B1 => n80, B2 => LDC, ZN => 
                           n79);
   U61 : XNOR2_X1 port map( A => n81, B => n55, ZN => n80);
   U62 : XOR2_X1 port map( A => n63, B => n69, Z => n81);
   U63 : OAI21_X1 port map( B1 => n53, B2 => n82, A => n83, ZN => n49);
   U64 : NAND2_X1 port map( A1 => n65, A2 => n84, ZN => n83);
   U65 : XOR2_X1 port map( A => n85, B => n86, Z => n82);
   U66 : XOR2_X1 port map( A => n59, B => n71, Z => n86);
   U67 : OAI21_X1 port map( B1 => n87, B2 => n60, A => n88, ZN => n85);
   U68 : OAI21_X1 port map( B1 => n69, B2 => n55, A => n72, ZN => n88);
   U69 : AOI21_X1 port map( B1 => A, B2 => n89, A => n90, ZN => n87);
   U70 : NOR2_X1 port map( A1 => n61, A2 => n64, ZN => n90);
   U71 : AOI21_X1 port map( B1 => n61, B2 => n64, A => n33, ZN => n89);
   U72 : OAI21_X1 port map( B1 => n31, B2 => n52, A => n91, ZN => n48);
   U73 : AOI22_X1 port map( A1 => n92, A2 => LDC, B1 => n67, B2 => n75, ZN => 
                           n91);
   U74 : NOR2_X1 port map( A1 => n84, A2 => LDC, ZN => n75);
   U75 : XOR2_X1 port map( A => n56, B => n33, Z => n92);
   U76 : NOR2_X1 port map( A1 => LDC, A2 => SHIFTC, ZN => n84);
   U77 : OAI21_X1 port map( B1 => EA, B2 => n61, A => n93, ZN => n46);
   U78 : NAND2_X1 port map( A1 => EA, A2 => A, ZN => n93);
   U79 : OAI21_X1 port map( B1 => EA, B2 => n60, A => n94, ZN => n44);
   U80 : NAND2_X1 port map( A1 => EA, A2 => n70, ZN => n94);
   U81 : OAI21_X1 port map( B1 => EA, B2 => n59, A => n95, ZN => n43);
   U82 : NAND2_X1 port map( A1 => EA, A2 => n69, ZN => n95);
   U83 : OAI21_X1 port map( B1 => LDB, B2 => n62, A => n96, ZN => n42);
   U84 : NAND2_X1 port map( A1 => LDB, A2 => B(3), ZN => n96);
   U85 : OAI21_X1 port map( B1 => LDB, B2 => n63, A => n97, ZN => n41);
   U86 : NAND2_X1 port map( A1 => B(2), A2 => LDB, ZN => n97);
   U87 : OAI21_X1 port map( B1 => LDB, B2 => n64, A => n98, ZN => n40);
   U88 : NAND2_X1 port map( A1 => B(1), A2 => LDB, ZN => n98);
   U89 : OAI21_X1 port map( B1 => n33, B2 => LDB, A => n99, ZN => n39);
   U90 : NAND2_X1 port map( A1 => B(0), A2 => LDB, ZN => n99);
   U91 : INV_X1 port map( A => n84, ZN => n52);
   U92 : INV_X1 port map( A => n87, ZN => n55);
   U93 : INV_X1 port map( A => LDC, ZN => n53);
   U94 : INV_X1 port map( A => RESET, ZN => n54);
   U95 : INV_X1 port map( A => A, ZN => n56);

end SYN_A;
