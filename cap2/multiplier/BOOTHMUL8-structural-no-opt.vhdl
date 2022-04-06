
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL_NBIT8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL_NBIT8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_DW01_add_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (15 downto 0);  CO : out std_logic);

end RCA_NBIT16_DW01_add_0;

architecture SYN_rpl of RCA_NBIT16_DW01_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1,
      n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, 
      n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33
      , n34 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U1 : XOR2_X1 port map( A => A(15), B => B(15), Z => n3);
   U3 : XOR2_X1 port map( A => carry_15_port, B => n3, Z => SUM(15));
   U4 : XOR2_X1 port map( A => A(10), B => B(10), Z => n4);
   U5 : XOR2_X1 port map( A => carry_10_port, B => n4, Z => SUM(10));
   U9 : NAND3_X1 port map( A1 => n5, A2 => n6, A3 => n7, ZN => carry_11_port);
   U10 : XOR2_X1 port map( A => A(14), B => B(14), Z => n8);
   U11 : XOR2_X1 port map( A => n13, B => n8, Z => SUM(14));
   U15 : NAND3_X1 port map( A1 => n9, A2 => n10, A3 => n11, ZN => carry_15_port
                           );
   U16 : NAND3_X1 port map( A1 => n32, A2 => n33, A3 => n34, ZN => n12);
   U17 : NAND3_X1 port map( A1 => n32, A2 => n33, A3 => n34, ZN => n13);
   U18 : XOR2_X1 port map( A => A(7), B => B(7), Z => n14);
   U19 : XOR2_X1 port map( A => carry_7_port, B => n14, Z => SUM(7));
   U23 : NAND3_X1 port map( A1 => n15, A2 => n16, A3 => n17, ZN => carry_8_port
                           );
   U24 : XOR2_X1 port map( A => A(9), B => B(9), Z => n18);
   U25 : XOR2_X1 port map( A => carry_9_port, B => n18, Z => SUM(9));
   U29 : NAND3_X1 port map( A1 => n19, A2 => n20, A3 => n21, ZN => 
                           carry_10_port);
   U30 : NAND3_X1 port map( A1 => n28, A2 => n29, A3 => n30, ZN => n22);
   U31 : XOR2_X1 port map( A => A(11), B => B(11), Z => n23);
   U32 : XOR2_X1 port map( A => carry_11_port, B => n23, Z => SUM(11));
   U36 : NAND3_X1 port map( A1 => n24, A2 => n25, A3 => n26, ZN => 
                           carry_12_port);
   U37 : XOR2_X1 port map( A => A(12), B => B(12), Z => n27);
   U38 : XOR2_X1 port map( A => carry_12_port, B => n27, Z => SUM(12));
   U42 : NAND3_X1 port map( A1 => n28, A2 => n29, A3 => n30, ZN => 
                           carry_13_port);
   U43 : XOR2_X1 port map( A => A(13), B => B(13), Z => n31);
   U44 : XOR2_X1 port map( A => n22, B => n31, Z => SUM(13));
   U48 : NAND3_X1 port map( A1 => n32, A2 => n33, A3 => n34, ZN => 
                           carry_14_port);
   U6 : NAND2_X1 port map( A1 => n22, A2 => A(13), ZN => n32);
   U7 : NAND2_X1 port map( A1 => n12, A2 => A(14), ZN => n9);
   U8 : NAND2_X1 port map( A1 => carry_12_port, A2 => A(12), ZN => n28);
   U12 : NAND2_X1 port map( A1 => carry_9_port, A2 => A(9), ZN => n19);
   U13 : NAND2_X1 port map( A1 => carry_9_port, A2 => B(9), ZN => n20);
   U14 : NAND2_X1 port map( A1 => A(9), A2 => B(9), ZN => n21);
   U20 : NAND2_X1 port map( A1 => carry_10_port, A2 => A(10), ZN => n5);
   U21 : NAND2_X1 port map( A1 => carry_10_port, A2 => B(10), ZN => n6);
   U22 : NAND2_X1 port map( A1 => A(10), A2 => B(10), ZN => n7);
   U26 : NAND2_X1 port map( A1 => carry_11_port, A2 => A(11), ZN => n24);
   U27 : NAND2_X1 port map( A1 => carry_11_port, A2 => B(11), ZN => n25);
   U28 : NAND2_X1 port map( A1 => A(11), A2 => B(11), ZN => n26);
   U33 : NAND2_X1 port map( A1 => A(13), A2 => B(13), ZN => n34);
   U34 : NAND2_X1 port map( A1 => carry_7_port, A2 => A(7), ZN => n15);
   U35 : NAND2_X1 port map( A1 => A(14), A2 => B(14), ZN => n11);
   U39 : NAND2_X1 port map( A1 => carry_13_port, A2 => B(13), ZN => n33);
   U40 : NAND2_X1 port map( A1 => carry_14_port, A2 => B(14), ZN => n10);
   U41 : NAND2_X1 port map( A1 => A(12), A2 => B(12), ZN => n30);
   U45 : NAND2_X1 port map( A1 => carry_12_port, A2 => B(12), ZN => n29);
   U46 : NAND2_X1 port map( A1 => A(7), A2 => B(7), ZN => n17);
   U47 : NAND2_X1 port map( A1 => carry_7_port, A2 => B(7), ZN => n16);
   U49 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT14_DW01_add_0 is

   port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (13 downto 0);  CO : out std_logic);

end RCA_NBIT14_DW01_add_0;

architecture SYN_rpl of RCA_NBIT14_DW01_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_4_port, carry_3_port, carry_2_port, n1,
      n27, n28, n29, n30, n31, n32, n33, n34, n24, n25, n26 : std_logic;

begin
   
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => n26, B => B(5), CI => A(5), CO => carry_6_port, 
                           S => SUM(5));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U10 : XOR2_X1 port map( A => carry_9_port, B => n31, Z => SUM(9));
   U11 : XOR2_X1 port map( A => carry_4_port, B => n28, Z => SUM(4));
   U12 : XOR2_X1 port map( A => A(4), B => B(4), Z => n28);
   U13 : XOR2_X1 port map( A => n32, B => n33, Z => SUM(13));
   U14 : XOR2_X1 port map( A => carry_12_port, B => n34, Z => SUM(12));
   U15 : XOR2_X1 port map( A => A(12), B => B(12), Z => n34);
   U16 : XOR2_X1 port map( A => n30, B => n29, Z => SUM(10));
   U17 : XOR2_X1 port map( A => A(9), B => B(9), Z => n31);
   U18 : XOR2_X1 port map( A => n24, B => B(10), Z => n30);
   U19 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U1 : INV_X1 port map( A => A(10), ZN => n24);
   U2 : XNOR2_X1 port map( A => B(13), B => A(13), ZN => n32);
   U3 : AOI22_X1 port map( A1 => carry_12_port, A2 => n34, B1 => A(12), B2 => 
                           B(12), ZN => n33);
   U4 : AOI22_X1 port map( A1 => B(9), A2 => A(9), B1 => n31, B2 => 
                           carry_9_port, ZN => n29);
   U5 : AOI22_X1 port map( A1 => B(4), A2 => A(4), B1 => n28, B2 => 
                           carry_4_port, ZN => n27);
   U6 : OAI22_X1 port map( A1 => n25, A2 => n24, B1 => n29, B2 => n30, ZN => 
                           carry_11_port);
   U7 : INV_X1 port map( A => B(10), ZN => n25);
   U8 : INV_X1 port map( A => n27, ZN => n26);
   U9 : AND2_X1 port map( A1 => A(0), A2 => B(0), ZN => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT12_DW01_add_0 is

   port( A, B : in std_logic_vector (11 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (11 downto 0);  CO : out std_logic);

end RCA_NBIT12_DW01_add_0;

architecture SYN_rpl of RCA_NBIT12_DW01_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_10_port, carry_9_port, carry_2_port, n1, n52, n53, n54, n55, 
      n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70
      , n71, n72, n73, n74, n43, n44, n45, n46, n47, n48, n49, n50, n51 : 
      std_logic;

begin
   
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U33 : XOR2_X1 port map( A => n55, B => n57, Z => SUM(7));
   U34 : XOR2_X1 port map( A => B(7), B => A(7), Z => n57);
   U35 : XOR2_X1 port map( A => B(6), B => A(6), Z => n60);
   U36 : XOR2_X1 port map( A => B(5), B => A(5), Z => n63);
   U37 : XOR2_X1 port map( A => B(4), B => A(4), Z => n66);
   U38 : XOR2_X1 port map( A => B(3), B => A(3), Z => n69);
   U39 : XOR2_X1 port map( A => A(2), B => n71, Z => SUM(2));
   U40 : XOR2_X1 port map( A => carry_2_port, B => B(2), Z => n71);
   U41 : XOR2_X1 port map( A => n72, B => n73, Z => SUM(11));
   U42 : XOR2_X1 port map( A => carry_10_port, B => n74, Z => SUM(10));
   U43 : XOR2_X1 port map( A => A(10), B => B(10), Z => n74);
   U44 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U1 : INV_X1 port map( A => n52, ZN => n44);
   U2 : XNOR2_X1 port map( A => B(11), B => A(11), ZN => n72);
   U3 : AOI22_X1 port map( A1 => carry_10_port, A2 => n74, B1 => A(10), B2 => 
                           B(10), ZN => n73);
   U4 : AOI22_X1 port map( A1 => n48, A2 => A(5), B1 => n61, B2 => B(5), ZN => 
                           n58);
   U5 : OR2_X1 port map( A1 => A(5), A2 => n48, ZN => n61);
   U6 : INV_X1 port map( A => n62, ZN => n48);
   U7 : AOI21_X1 port map( B1 => n55, B2 => A(7), A => n45, ZN => n52);
   U8 : INV_X1 port map( A => n56, ZN => n45);
   U9 : OAI21_X1 port map( B1 => A(7), B2 => n55, A => B(7), ZN => n56);
   U10 : AOI22_X1 port map( A1 => n50, A2 => A(3), B1 => n67, B2 => B(3), ZN =>
                           n65);
   U11 : OR2_X1 port map( A1 => A(3), A2 => n50, ZN => n67);
   U12 : INV_X1 port map( A => n68, ZN => n50);
   U13 : AOI22_X1 port map( A1 => n49, A2 => A(4), B1 => n64, B2 => B(4), ZN =>
                           n62);
   U14 : OR2_X1 port map( A1 => A(4), A2 => n49, ZN => n64);
   U15 : INV_X1 port map( A => n65, ZN => n49);
   U16 : OAI21_X1 port map( B1 => n58, B2 => n46, A => n59, ZN => n55);
   U17 : INV_X1 port map( A => A(6), ZN => n46);
   U18 : OAI21_X1 port map( B1 => A(6), B2 => n47, A => B(6), ZN => n59);
   U19 : INV_X1 port map( A => n58, ZN => n47);
   U20 : AOI21_X1 port map( B1 => A(2), B2 => B(2), A => n51, ZN => n68);
   U21 : INV_X1 port map( A => n70, ZN => n51);
   U22 : OAI21_X1 port map( B1 => A(2), B2 => B(2), A => carry_2_port, ZN => 
                           n70);
   U23 : XNOR2_X1 port map( A => n65, B => n66, ZN => SUM(4));
   U24 : XNOR2_X1 port map( A => n52, B => n54, ZN => SUM(8));
   U25 : XNOR2_X1 port map( A => B(8), B => n43, ZN => n54);
   U26 : XNOR2_X1 port map( A => n68, B => n69, ZN => SUM(3));
   U27 : OAI21_X1 port map( B1 => n52, B2 => n43, A => n53, ZN => carry_9_port)
                           ;
   U28 : OAI21_X1 port map( B1 => A(8), B2 => n44, A => B(8), ZN => n53);
   U29 : INV_X1 port map( A => A(8), ZN => n43);
   U30 : XNOR2_X1 port map( A => n62, B => n63, ZN => SUM(5));
   U31 : XNOR2_X1 port map( A => n58, B => n60, ZN => SUM(6));
   U32 : AND2_X1 port map( A1 => A(0), A2 => B(0), ZN => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16;

architecture SYN_DIRECT of RCA_NBIT16 is

   component RCA_NBIT16_DW01_add_0
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1006 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT16_DW01_add_0 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, SUM(15) 
                           => S(15), SUM(14) => S(14), SUM(13) => S(13), 
                           SUM(12) => S(12), SUM(11) => S(11), SUM(10) => S(10)
                           , SUM(9) => S(9), SUM(8) => S(8), SUM(7) => S(7), 
                           SUM(6) => S(6), SUM(5) => S(5), SUM(4) => S(4), 
                           SUM(3) => S(3), SUM(2) => S(2), SUM(1) => S(1), 
                           SUM(0) => S(0), CO => n_1006);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT14 is

   port( A, B : in std_logic_vector (13 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (13 downto 0);  Co : out std_logic);

end RCA_NBIT14;

architecture SYN_DIRECT of RCA_NBIT14 is

   component RCA_NBIT14_DW01_add_0
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1007 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT14_DW01_add_0 port map( A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, SUM(13) => S(13), 
                           SUM(12) => S(12), SUM(11) => S(11), SUM(10) => S(10)
                           , SUM(9) => S(9), SUM(8) => S(8), SUM(7) => S(7), 
                           SUM(6) => S(6), SUM(5) => S(5), SUM(4) => S(4), 
                           SUM(3) => S(3), SUM(2) => S(2), SUM(1) => S(1), 
                           SUM(0) => S(0), CO => n_1007);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT12 is

   port( A, B : in std_logic_vector (11 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (11 downto 0);  Co : out std_logic);

end RCA_NBIT12;

architecture SYN_DIRECT of RCA_NBIT12 is

   component RCA_NBIT12_DW01_add_0
      port( A, B : in std_logic_vector (11 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (11 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1008 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT12_DW01_add_0 port map( A(11) => A(11), A(10) => A(10), 
                           A(9) => A(9), A(8) => A(8), A(7) => A(7), A(6) => 
                           A(6), A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2)
                           => A(2), A(1) => A(1), A(0) => A(0), B(11) => B(11),
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, SUM(11) => S(11), SUM(10) => S(10), SUM(9)
                           => S(9), SUM(8) => S(8), SUM(7) => S(7), SUM(6) => 
                           S(6), SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3)
                           , SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO
                           => n_1008);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHENC_NBIT16_i6 is

   port( A_s, A_ns, B : in std_logic_vector (15 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (15 downto 0));

end BOOTHENC_NBIT16_i6;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT16_i6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, 
      n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, 
      n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, 
      n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, 
      n385, n386, n387, O_1_port, O_2_port, O_3_port, O_4_port, O_5_port, 
      O_6_port, O_7_port, O_8_port, O_9_port, O_10_port, O_11_port, O_12_port, 
      O_13_port, O_14_port, O_15_port, O_0_port : std_logic;

begin
   O <= ( O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, 
      O_2_port, O_1_port, O_0_port );
   A_so <= ( A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6)
      , A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), O_0_port, O_0_port );
   A_nso <= ( A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7)
      , A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), O_0_port
      , O_0_port );
   
   O_0_port <= '0';
   U2 : NOR2_X2 port map( A1 => n385, A2 => B(7), ZN => n339);
   U3 : NOR2_X2 port map( A1 => n386, A2 => n385, ZN => n340);
   U4 : INV_X1 port map( A => n338, ZN => O_1_port);
   U5 : AOI22_X1 port map( A1 => n339, A2 => A_s(0), B1 => n340, B2 => A_ns(0),
                           ZN => n338);
   U6 : OAI221_X1 port map( B1 => n341, B2 => n342, C1 => n343, C2 => n344, A 
                           => n345, ZN => O_9_port);
   U7 : AOI22_X1 port map( A1 => A_ns(8), A2 => n340, B1 => A_s(8), B2 => n339,
                           ZN => n345);
   U8 : INV_X1 port map( A => A_s(7), ZN => n344);
   U9 : INV_X1 port map( A => A_ns(7), ZN => n342);
   U10 : OAI221_X1 port map( B1 => n341, B2 => n346, C1 => n343, C2 => n347, A 
                           => n348, ZN => O_8_port);
   U11 : AOI22_X1 port map( A1 => A_ns(7), A2 => n340, B1 => A_s(7), B2 => n339
                           , ZN => n348);
   U12 : INV_X1 port map( A => A_s(6), ZN => n347);
   U13 : INV_X1 port map( A => A_ns(6), ZN => n346);
   U14 : OAI221_X1 port map( B1 => n341, B2 => n349, C1 => n343, C2 => n350, A 
                           => n351, ZN => O_7_port);
   U15 : AOI22_X1 port map( A1 => A_ns(6), A2 => n340, B1 => A_s(6), B2 => n339
                           , ZN => n351);
   U16 : INV_X1 port map( A => A_s(5), ZN => n350);
   U17 : INV_X1 port map( A => A_ns(5), ZN => n349);
   U18 : OAI221_X1 port map( B1 => n341, B2 => n352, C1 => n343, C2 => n353, A 
                           => n354, ZN => O_6_port);
   U19 : AOI22_X1 port map( A1 => A_ns(5), A2 => n340, B1 => A_s(5), B2 => n339
                           , ZN => n354);
   U20 : INV_X1 port map( A => A_s(4), ZN => n353);
   U21 : INV_X1 port map( A => A_ns(4), ZN => n352);
   U22 : OAI221_X1 port map( B1 => n341, B2 => n355, C1 => n343, C2 => n356, A 
                           => n357, ZN => O_5_port);
   U23 : AOI22_X1 port map( A1 => A_ns(4), A2 => n340, B1 => A_s(4), B2 => n339
                           , ZN => n357);
   U24 : INV_X1 port map( A => A_s(3), ZN => n356);
   U25 : INV_X1 port map( A => A_ns(3), ZN => n355);
   U26 : OAI221_X1 port map( B1 => n341, B2 => n358, C1 => n343, C2 => n359, A 
                           => n360, ZN => O_4_port);
   U27 : AOI22_X1 port map( A1 => A_ns(3), A2 => n340, B1 => A_s(3), B2 => n339
                           , ZN => n360);
   U28 : INV_X1 port map( A => A_s(2), ZN => n359);
   U29 : INV_X1 port map( A => A_ns(2), ZN => n358);
   U30 : OAI221_X1 port map( B1 => n341, B2 => n361, C1 => n343, C2 => n362, A 
                           => n363, ZN => O_3_port);
   U31 : AOI22_X1 port map( A1 => A_ns(2), A2 => n340, B1 => A_s(2), B2 => n339
                           , ZN => n363);
   U32 : INV_X1 port map( A => A_s(1), ZN => n362);
   U33 : INV_X1 port map( A => A_ns(1), ZN => n361);
   U34 : OAI221_X1 port map( B1 => n364, B2 => n341, C1 => n365, C2 => n343, A 
                           => n366, ZN => O_2_port);
   U35 : AOI22_X1 port map( A1 => A_ns(1), A2 => n340, B1 => A_s(1), B2 => n339
                           , ZN => n366);
   U36 : INV_X1 port map( A => A_s(0), ZN => n365);
   U37 : INV_X1 port map( A => A_ns(0), ZN => n364);
   U38 : OAI221_X1 port map( B1 => n341, B2 => n367, C1 => n343, C2 => n368, A 
                           => n369, ZN => O_15_port);
   U39 : AOI22_X1 port map( A1 => A_ns(14), A2 => n340, B1 => A_s(14), B2 => 
                           n339, ZN => n369);
   U40 : INV_X1 port map( A => A_s(13), ZN => n368);
   U41 : INV_X1 port map( A => A_ns(13), ZN => n367);
   U42 : OAI221_X1 port map( B1 => n341, B2 => n370, C1 => n343, C2 => n371, A 
                           => n372, ZN => O_14_port);
   U43 : AOI22_X1 port map( A1 => A_ns(13), A2 => n340, B1 => A_s(13), B2 => 
                           n339, ZN => n372);
   U44 : INV_X1 port map( A => A_s(12), ZN => n371);
   U45 : INV_X1 port map( A => A_ns(12), ZN => n370);
   U46 : OAI221_X1 port map( B1 => n341, B2 => n373, C1 => n343, C2 => n374, A 
                           => n375, ZN => O_13_port);
   U47 : AOI22_X1 port map( A1 => A_ns(12), A2 => n340, B1 => A_s(12), B2 => 
                           n339, ZN => n375);
   U48 : INV_X1 port map( A => A_s(11), ZN => n374);
   U49 : INV_X1 port map( A => A_ns(11), ZN => n373);
   U50 : OAI221_X1 port map( B1 => n341, B2 => n376, C1 => n343, C2 => n377, A 
                           => n378, ZN => O_12_port);
   U51 : AOI22_X1 port map( A1 => A_ns(11), A2 => n340, B1 => A_s(11), B2 => 
                           n339, ZN => n378);
   U52 : INV_X1 port map( A => A_s(10), ZN => n377);
   U53 : INV_X1 port map( A => A_ns(10), ZN => n376);
   U54 : OAI221_X1 port map( B1 => n341, B2 => n379, C1 => n343, C2 => n380, A 
                           => n381, ZN => O_11_port);
   U55 : AOI22_X1 port map( A1 => A_ns(10), A2 => n340, B1 => A_s(10), B2 => 
                           n339, ZN => n381);
   U56 : INV_X1 port map( A => A_s(9), ZN => n380);
   U57 : INV_X1 port map( A => A_ns(9), ZN => n379);
   U58 : OAI221_X1 port map( B1 => n382, B2 => n341, C1 => n383, C2 => n343, A 
                           => n384, ZN => O_10_port);
   U59 : AOI22_X1 port map( A1 => A_ns(9), A2 => n340, B1 => A_s(9), B2 => n339
                           , ZN => n384);
   U60 : NAND3_X1 port map( A1 => B(6), A2 => n386, A3 => B(5), ZN => n343);
   U61 : INV_X1 port map( A => B(7), ZN => n386);
   U62 : INV_X1 port map( A => A_s(8), ZN => n383);
   U63 : NAND3_X1 port map( A1 => B(7), A2 => n387, A3 => n385, ZN => n341);
   U64 : XNOR2_X1 port map( A => B(5), B => B(6), ZN => n385);
   U65 : INV_X1 port map( A => B(5), ZN => n387);
   U66 : INV_X1 port map( A => A_ns(8), ZN => n382);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHENC_NBIT14_i4 is

   port( A_s, A_ns, B : in std_logic_vector (13 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (13 downto 0));

end BOOTHENC_NBIT14_i4;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT14_i4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, 
      n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, 
      n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, 
      n333, n334, n335, n336, n337, n338, n339, n340, n341, O_1_port, O_2_port,
      O_3_port, O_4_port, O_5_port, O_6_port, O_7_port, O_8_port, O_9_port, 
      O_10_port, O_11_port, O_12_port, O_13_port, O_0_port : std_logic;

begin
   O <= ( O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, 
      O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, 
      O_0_port );
   A_so <= ( A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), 
      A_s(3), A_s(2), A_s(1), A_s(0), O_0_port, O_0_port );
   A_nso <= ( A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), 
      A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), O_0_port, O_0_port );
   
   O_0_port <= '0';
   U2 : NOR2_X2 port map( A1 => n339, A2 => B(5), ZN => n299);
   U3 : NOR2_X2 port map( A1 => n340, A2 => n339, ZN => n300);
   U4 : INV_X1 port map( A => n298, ZN => O_1_port);
   U5 : AOI22_X1 port map( A1 => n299, A2 => A_s(0), B1 => n300, B2 => A_ns(0),
                           ZN => n298);
   U6 : OAI221_X1 port map( B1 => n301, B2 => n302, C1 => n303, C2 => n304, A 
                           => n305, ZN => O_9_port);
   U7 : AOI22_X1 port map( A1 => A_ns(8), A2 => n300, B1 => A_s(8), B2 => n299,
                           ZN => n305);
   U8 : INV_X1 port map( A => A_s(7), ZN => n304);
   U9 : INV_X1 port map( A => A_ns(7), ZN => n302);
   U10 : OAI221_X1 port map( B1 => n301, B2 => n306, C1 => n303, C2 => n307, A 
                           => n308, ZN => O_8_port);
   U11 : AOI22_X1 port map( A1 => A_ns(7), A2 => n300, B1 => A_s(7), B2 => n299
                           , ZN => n308);
   U12 : INV_X1 port map( A => A_s(6), ZN => n307);
   U13 : INV_X1 port map( A => A_ns(6), ZN => n306);
   U14 : OAI221_X1 port map( B1 => n301, B2 => n309, C1 => n303, C2 => n310, A 
                           => n311, ZN => O_7_port);
   U15 : AOI22_X1 port map( A1 => A_ns(6), A2 => n300, B1 => A_s(6), B2 => n299
                           , ZN => n311);
   U16 : INV_X1 port map( A => A_s(5), ZN => n310);
   U17 : INV_X1 port map( A => A_ns(5), ZN => n309);
   U18 : OAI221_X1 port map( B1 => n301, B2 => n312, C1 => n303, C2 => n313, A 
                           => n314, ZN => O_6_port);
   U19 : AOI22_X1 port map( A1 => A_ns(5), A2 => n300, B1 => A_s(5), B2 => n299
                           , ZN => n314);
   U20 : INV_X1 port map( A => A_s(4), ZN => n313);
   U21 : INV_X1 port map( A => A_ns(4), ZN => n312);
   U22 : OAI221_X1 port map( B1 => n301, B2 => n315, C1 => n303, C2 => n316, A 
                           => n317, ZN => O_5_port);
   U23 : AOI22_X1 port map( A1 => A_ns(4), A2 => n300, B1 => A_s(4), B2 => n299
                           , ZN => n317);
   U24 : INV_X1 port map( A => A_s(3), ZN => n316);
   U25 : INV_X1 port map( A => A_ns(3), ZN => n315);
   U26 : OAI221_X1 port map( B1 => n301, B2 => n318, C1 => n303, C2 => n319, A 
                           => n320, ZN => O_4_port);
   U27 : AOI22_X1 port map( A1 => A_ns(3), A2 => n300, B1 => A_s(3), B2 => n299
                           , ZN => n320);
   U28 : INV_X1 port map( A => A_s(2), ZN => n319);
   U29 : INV_X1 port map( A => A_ns(2), ZN => n318);
   U30 : OAI221_X1 port map( B1 => n301, B2 => n321, C1 => n303, C2 => n322, A 
                           => n323, ZN => O_3_port);
   U31 : AOI22_X1 port map( A1 => A_ns(2), A2 => n300, B1 => A_s(2), B2 => n299
                           , ZN => n323);
   U32 : INV_X1 port map( A => A_s(1), ZN => n322);
   U33 : INV_X1 port map( A => A_ns(1), ZN => n321);
   U34 : OAI221_X1 port map( B1 => n324, B2 => n301, C1 => n325, C2 => n303, A 
                           => n326, ZN => O_2_port);
   U35 : AOI22_X1 port map( A1 => A_ns(1), A2 => n300, B1 => A_s(1), B2 => n299
                           , ZN => n326);
   U36 : INV_X1 port map( A => A_s(0), ZN => n325);
   U37 : INV_X1 port map( A => A_ns(0), ZN => n324);
   U38 : OAI221_X1 port map( B1 => n301, B2 => n327, C1 => n303, C2 => n328, A 
                           => n329, ZN => O_13_port);
   U39 : AOI22_X1 port map( A1 => A_ns(12), A2 => n300, B1 => A_s(12), B2 => 
                           n299, ZN => n329);
   U40 : INV_X1 port map( A => A_s(11), ZN => n328);
   U41 : INV_X1 port map( A => A_ns(11), ZN => n327);
   U42 : OAI221_X1 port map( B1 => n301, B2 => n330, C1 => n303, C2 => n331, A 
                           => n332, ZN => O_12_port);
   U43 : AOI22_X1 port map( A1 => A_ns(11), A2 => n300, B1 => A_s(11), B2 => 
                           n299, ZN => n332);
   U44 : INV_X1 port map( A => A_s(10), ZN => n331);
   U45 : INV_X1 port map( A => A_ns(10), ZN => n330);
   U46 : OAI221_X1 port map( B1 => n301, B2 => n333, C1 => n303, C2 => n334, A 
                           => n335, ZN => O_11_port);
   U47 : AOI22_X1 port map( A1 => A_ns(10), A2 => n300, B1 => A_s(10), B2 => 
                           n299, ZN => n335);
   U48 : INV_X1 port map( A => A_s(9), ZN => n334);
   U49 : INV_X1 port map( A => A_ns(9), ZN => n333);
   U50 : OAI221_X1 port map( B1 => n336, B2 => n301, C1 => n337, C2 => n303, A 
                           => n338, ZN => O_10_port);
   U51 : AOI22_X1 port map( A1 => A_ns(9), A2 => n300, B1 => A_s(9), B2 => n299
                           , ZN => n338);
   U52 : NAND3_X1 port map( A1 => B(4), A2 => n340, A3 => B(3), ZN => n303);
   U53 : INV_X1 port map( A => B(5), ZN => n340);
   U54 : INV_X1 port map( A => A_s(8), ZN => n337);
   U55 : NAND3_X1 port map( A1 => B(5), A2 => n341, A3 => n339, ZN => n301);
   U56 : XNOR2_X1 port map( A => B(3), B => B(4), ZN => n339);
   U57 : INV_X1 port map( A => B(3), ZN => n341);
   U58 : INV_X1 port map( A => A_ns(8), ZN => n336);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHENC_NBIT12_i2 is

   port( A_s, A_ns, B : in std_logic_vector (11 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (11 downto 0));

end BOOTHENC_NBIT12_i2;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT12_i2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, 
      n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, O_1_port, O_2_port, O_3_port, O_4_port, O_5_port, 
      O_6_port, O_7_port, O_8_port, O_9_port, O_10_port, O_11_port, O_0_port : 
      std_logic;

begin
   O <= ( O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, 
      O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, O_0_port );
   A_so <= ( A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), 
      A_s(1), A_s(0), O_0_port, O_0_port );
   A_nso <= ( A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), 
      A_ns(2), A_ns(1), A_ns(0), O_0_port, O_0_port );
   
   O_0_port <= '0';
   U2 : NOR3_X2 port map( A1 => B(1), A2 => B(2), A3 => n298, ZN => n268);
   U3 : OAI22_X1 port map( A1 => n261, A2 => n262, B1 => n263, B2 => n264, ZN 
                           => O_1_port);
   U4 : OAI221_X1 port map( B1 => n263, B2 => n265, C1 => n261, C2 => n266, A 
                           => n267, ZN => O_9_port);
   U5 : AOI22_X1 port map( A1 => A_ns(7), A2 => n268, B1 => A_s(7), B2 => n269,
                           ZN => n267);
   U6 : OAI221_X1 port map( B1 => n263, B2 => n270, C1 => n261, C2 => n271, A 
                           => n272, ZN => O_8_port);
   U7 : AOI22_X1 port map( A1 => A_ns(6), A2 => n268, B1 => A_s(6), B2 => n269,
                           ZN => n272);
   U8 : INV_X1 port map( A => A_s(7), ZN => n271);
   U9 : INV_X1 port map( A => A_ns(7), ZN => n270);
   U10 : OAI221_X1 port map( B1 => n263, B2 => n273, C1 => n261, C2 => n274, A 
                           => n275, ZN => O_7_port);
   U11 : AOI22_X1 port map( A1 => A_ns(5), A2 => n268, B1 => A_s(5), B2 => n269
                           , ZN => n275);
   U12 : INV_X1 port map( A => A_s(6), ZN => n274);
   U13 : INV_X1 port map( A => A_ns(6), ZN => n273);
   U14 : OAI221_X1 port map( B1 => n263, B2 => n276, C1 => n261, C2 => n277, A 
                           => n278, ZN => O_6_port);
   U15 : AOI22_X1 port map( A1 => A_ns(4), A2 => n268, B1 => A_s(4), B2 => n269
                           , ZN => n278);
   U16 : INV_X1 port map( A => A_s(5), ZN => n277);
   U17 : INV_X1 port map( A => A_ns(5), ZN => n276);
   U18 : OAI221_X1 port map( B1 => n263, B2 => n279, C1 => n261, C2 => n280, A 
                           => n281, ZN => O_5_port);
   U19 : AOI22_X1 port map( A1 => A_ns(3), A2 => n268, B1 => A_s(3), B2 => n269
                           , ZN => n281);
   U20 : INV_X1 port map( A => A_s(4), ZN => n280);
   U21 : INV_X1 port map( A => A_ns(4), ZN => n279);
   U22 : OAI221_X1 port map( B1 => n263, B2 => n282, C1 => n261, C2 => n283, A 
                           => n284, ZN => O_4_port);
   U23 : AOI22_X1 port map( A1 => A_ns(2), A2 => n268, B1 => A_s(2), B2 => n269
                           , ZN => n284);
   U24 : INV_X1 port map( A => A_s(3), ZN => n283);
   U25 : INV_X1 port map( A => A_ns(3), ZN => n282);
   U26 : OAI221_X1 port map( B1 => n263, B2 => n285, C1 => n261, C2 => n286, A 
                           => n287, ZN => O_3_port);
   U27 : AOI22_X1 port map( A1 => A_ns(1), A2 => n268, B1 => A_s(1), B2 => n269
                           , ZN => n287);
   U28 : INV_X1 port map( A => n288, ZN => n269);
   U29 : INV_X1 port map( A => A_s(2), ZN => n286);
   U30 : INV_X1 port map( A => A_ns(2), ZN => n285);
   U31 : OAI221_X1 port map( B1 => n264, B2 => n289, C1 => n262, C2 => n288, A 
                           => n290, ZN => O_2_port);
   U32 : AOI22_X1 port map( A1 => A_ns(1), A2 => n291, B1 => A_s(1), B2 => n292
                           , ZN => n290);
   U33 : INV_X1 port map( A => A_s(0), ZN => n262);
   U34 : INV_X1 port map( A => A_ns(0), ZN => n264);
   U35 : OAI221_X1 port map( B1 => n289, B2 => n293, C1 => n288, C2 => n294, A 
                           => n295, ZN => O_11_port);
   U36 : AOI22_X1 port map( A1 => A_ns(10), A2 => n291, B1 => A_s(10), B2 => 
                           n292, ZN => n295);
   U37 : INV_X1 port map( A => A_s(9), ZN => n294);
   U38 : INV_X1 port map( A => A_ns(9), ZN => n293);
   U39 : OAI221_X1 port map( B1 => n265, B2 => n289, C1 => n266, C2 => n288, A 
                           => n296, ZN => O_10_port);
   U40 : AOI22_X1 port map( A1 => A_ns(9), A2 => n291, B1 => A_s(9), B2 => n292
                           , ZN => n296);
   U41 : INV_X1 port map( A => n261, ZN => n292);
   U42 : NAND2_X1 port map( A1 => n297, A2 => n298, ZN => n261);
   U43 : INV_X1 port map( A => n263, ZN => n291);
   U44 : NAND2_X1 port map( A1 => B(3), A2 => n297, ZN => n263);
   U45 : XOR2_X1 port map( A => B(1), B => B(2), Z => n297);
   U46 : NAND3_X1 port map( A1 => B(2), A2 => n298, A3 => B(1), ZN => n288);
   U47 : INV_X1 port map( A => A_s(8), ZN => n266);
   U48 : INV_X1 port map( A => n268, ZN => n289);
   U49 : INV_X1 port map( A => B(3), ZN => n298);
   U50 : INV_X1 port map( A => A_ns(8), ZN => n265);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHENC_NBIT10_i0 is

   port( A_s, A_ns, B : in std_logic_vector (9 downto 0);  O, A_so, A_nso : out
         std_logic_vector (9 downto 0));

end BOOTHENC_NBIT10_i0;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT10_i0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n177, n178, n179, n180, n181, n182, n183, n184, n185, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201 : std_logic;

begin
   A_so <= ( A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), 
      A_s(0), X_Logic0_port );
   A_nso <= ( A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), 
      A_ns(1), A_ns(0), X_Logic0_port );
   
   X_Logic0_port <= '0';
   U3 : INV_X1 port map( A => n177, ZN => O(9));
   U4 : AOI222_X1 port map( A1 => A_s(9), A2 => n178, B1 => A_ns(8), B2 => n179
                           , C1 => A_ns(9), C2 => n180, ZN => n177);
   U5 : INV_X1 port map( A => n181, ZN => n179);
   U6 : OAI221_X1 port map( B1 => n181, B2 => n182, C1 => n183, C2 => n184, A 
                           => n185, ZN => O(8));
   U7 : NAND2_X1 port map( A1 => A_s(8), A2 => n178, ZN => n185);
   U8 : INV_X1 port map( A => A_ns(8), ZN => n183);
   U9 : OAI221_X1 port map( B1 => n181, B2 => n186, C1 => n184, C2 => n182, A 
                           => n187, ZN => O(7));
   U10 : NAND2_X1 port map( A1 => A_s(7), A2 => n178, ZN => n187);
   U11 : INV_X1 port map( A => A_ns(7), ZN => n182);
   U12 : OAI221_X1 port map( B1 => n181, B2 => n188, C1 => n184, C2 => n186, A 
                           => n189, ZN => O(6));
   U13 : NAND2_X1 port map( A1 => A_s(6), A2 => n178, ZN => n189);
   U14 : INV_X1 port map( A => A_ns(6), ZN => n186);
   U15 : OAI221_X1 port map( B1 => n181, B2 => n190, C1 => n184, C2 => n188, A 
                           => n191, ZN => O(5));
   U16 : NAND2_X1 port map( A1 => A_s(5), A2 => n178, ZN => n191);
   U17 : INV_X1 port map( A => A_ns(5), ZN => n188);
   U18 : OAI221_X1 port map( B1 => n181, B2 => n192, C1 => n184, C2 => n190, A 
                           => n193, ZN => O(4));
   U19 : NAND2_X1 port map( A1 => A_s(4), A2 => n178, ZN => n193);
   U20 : INV_X1 port map( A => A_ns(4), ZN => n190);
   U21 : OAI221_X1 port map( B1 => n181, B2 => n194, C1 => n184, C2 => n192, A 
                           => n195, ZN => O(3));
   U22 : NAND2_X1 port map( A1 => A_s(3), A2 => n178, ZN => n195);
   U23 : INV_X1 port map( A => A_ns(3), ZN => n192);
   U24 : OAI221_X1 port map( B1 => n181, B2 => n196, C1 => n184, C2 => n194, A 
                           => n197, ZN => O(2));
   U25 : NAND2_X1 port map( A1 => A_s(2), A2 => n178, ZN => n197);
   U26 : INV_X1 port map( A => A_ns(2), ZN => n194);
   U27 : OAI221_X1 port map( B1 => n181, B2 => n198, C1 => n184, C2 => n196, A 
                           => n199, ZN => O(1));
   U28 : NAND2_X1 port map( A1 => A_s(1), A2 => n178, ZN => n199);
   U29 : INV_X1 port map( A => A_ns(1), ZN => n196);
   U30 : NAND2_X1 port map( A1 => B(1), A2 => n200, ZN => n181);
   U31 : OAI21_X1 port map( B1 => n184, B2 => n198, A => n201, ZN => O(0));
   U32 : NAND2_X1 port map( A1 => A_s(0), A2 => n178, ZN => n201);
   U33 : INV_X1 port map( A => A_ns(0), ZN => n198);
   U34 : INV_X1 port map( A => n180, ZN => n184);
   U35 : NOR2_X1 port map( A1 => n200, A2 => n178, ZN => n180);
   U36 : NOR2_X1 port map( A1 => n200, A2 => B(1), ZN => n178);
   U37 : INV_X1 port map( A => B(0), ZN => n200);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHMUL_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  S : out std_logic_vector (15
         downto 0));

end BOOTHMUL_NBIT8;

architecture SYN_BEHAVIOURAL of BOOTHMUL_NBIT8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT16
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT14
      port( A, B : in std_logic_vector (13 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (13 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT12
      port( A, B : in std_logic_vector (11 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (11 downto 0);  Co : out std_logic);
   end component;
   
   component BOOTHENC_NBIT16_i6
      port( A_s, A_ns, B : in std_logic_vector (15 downto 0);  O, A_so, A_nso :
            out std_logic_vector (15 downto 0));
   end component;
   
   component BOOTHENC_NBIT14_i4
      port( A_s, A_ns, B : in std_logic_vector (13 downto 0);  O, A_so, A_nso :
            out std_logic_vector (13 downto 0));
   end component;
   
   component BOOTHENC_NBIT12_i2
      port( A_s, A_ns, B : in std_logic_vector (11 downto 0);  O, A_so, A_nso :
            out std_logic_vector (11 downto 0));
   end component;
   
   component BOOTHENC_NBIT10_i0
      port( A_s, A_ns, B : in std_logic_vector (9 downto 0);  O, A_so, A_nso : 
            out std_logic_vector (9 downto 0));
   end component;
   
   signal X_Logic0_port, SHIFT_3_13_port, SHIFT_3_12_port, SHIFT_3_11_port, 
      SHIFT_3_10_port, SHIFT_3_9_port, SHIFT_3_8_port, SHIFT_3_7_port, 
      SHIFT_3_6_port, SHIFT_3_5_port, SHIFT_3_4_port, SHIFT_3_3_port, 
      SHIFT_3_2_port, SHIFT_3_1_port, SHIFT_3_0_port, SHIFT_2_11_port, 
      SHIFT_2_10_port, SHIFT_2_9_port, SHIFT_2_8_port, SHIFT_2_7_port, 
      SHIFT_2_6_port, SHIFT_2_5_port, SHIFT_2_4_port, SHIFT_2_3_port, 
      SHIFT_2_2_port, SHIFT_2_1_port, SHIFT_2_0_port, SHIFT_1_9_port, 
      SHIFT_1_8_port, SHIFT_1_7_port, SHIFT_1_6_port, SHIFT_1_5_port, 
      SHIFT_1_4_port, SHIFT_1_3_port, SHIFT_1_2_port, SHIFT_1_1_port, 
      SHIFT_1_0_port, SHIFT_n_3_13_port, SHIFT_n_3_12_port, SHIFT_n_3_11_port, 
      SHIFT_n_3_10_port, SHIFT_n_3_9_port, SHIFT_n_3_8_port, SHIFT_n_3_7_port, 
      SHIFT_n_3_6_port, SHIFT_n_3_5_port, SHIFT_n_3_4_port, SHIFT_n_3_3_port, 
      SHIFT_n_3_2_port, SHIFT_n_3_1_port, SHIFT_n_3_0_port, SHIFT_n_2_11_port, 
      SHIFT_n_2_10_port, SHIFT_n_2_9_port, SHIFT_n_2_8_port, SHIFT_n_2_7_port, 
      SHIFT_n_2_6_port, SHIFT_n_2_5_port, SHIFT_n_2_4_port, SHIFT_n_2_3_port, 
      SHIFT_n_2_2_port, SHIFT_n_2_1_port, SHIFT_n_2_0_port, SHIFT_n_1_9_port, 
      SHIFT_n_1_8_port, SHIFT_n_1_7_port, SHIFT_n_1_6_port, SHIFT_n_1_5_port, 
      SHIFT_n_1_4_port, SHIFT_n_1_3_port, SHIFT_n_1_2_port, SHIFT_n_1_1_port, 
      SHIFT_n_1_0_port, OTMP_3_15_port, OTMP_3_14_port, OTMP_3_13_port, 
      OTMP_3_12_port, OTMP_3_11_port, OTMP_3_10_port, OTMP_3_9_port, 
      OTMP_3_8_port, OTMP_3_7_port, OTMP_3_6_port, OTMP_3_5_port, OTMP_3_4_port
      , OTMP_3_3_port, OTMP_3_2_port, OTMP_3_1_port, OTMP_3_0_port, 
      OTMP_2_13_port, OTMP_2_12_port, OTMP_2_11_port, OTMP_2_10_port, 
      OTMP_2_9_port, OTMP_2_8_port, OTMP_2_7_port, OTMP_2_6_port, OTMP_2_5_port
      , OTMP_2_4_port, OTMP_2_3_port, OTMP_2_2_port, OTMP_2_1_port, 
      OTMP_2_0_port, OTMP_1_11_port, OTMP_1_10_port, OTMP_1_9_port, 
      OTMP_1_8_port, OTMP_1_7_port, OTMP_1_6_port, OTMP_1_5_port, OTMP_1_4_port
      , OTMP_1_3_port, OTMP_1_2_port, OTMP_1_1_port, OTMP_1_0_port, 
      OTMP_0_10_port, OTMP_0_8_port, OTMP_0_7_port, OTMP_0_6_port, 
      OTMP_0_5_port, OTMP_0_4_port, OTMP_0_3_port, OTMP_0_2_port, OTMP_0_1_port
      , OTMP_0_0_port, PTMP_1_13_port, PTMP_1_12_port, PTMP_1_11_port, 
      PTMP_1_10_port, PTMP_1_9_port, PTMP_1_8_port, PTMP_1_7_port, 
      PTMP_1_6_port, PTMP_1_5_port, PTMP_1_4_port, PTMP_1_3_port, PTMP_1_2_port
      , PTMP_1_1_port, PTMP_1_0_port, PTMP_0_12_port, PTMP_0_10_port, 
      PTMP_0_9_port, PTMP_0_8_port, PTMP_0_7_port, PTMP_0_6_port, PTMP_0_5_port
      , PTMP_0_4_port, PTMP_0_3_port, PTMP_0_2_port, PTMP_0_1_port, 
      PTMP_0_0_port, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n_1009, n_1010, n_1011,
      n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, 
      n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, 
      n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, 
      n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, 
      n_1048, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056 : 
      std_logic;

begin
   
   X_Logic0_port <= '0';
   ENC1 : BOOTHENC_NBIT10_i0 port map( A_s(9) => A(7), A_s(8) => A(7), A_s(7) 
                           => A(7), A_s(6) => A(6), A_s(5) => A(5), A_s(4) => 
                           A(4), A_s(3) => A(3), A_s(2) => A(2), A_s(1) => A(1)
                           , A_s(0) => A(0), A_ns(9) => n4, A_ns(8) => n4, 
                           A_ns(7) => n11, A_ns(6) => n9, A_ns(5) => n8, 
                           A_ns(4) => n7, A_ns(3) => n6, A_ns(2) => n5, A_ns(1)
                           => n10, A_ns(0) => A(0), B(9) => B(7), B(8) => B(7),
                           B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), O(9) => OTMP_0_10_port, O(8) => 
                           OTMP_0_8_port, O(7) => OTMP_0_7_port, O(6) => 
                           OTMP_0_6_port, O(5) => OTMP_0_5_port, O(4) => 
                           OTMP_0_4_port, O(3) => OTMP_0_3_port, O(2) => 
                           OTMP_0_2_port, O(1) => OTMP_0_1_port, O(0) => 
                           OTMP_0_0_port, A_so(9) => SHIFT_1_9_port, A_so(8) =>
                           SHIFT_1_8_port, A_so(7) => SHIFT_1_7_port, A_so(6) 
                           => SHIFT_1_6_port, A_so(5) => SHIFT_1_5_port, 
                           A_so(4) => SHIFT_1_4_port, A_so(3) => SHIFT_1_3_port
                           , A_so(2) => SHIFT_1_2_port, A_so(1) => 
                           SHIFT_1_1_port, A_so(0) => n_1009, A_nso(9) => 
                           SHIFT_n_1_9_port, A_nso(8) => SHIFT_n_1_8_port, 
                           A_nso(7) => SHIFT_n_1_7_port, A_nso(6) => 
                           SHIFT_n_1_6_port, A_nso(5) => SHIFT_n_1_5_port, 
                           A_nso(4) => SHIFT_n_1_4_port, A_nso(3) => 
                           SHIFT_n_1_3_port, A_nso(2) => SHIFT_n_1_2_port, 
                           A_nso(1) => SHIFT_n_1_1_port, A_nso(0) => n_1010);
   ENC_1 : BOOTHENC_NBIT12_i2 port map( A_s(11) => SHIFT_1_9_port, A_s(10) => 
                           SHIFT_1_9_port, A_s(9) => SHIFT_1_9_port, A_s(8) => 
                           SHIFT_1_8_port, A_s(7) => SHIFT_1_7_port, A_s(6) => 
                           SHIFT_1_6_port, A_s(5) => SHIFT_1_5_port, A_s(4) => 
                           SHIFT_1_4_port, A_s(3) => SHIFT_1_3_port, A_s(2) => 
                           SHIFT_1_2_port, A_s(1) => SHIFT_1_1_port, A_s(0) => 
                           SHIFT_1_0_port, A_ns(11) => SHIFT_n_1_9_port, 
                           A_ns(10) => SHIFT_n_1_9_port, A_ns(9) => 
                           SHIFT_n_1_9_port, A_ns(8) => SHIFT_n_1_8_port, 
                           A_ns(7) => SHIFT_n_1_7_port, A_ns(6) => 
                           SHIFT_n_1_6_port, A_ns(5) => SHIFT_n_1_5_port, 
                           A_ns(4) => SHIFT_n_1_4_port, A_ns(3) => 
                           SHIFT_n_1_3_port, A_ns(2) => SHIFT_n_1_2_port, 
                           A_ns(1) => SHIFT_n_1_1_port, A_ns(0) => 
                           SHIFT_n_1_0_port, B(11) => B(7), B(10) => B(7), B(9)
                           => B(7), B(8) => B(7), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), O(11) => 
                           OTMP_1_11_port, O(10) => OTMP_1_10_port, O(9) => 
                           OTMP_1_9_port, O(8) => OTMP_1_8_port, O(7) => 
                           OTMP_1_7_port, O(6) => OTMP_1_6_port, O(5) => 
                           OTMP_1_5_port, O(4) => OTMP_1_4_port, O(3) => 
                           OTMP_1_3_port, O(2) => OTMP_1_2_port, O(1) => 
                           OTMP_1_1_port, O(0) => n_1011, A_so(11) => 
                           SHIFT_2_11_port, A_so(10) => SHIFT_2_10_port, 
                           A_so(9) => SHIFT_2_9_port, A_so(8) => SHIFT_2_8_port
                           , A_so(7) => SHIFT_2_7_port, A_so(6) => 
                           SHIFT_2_6_port, A_so(5) => SHIFT_2_5_port, A_so(4) 
                           => SHIFT_2_4_port, A_so(3) => SHIFT_2_3_port, 
                           A_so(2) => SHIFT_2_2_port, A_so(1) => n_1012, 
                           A_so(0) => n_1013, A_nso(11) => SHIFT_n_2_11_port, 
                           A_nso(10) => SHIFT_n_2_10_port, A_nso(9) => 
                           SHIFT_n_2_9_port, A_nso(8) => SHIFT_n_2_8_port, 
                           A_nso(7) => SHIFT_n_2_7_port, A_nso(6) => 
                           SHIFT_n_2_6_port, A_nso(5) => SHIFT_n_2_5_port, 
                           A_nso(4) => SHIFT_n_2_4_port, A_nso(3) => 
                           SHIFT_n_2_3_port, A_nso(2) => SHIFT_n_2_2_port, 
                           A_nso(1) => n_1014, A_nso(0) => n_1015);
   ENC_2 : BOOTHENC_NBIT14_i4 port map( A_s(13) => SHIFT_2_11_port, A_s(12) => 
                           SHIFT_2_11_port, A_s(11) => SHIFT_2_11_port, A_s(10)
                           => SHIFT_2_10_port, A_s(9) => SHIFT_2_9_port, A_s(8)
                           => SHIFT_2_8_port, A_s(7) => SHIFT_2_7_port, A_s(6) 
                           => SHIFT_2_6_port, A_s(5) => SHIFT_2_5_port, A_s(4) 
                           => SHIFT_2_4_port, A_s(3) => SHIFT_2_3_port, A_s(2) 
                           => SHIFT_2_2_port, A_s(1) => SHIFT_2_1_port, A_s(0) 
                           => SHIFT_2_0_port, A_ns(13) => SHIFT_n_2_11_port, 
                           A_ns(12) => SHIFT_n_2_11_port, A_ns(11) => 
                           SHIFT_n_2_11_port, A_ns(10) => SHIFT_n_2_10_port, 
                           A_ns(9) => SHIFT_n_2_9_port, A_ns(8) => 
                           SHIFT_n_2_8_port, A_ns(7) => SHIFT_n_2_7_port, 
                           A_ns(6) => SHIFT_n_2_6_port, A_ns(5) => 
                           SHIFT_n_2_5_port, A_ns(4) => SHIFT_n_2_4_port, 
                           A_ns(3) => SHIFT_n_2_3_port, A_ns(2) => 
                           SHIFT_n_2_2_port, A_ns(1) => SHIFT_n_2_1_port, 
                           A_ns(0) => SHIFT_n_2_0_port, B(13) => B(7), B(12) =>
                           B(7), B(11) => B(7), B(10) => B(7), B(9) => B(7), 
                           B(8) => B(7), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), O(13) => OTMP_2_13_port, 
                           O(12) => OTMP_2_12_port, O(11) => OTMP_2_11_port, 
                           O(10) => OTMP_2_10_port, O(9) => OTMP_2_9_port, O(8)
                           => OTMP_2_8_port, O(7) => OTMP_2_7_port, O(6) => 
                           OTMP_2_6_port, O(5) => OTMP_2_5_port, O(4) => 
                           OTMP_2_4_port, O(3) => OTMP_2_3_port, O(2) => 
                           OTMP_2_2_port, O(1) => OTMP_2_1_port, O(0) => n_1016
                           , A_so(13) => SHIFT_3_13_port, A_so(12) => 
                           SHIFT_3_12_port, A_so(11) => SHIFT_3_11_port, 
                           A_so(10) => SHIFT_3_10_port, A_so(9) => 
                           SHIFT_3_9_port, A_so(8) => SHIFT_3_8_port, A_so(7) 
                           => SHIFT_3_7_port, A_so(6) => SHIFT_3_6_port, 
                           A_so(5) => SHIFT_3_5_port, A_so(4) => SHIFT_3_4_port
                           , A_so(3) => SHIFT_3_3_port, A_so(2) => 
                           SHIFT_3_2_port, A_so(1) => n_1017, A_so(0) => n_1018
                           , A_nso(13) => SHIFT_n_3_13_port, A_nso(12) => 
                           SHIFT_n_3_12_port, A_nso(11) => SHIFT_n_3_11_port, 
                           A_nso(10) => SHIFT_n_3_10_port, A_nso(9) => 
                           SHIFT_n_3_9_port, A_nso(8) => SHIFT_n_3_8_port, 
                           A_nso(7) => SHIFT_n_3_7_port, A_nso(6) => 
                           SHIFT_n_3_6_port, A_nso(5) => SHIFT_n_3_5_port, 
                           A_nso(4) => SHIFT_n_3_4_port, A_nso(3) => 
                           SHIFT_n_3_3_port, A_nso(2) => SHIFT_n_3_2_port, 
                           A_nso(1) => n_1019, A_nso(0) => n_1020);
   ENC_3 : BOOTHENC_NBIT16_i6 port map( A_s(15) => SHIFT_3_13_port, A_s(14) => 
                           SHIFT_3_13_port, A_s(13) => SHIFT_3_13_port, A_s(12)
                           => SHIFT_3_12_port, A_s(11) => SHIFT_3_11_port, 
                           A_s(10) => SHIFT_3_10_port, A_s(9) => SHIFT_3_9_port
                           , A_s(8) => SHIFT_3_8_port, A_s(7) => SHIFT_3_7_port
                           , A_s(6) => SHIFT_3_6_port, A_s(5) => SHIFT_3_5_port
                           , A_s(4) => SHIFT_3_4_port, A_s(3) => SHIFT_3_3_port
                           , A_s(2) => SHIFT_3_2_port, A_s(1) => SHIFT_3_1_port
                           , A_s(0) => SHIFT_3_0_port, A_ns(15) => 
                           SHIFT_n_3_13_port, A_ns(14) => SHIFT_n_3_13_port, 
                           A_ns(13) => SHIFT_n_3_13_port, A_ns(12) => 
                           SHIFT_n_3_12_port, A_ns(11) => SHIFT_n_3_11_port, 
                           A_ns(10) => SHIFT_n_3_10_port, A_ns(9) => 
                           SHIFT_n_3_9_port, A_ns(8) => SHIFT_n_3_8_port, 
                           A_ns(7) => SHIFT_n_3_7_port, A_ns(6) => 
                           SHIFT_n_3_6_port, A_ns(5) => SHIFT_n_3_5_port, 
                           A_ns(4) => SHIFT_n_3_4_port, A_ns(3) => 
                           SHIFT_n_3_3_port, A_ns(2) => SHIFT_n_3_2_port, 
                           A_ns(1) => SHIFT_n_3_1_port, A_ns(0) => 
                           SHIFT_n_3_0_port, B(15) => B(7), B(14) => B(7), 
                           B(13) => B(7), B(12) => B(7), B(11) => B(7), B(10) 
                           => B(7), B(9) => B(7), B(8) => B(7), B(7) => B(7), 
                           B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3) => 
                           B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           O(15) => OTMP_3_15_port, O(14) => OTMP_3_14_port, 
                           O(13) => OTMP_3_13_port, O(12) => OTMP_3_12_port, 
                           O(11) => OTMP_3_11_port, O(10) => OTMP_3_10_port, 
                           O(9) => OTMP_3_9_port, O(8) => OTMP_3_8_port, O(7) 
                           => OTMP_3_7_port, O(6) => OTMP_3_6_port, O(5) => 
                           OTMP_3_5_port, O(4) => OTMP_3_4_port, O(3) => 
                           OTMP_3_3_port, O(2) => OTMP_3_2_port, O(1) => 
                           OTMP_3_1_port, O(0) => n_1021, A_so(15) => n_1022, 
                           A_so(14) => n_1023, A_so(13) => n_1024, A_so(12) => 
                           n_1025, A_so(11) => n_1026, A_so(10) => n_1027, 
                           A_so(9) => n_1028, A_so(8) => n_1029, A_so(7) => 
                           n_1030, A_so(6) => n_1031, A_so(5) => n_1032, 
                           A_so(4) => n_1033, A_so(3) => n_1034, A_so(2) => 
                           n_1035, A_so(1) => n_1036, A_so(0) => n_1037, 
                           A_nso(15) => n_1038, A_nso(14) => n_1039, A_nso(13) 
                           => n_1040, A_nso(12) => n_1041, A_nso(11) => n_1042,
                           A_nso(10) => n_1043, A_nso(9) => n_1044, A_nso(8) =>
                           n_1045, A_nso(7) => n_1046, A_nso(6) => n_1047, 
                           A_nso(5) => n_1048, A_nso(4) => n_1049, A_nso(3) => 
                           n_1050, A_nso(2) => n_1051, A_nso(1) => n_1052, 
                           A_nso(0) => n_1053);
   ADDER1 : RCA_NBIT12 port map( A(11) => OTMP_0_10_port, A(10) => 
                           OTMP_0_10_port, A(9) => OTMP_0_10_port, A(8) => 
                           OTMP_0_8_port, A(7) => OTMP_0_7_port, A(6) => 
                           OTMP_0_6_port, A(5) => OTMP_0_5_port, A(4) => 
                           OTMP_0_4_port, A(3) => OTMP_0_3_port, A(2) => 
                           OTMP_0_2_port, A(1) => OTMP_0_1_port, A(0) => 
                           OTMP_0_0_port, B(11) => OTMP_1_11_port, B(10) => 
                           OTMP_1_10_port, B(9) => OTMP_1_9_port, B(8) => 
                           OTMP_1_8_port, B(7) => OTMP_1_7_port, B(6) => 
                           OTMP_1_6_port, B(5) => OTMP_1_5_port, B(4) => 
                           OTMP_1_4_port, B(3) => OTMP_1_3_port, B(2) => 
                           OTMP_1_2_port, B(1) => OTMP_1_1_port, B(0) => 
                           OTMP_1_0_port, Ci => X_Logic0_port, S(11) => 
                           PTMP_0_12_port, S(10) => PTMP_0_10_port, S(9) => 
                           PTMP_0_9_port, S(8) => PTMP_0_8_port, S(7) => 
                           PTMP_0_7_port, S(6) => PTMP_0_6_port, S(5) => 
                           PTMP_0_5_port, S(4) => PTMP_0_4_port, S(3) => 
                           PTMP_0_3_port, S(2) => PTMP_0_2_port, S(1) => 
                           PTMP_0_1_port, S(0) => PTMP_0_0_port, Co => n_1054);
   ADDER_2 : RCA_NBIT14 port map( A(13) => PTMP_0_12_port, A(12) => 
                           PTMP_0_12_port, A(11) => PTMP_0_12_port, A(10) => 
                           PTMP_0_10_port, A(9) => PTMP_0_9_port, A(8) => 
                           PTMP_0_8_port, A(7) => PTMP_0_7_port, A(6) => 
                           PTMP_0_6_port, A(5) => PTMP_0_5_port, A(4) => 
                           PTMP_0_4_port, A(3) => PTMP_0_3_port, A(2) => 
                           PTMP_0_2_port, A(1) => PTMP_0_1_port, A(0) => 
                           PTMP_0_0_port, B(13) => OTMP_2_13_port, B(12) => 
                           OTMP_2_12_port, B(11) => OTMP_2_11_port, B(10) => 
                           OTMP_2_10_port, B(9) => OTMP_2_9_port, B(8) => 
                           OTMP_2_8_port, B(7) => OTMP_2_7_port, B(6) => 
                           OTMP_2_6_port, B(5) => OTMP_2_5_port, B(4) => 
                           OTMP_2_4_port, B(3) => OTMP_2_3_port, B(2) => 
                           OTMP_2_2_port, B(1) => OTMP_2_1_port, B(0) => 
                           OTMP_2_0_port, Ci => X_Logic0_port, S(13) => 
                           PTMP_1_13_port, S(12) => PTMP_1_12_port, S(11) => 
                           PTMP_1_11_port, S(10) => PTMP_1_10_port, S(9) => 
                           PTMP_1_9_port, S(8) => PTMP_1_8_port, S(7) => 
                           PTMP_1_7_port, S(6) => PTMP_1_6_port, S(5) => 
                           PTMP_1_5_port, S(4) => PTMP_1_4_port, S(3) => 
                           PTMP_1_3_port, S(2) => PTMP_1_2_port, S(1) => 
                           PTMP_1_1_port, S(0) => PTMP_1_0_port, Co => n_1055);
   ADDER_3 : RCA_NBIT16 port map( A(15) => PTMP_1_13_port, A(14) => 
                           PTMP_1_13_port, A(13) => PTMP_1_13_port, A(12) => 
                           PTMP_1_12_port, A(11) => PTMP_1_11_port, A(10) => 
                           PTMP_1_10_port, A(9) => PTMP_1_9_port, A(8) => 
                           PTMP_1_8_port, A(7) => PTMP_1_7_port, A(6) => 
                           PTMP_1_6_port, A(5) => PTMP_1_5_port, A(4) => 
                           PTMP_1_4_port, A(3) => PTMP_1_3_port, A(2) => 
                           PTMP_1_2_port, A(1) => PTMP_1_1_port, A(0) => 
                           PTMP_1_0_port, B(15) => OTMP_3_15_port, B(14) => 
                           OTMP_3_14_port, B(13) => OTMP_3_13_port, B(12) => 
                           OTMP_3_12_port, B(11) => OTMP_3_11_port, B(10) => 
                           OTMP_3_10_port, B(9) => OTMP_3_9_port, B(8) => 
                           OTMP_3_8_port, B(7) => OTMP_3_7_port, B(6) => 
                           OTMP_3_6_port, B(5) => OTMP_3_5_port, B(4) => 
                           OTMP_3_4_port, B(3) => OTMP_3_3_port, B(2) => 
                           OTMP_3_2_port, B(1) => OTMP_3_1_port, B(0) => 
                           OTMP_3_0_port, Ci => X_Logic0_port, S(15) => S(15), 
                           S(14) => S(14), S(13) => S(13), S(12) => S(12), 
                           S(11) => S(11), S(10) => S(10), S(9) => S(9), S(8) 
                           => S(8), S(7) => S(7), S(6) => S(6), S(5) => S(5), 
                           S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1) => 
                           S(1), S(0) => S(0), Co => n_1056);
   U5 : XNOR2_X1 port map( A => n26, B => n18, ZN => n4);
   U6 : NAND2_X1 port map( A1 => n26, A2 => n17, ZN => n18);
   U7 : XOR2_X1 port map( A => n21, B => n12, Z => n5);
   U8 : XOR2_X1 port map( A => n22, B => n13, Z => n6);
   U9 : XOR2_X1 port map( A => n23, B => n14, Z => n7);
   U10 : XOR2_X1 port map( A => n24, B => n15, Z => n8);
   U11 : XOR2_X1 port map( A => n25, B => n16, Z => n9);
   U12 : XOR2_X1 port map( A => n20, B => n19, Z => n10);
   U13 : XOR2_X1 port map( A => n26, B => n17, Z => n11);
   U14 : AND2_X1 port map( A1 => n20, A2 => n19, ZN => n12);
   U15 : AND2_X1 port map( A1 => n21, A2 => n12, ZN => n13);
   U16 : AND2_X1 port map( A1 => n22, A2 => n13, ZN => n14);
   U17 : AND2_X1 port map( A1 => n23, A2 => n14, ZN => n15);
   U18 : AND2_X1 port map( A1 => n24, A2 => n15, ZN => n16);
   U19 : AND2_X1 port map( A1 => n25, A2 => n16, ZN => n17);
   U20 : INV_X1 port map( A => A(7), ZN => n26);
   U21 : INV_X1 port map( A => A(6), ZN => n25);
   U22 : INV_X1 port map( A => A(5), ZN => n24);
   U23 : INV_X1 port map( A => A(4), ZN => n23);
   U24 : INV_X1 port map( A => A(3), ZN => n22);
   U25 : INV_X1 port map( A => A(2), ZN => n21);
   U26 : INV_X1 port map( A => A(1), ZN => n20);
   U27 : INV_X1 port map( A => A(0), ZN => n19);
   OTMP_3_0_port <= '0';
   SHIFT_n_3_0_port <= '0';
   SHIFT_n_3_1_port <= '0';
   SHIFT_3_0_port <= '0';
   SHIFT_3_1_port <= '0';
   OTMP_2_0_port <= '0';
   SHIFT_n_2_0_port <= '0';
   SHIFT_n_2_1_port <= '0';
   SHIFT_2_0_port <= '0';
   SHIFT_2_1_port <= '0';
   OTMP_1_0_port <= '0';
   SHIFT_n_1_0_port <= '0';
   SHIFT_1_0_port <= '0';

end SYN_BEHAVIOURAL;
