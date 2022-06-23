
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL_NBIT8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL_NBIT8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT12_DW01_add_0 is

   port( A, B : in std_logic_vector (11 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (11 downto 0);  CO : out std_logic);

end RCA_NBIT12_DW01_add_0;

architecture SYN_rpl of RCA_NBIT12_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           n_1002, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT14_DW01_add_0 is

   port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (13 downto 0);  CO : out std_logic);

end RCA_NBIT14_DW01_add_0;

architecture SYN_rpl of RCA_NBIT14_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1005 : std_logic;

begin
   
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           n_1005, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_DW01_add_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (15 downto 0);  CO : out std_logic);

end RCA_NBIT16_DW01_add_0;

architecture SYN_rpl of RCA_NBIT16_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1,
      n_1008 : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           n_1008, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

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
   
   signal n1, n_1009 : std_logic;

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
                           SUM(0) => S(0), CO => n_1009);

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
   
   signal n1, n_1010 : std_logic;

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
                           SUM(0) => S(0), CO => n_1010);

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
   
   signal n1, n_1011 : std_logic;

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
                           => n_1011);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHENC_NBIT16_i6 is

   port( A_s, A_ns, B : in std_logic_vector (15 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (15 downto 0));

end BOOTHENC_NBIT16_i6;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT16_i6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_15_port, O_14_port, O_13_port, O_12_port, O_11_port,
      O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, 
      O_3_port, O_2_port, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n1, n2, n3, n4, n5, 
      n6, n7, n8, n9, O_1_port, n11, n12, n13, n14, n15, n16, n17, n18, n19, 
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30 : std_logic;

begin
   O <= ( O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, 
      O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6)
      , A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, 
      X_Logic0_port );
   A_nso <= ( A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7)
      , A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), 
      X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : INV_X1 port map( A => n43, ZN => O_1_port);
   U3 : OAI221_X1 port map( B1 => n31, B2 => n29, C1 => n32, C2 => n28, A => 
                           n37, ZN => O_7_port);
   U4 : INV_X1 port map( A => A_ns(5), ZN => n28);
   U5 : INV_X1 port map( A => A_s(5), ZN => n29);
   U6 : OAI221_X1 port map( B1 => n31, B2 => n27, C1 => n32, C2 => n8, A => n36
                           , ZN => O_8_port);
   U7 : INV_X1 port map( A => A_s(6), ZN => n27);
   U8 : INV_X1 port map( A => A_ns(6), ZN => n8);
   U9 : OAI221_X1 port map( B1 => n31, B2 => n26, C1 => n32, C2 => n7, A => n33
                           , ZN => O_9_port);
   U10 : INV_X1 port map( A => A_s(7), ZN => n26);
   U11 : INV_X1 port map( A => A_ns(7), ZN => n7);
   U12 : OAI221_X1 port map( B1 => n25, B2 => n31, C1 => n6, C2 => n32, A => 
                           n49, ZN => O_10_port);
   U13 : INV_X1 port map( A => A_s(8), ZN => n25);
   U14 : INV_X1 port map( A => A_ns(8), ZN => n6);
   U15 : OAI221_X1 port map( B1 => n31, B2 => n24, C1 => n32, C2 => n5, A => 
                           n48, ZN => O_11_port);
   U16 : INV_X1 port map( A => A_s(9), ZN => n24);
   U17 : INV_X1 port map( A => A_ns(9), ZN => n5);
   U18 : OAI221_X1 port map( B1 => n31, B2 => n23, C1 => n32, C2 => n4, A => 
                           n47, ZN => O_12_port);
   U19 : INV_X1 port map( A => A_s(10), ZN => n23);
   U20 : INV_X1 port map( A => A_ns(10), ZN => n4);
   U21 : OAI221_X1 port map( B1 => n31, B2 => n22, C1 => n32, C2 => n3, A => 
                           n46, ZN => O_13_port);
   U22 : INV_X1 port map( A => A_s(11), ZN => n22);
   U23 : INV_X1 port map( A => A_ns(11), ZN => n3);
   U24 : OAI221_X1 port map( B1 => n31, B2 => n20, C1 => n32, C2 => n2, A => 
                           n45, ZN => O_14_port);
   U25 : INV_X1 port map( A => A_s(12), ZN => n20);
   U26 : INV_X1 port map( A => A_ns(12), ZN => n2);
   U27 : OAI221_X1 port map( B1 => n31, B2 => n19, C1 => n32, C2 => n18, A => 
                           n38, ZN => O_6_port);
   U28 : INV_X1 port map( A => A_s(4), ZN => n19);
   U29 : INV_X1 port map( A => A_ns(4), ZN => n18);
   U30 : OAI221_X1 port map( B1 => n31, B2 => n21, C1 => n32, C2 => n1, A => 
                           n44, ZN => O_15_port);
   U31 : INV_X1 port map( A => A_s(13), ZN => n21);
   U32 : INV_X1 port map( A => A_ns(13), ZN => n1);
   U33 : NOR2_X2 port map( A1 => n50, A2 => B(7), ZN => n34);
   U34 : NOR2_X2 port map( A1 => n30, A2 => n50, ZN => n35);
   U35 : INV_X1 port map( A => B(7), ZN => n30);
   U36 : NAND3_X1 port map( A1 => n50, A2 => n51, A3 => B(7), ZN => n32);
   U37 : XNOR2_X1 port map( A => B(5), B => B(6), ZN => n50);
   U38 : OR2_X1 port map( A1 => n51, A2 => B(7), ZN => n31);
   U39 : AOI22_X1 port map( A1 => A_s(5), A2 => n34, B1 => A_ns(5), B2 => n35, 
                           ZN => n38);
   U40 : AOI22_X1 port map( A1 => A_s(6), A2 => n34, B1 => A_ns(6), B2 => n35, 
                           ZN => n37);
   U41 : AOI22_X1 port map( A1 => A_s(7), A2 => n34, B1 => A_ns(7), B2 => n35, 
                           ZN => n36);
   U42 : AOI22_X1 port map( A1 => A_s(8), A2 => n34, B1 => A_ns(8), B2 => n35, 
                           ZN => n33);
   U43 : AOI22_X1 port map( A1 => A_s(9), A2 => n34, B1 => A_ns(9), B2 => n35, 
                           ZN => n49);
   U44 : AOI22_X1 port map( A1 => A_s(10), A2 => n34, B1 => A_ns(10), B2 => n35
                           , ZN => n48);
   U45 : AOI22_X1 port map( A1 => A_s(11), A2 => n34, B1 => A_ns(11), B2 => n35
                           , ZN => n47);
   U46 : AOI22_X1 port map( A1 => A_s(12), A2 => n34, B1 => A_ns(12), B2 => n35
                           , ZN => n46);
   U47 : AOI22_X1 port map( A1 => A_s(13), A2 => n34, B1 => A_ns(13), B2 => n35
                           , ZN => n45);
   U48 : AOI22_X1 port map( A1 => A_s(14), A2 => n34, B1 => A_ns(14), B2 => n35
                           , ZN => n44);
   U49 : NAND2_X1 port map( A1 => B(5), A2 => B(6), ZN => n51);
   U50 : OAI221_X1 port map( B1 => n31, B2 => n16, C1 => n32, C2 => n14, A => 
                           n40, ZN => O_4_port);
   U51 : INV_X1 port map( A => A_s(2), ZN => n16);
   U52 : INV_X1 port map( A => A_ns(2), ZN => n14);
   U53 : OAI221_X1 port map( B1 => n31, B2 => n17, C1 => n32, C2 => n15, A => 
                           n39, ZN => O_5_port);
   U54 : INV_X1 port map( A => A_s(3), ZN => n17);
   U55 : INV_X1 port map( A => A_ns(3), ZN => n15);
   U56 : OAI221_X1 port map( B1 => n31, B2 => n12, C1 => n32, C2 => n9, A => 
                           n42, ZN => O_2_port);
   U57 : INV_X1 port map( A => A_s(0), ZN => n12);
   U58 : INV_X1 port map( A => A_ns(0), ZN => n9);
   U59 : OAI221_X1 port map( B1 => n31, B2 => n13, C1 => n32, C2 => n11, A => 
                           n41, ZN => O_3_port);
   U60 : INV_X1 port map( A => A_s(1), ZN => n13);
   U61 : INV_X1 port map( A => A_ns(1), ZN => n11);
   U62 : AOI22_X1 port map( A1 => A_s(1), A2 => n34, B1 => A_ns(1), B2 => n35, 
                           ZN => n42);
   U63 : AOI22_X1 port map( A1 => A_s(2), A2 => n34, B1 => A_ns(2), B2 => n35, 
                           ZN => n41);
   U64 : AOI22_X1 port map( A1 => A_s(3), A2 => n34, B1 => A_ns(3), B2 => n35, 
                           ZN => n40);
   U65 : AOI22_X1 port map( A1 => A_s(4), A2 => n34, B1 => A_ns(4), B2 => n35, 
                           ZN => n39);
   U66 : AOI22_X1 port map( A1 => n35, A2 => A_ns(0), B1 => n34, B2 => A_s(0), 
                           ZN => n43);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHENC_NBIT14_i4 is

   port( A_s, A_ns, B : in std_logic_vector (13 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (13 downto 0));

end BOOTHENC_NBIT14_i4;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT14_i4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, 
      O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, n27
      , n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, 
      n42, n43, n44, n45, n1, n2, n3, n4, n5, n6, n7, n8, n9, O_1_port, n11, 
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26
      : std_logic;

begin
   O <= ( O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, 
      O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, 
      X_Logic0_port );
   A_so <= ( A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), 
      A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), 
      A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port
      );
   
   X_Logic0_port <= '0';
   U2 : INV_X1 port map( A => n39, ZN => O_1_port);
   U3 : OAI221_X1 port map( B1 => n27, B2 => n17, C1 => n28, C2 => n1, A => n40
                           , ZN => O_13_port);
   U4 : INV_X1 port map( A => A_s(11), ZN => n17);
   U5 : INV_X1 port map( A => A_ns(11), ZN => n1);
   U6 : OAI221_X1 port map( B1 => n27, B2 => n25, C1 => n28, C2 => n24, A => 
                           n35, ZN => O_5_port);
   U7 : INV_X1 port map( A => A_ns(3), ZN => n24);
   U8 : INV_X1 port map( A => A_s(3), ZN => n25);
   U9 : OAI221_X1 port map( B1 => n27, B2 => n23, C1 => n28, C2 => n8, A => n34
                           , ZN => O_6_port);
   U10 : INV_X1 port map( A => A_s(4), ZN => n23);
   U11 : INV_X1 port map( A => A_ns(4), ZN => n8);
   U12 : OAI221_X1 port map( B1 => n27, B2 => n22, C1 => n28, C2 => n7, A => 
                           n33, ZN => O_7_port);
   U13 : INV_X1 port map( A => A_s(5), ZN => n22);
   U14 : INV_X1 port map( A => A_ns(5), ZN => n7);
   U15 : OAI221_X1 port map( B1 => n27, B2 => n21, C1 => n28, C2 => n6, A => 
                           n32, ZN => O_8_port);
   U16 : INV_X1 port map( A => A_s(6), ZN => n21);
   U17 : INV_X1 port map( A => A_ns(6), ZN => n6);
   U18 : OAI221_X1 port map( B1 => n27, B2 => n20, C1 => n28, C2 => n5, A => 
                           n29, ZN => O_9_port);
   U19 : INV_X1 port map( A => A_s(7), ZN => n20);
   U20 : INV_X1 port map( A => A_ns(7), ZN => n5);
   U21 : OAI221_X1 port map( B1 => n19, B2 => n27, C1 => n4, C2 => n28, A => 
                           n43, ZN => O_10_port);
   U22 : INV_X1 port map( A => A_s(8), ZN => n19);
   U23 : INV_X1 port map( A => A_ns(8), ZN => n4);
   U24 : OAI221_X1 port map( B1 => n27, B2 => n18, C1 => n28, C2 => n3, A => 
                           n42, ZN => O_11_port);
   U25 : INV_X1 port map( A => A_s(9), ZN => n18);
   U26 : INV_X1 port map( A => A_ns(9), ZN => n3);
   U27 : OAI221_X1 port map( B1 => n27, B2 => n16, C1 => n28, C2 => n2, A => 
                           n41, ZN => O_12_port);
   U28 : INV_X1 port map( A => A_s(10), ZN => n16);
   U29 : INV_X1 port map( A => A_ns(10), ZN => n2);
   U30 : OAI221_X1 port map( B1 => n27, B2 => n15, C1 => n28, C2 => n14, A => 
                           n36, ZN => O_4_port);
   U31 : INV_X1 port map( A => A_s(2), ZN => n15);
   U32 : INV_X1 port map( A => A_ns(2), ZN => n14);
   U33 : NOR2_X2 port map( A1 => n44, A2 => B(5), ZN => n30);
   U34 : NOR2_X2 port map( A1 => n26, A2 => n44, ZN => n31);
   U35 : INV_X1 port map( A => B(5), ZN => n26);
   U36 : NAND3_X1 port map( A1 => n44, A2 => n45, A3 => B(5), ZN => n28);
   U37 : XNOR2_X1 port map( A => B(3), B => B(4), ZN => n44);
   U38 : OR2_X1 port map( A1 => n45, A2 => B(5), ZN => n27);
   U39 : AOI22_X1 port map( A1 => A_s(3), A2 => n30, B1 => A_ns(3), B2 => n31, 
                           ZN => n36);
   U40 : AOI22_X1 port map( A1 => A_s(4), A2 => n30, B1 => A_ns(4), B2 => n31, 
                           ZN => n35);
   U41 : AOI22_X1 port map( A1 => A_s(5), A2 => n30, B1 => A_ns(5), B2 => n31, 
                           ZN => n34);
   U42 : AOI22_X1 port map( A1 => A_s(6), A2 => n30, B1 => A_ns(6), B2 => n31, 
                           ZN => n33);
   U43 : AOI22_X1 port map( A1 => A_s(7), A2 => n30, B1 => A_ns(7), B2 => n31, 
                           ZN => n32);
   U44 : AOI22_X1 port map( A1 => A_s(8), A2 => n30, B1 => A_ns(8), B2 => n31, 
                           ZN => n29);
   U45 : AOI22_X1 port map( A1 => A_s(9), A2 => n30, B1 => A_ns(9), B2 => n31, 
                           ZN => n43);
   U46 : AOI22_X1 port map( A1 => A_s(10), A2 => n30, B1 => A_ns(10), B2 => n31
                           , ZN => n42);
   U47 : AOI22_X1 port map( A1 => A_s(11), A2 => n30, B1 => A_ns(11), B2 => n31
                           , ZN => n41);
   U48 : AOI22_X1 port map( A1 => A_s(12), A2 => n30, B1 => A_ns(12), B2 => n31
                           , ZN => n40);
   U49 : NAND2_X1 port map( A1 => B(3), A2 => B(4), ZN => n45);
   U50 : OAI221_X1 port map( B1 => n27, B2 => n12, C1 => n28, C2 => n9, A => 
                           n38, ZN => O_2_port);
   U51 : INV_X1 port map( A => A_s(0), ZN => n12);
   U52 : INV_X1 port map( A => A_ns(0), ZN => n9);
   U53 : OAI221_X1 port map( B1 => n27, B2 => n13, C1 => n28, C2 => n11, A => 
                           n37, ZN => O_3_port);
   U54 : INV_X1 port map( A => A_s(1), ZN => n13);
   U55 : INV_X1 port map( A => A_ns(1), ZN => n11);
   U56 : AOI22_X1 port map( A1 => A_s(1), A2 => n30, B1 => A_ns(1), B2 => n31, 
                           ZN => n38);
   U57 : AOI22_X1 port map( A1 => A_s(2), A2 => n30, B1 => A_ns(2), B2 => n31, 
                           ZN => n37);
   U58 : AOI22_X1 port map( A1 => n31, A2 => A_ns(0), B1 => n30, B2 => A_s(0), 
                           ZN => n39);

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
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, 
      O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, n23, n24, n25, n26, n27
      , n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n1, n2, n3,
      n4, n5, n6, n7, n8, n9, O_1_port, n11, n12, n13, n14, n15, n16, n17, n18,
      n19, n20, n21, n22 : std_logic;

begin
   O <= ( O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, 
      O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), 
      A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), 
      A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : INV_X1 port map( A => A_ns(2), ZN => n8);
   U3 : INV_X1 port map( A => A_ns(3), ZN => n7);
   U4 : INV_X1 port map( A => A_ns(4), ZN => n6);
   U5 : INV_X1 port map( A => A_ns(5), ZN => n5);
   U6 : INV_X1 port map( A => A_ns(6), ZN => n4);
   U7 : INV_X1 port map( A => n35, ZN => O_1_port);
   U8 : NOR2_X1 port map( A1 => n38, A2 => B(3), ZN => n26);
   U9 : NOR2_X1 port map( A1 => n22, A2 => n38, ZN => n27);
   U10 : INV_X1 port map( A => B(3), ZN => n22);
   U11 : XNOR2_X1 port map( A => B(1), B => B(2), ZN => n38);
   U12 : OAI221_X1 port map( B1 => n23, B2 => n11, C1 => n24, C2 => n9, A => 
                           n34, ZN => O_2_port);
   U13 : INV_X1 port map( A => A_s(0), ZN => n11);
   U14 : OAI221_X1 port map( B1 => n23, B2 => n13, C1 => n24, C2 => n1, A => 
                           n36, ZN => O_11_port);
   U15 : INV_X1 port map( A => A_s(9), ZN => n13);
   U16 : INV_X1 port map( A => A_ns(9), ZN => n1);
   U17 : AOI22_X1 port map( A1 => A_s(1), A2 => n26, B1 => A_ns(1), B2 => n27, 
                           ZN => n34);
   U18 : OAI221_X1 port map( B1 => n23, B2 => n21, C1 => n24, C2 => n20, A => 
                           n33, ZN => O_3_port);
   U19 : INV_X1 port map( A => A_ns(1), ZN => n20);
   U20 : OAI221_X1 port map( B1 => n23, B2 => n19, C1 => n24, C2 => n8, A => 
                           n32, ZN => O_4_port);
   U21 : INV_X1 port map( A => A_s(2), ZN => n19);
   U22 : OAI221_X1 port map( B1 => n23, B2 => n18, C1 => n24, C2 => n7, A => 
                           n31, ZN => O_5_port);
   U23 : INV_X1 port map( A => A_s(3), ZN => n18);
   U24 : OAI221_X1 port map( B1 => n23, B2 => n17, C1 => n24, C2 => n6, A => 
                           n30, ZN => O_6_port);
   U25 : INV_X1 port map( A => A_s(4), ZN => n17);
   U26 : OAI221_X1 port map( B1 => n23, B2 => n16, C1 => n24, C2 => n5, A => 
                           n29, ZN => O_7_port);
   U27 : INV_X1 port map( A => A_s(5), ZN => n16);
   U28 : OAI221_X1 port map( B1 => n23, B2 => n15, C1 => n24, C2 => n4, A => 
                           n28, ZN => O_8_port);
   U29 : INV_X1 port map( A => A_s(6), ZN => n15);
   U30 : OAI221_X1 port map( B1 => n23, B2 => n14, C1 => n24, C2 => n3, A => 
                           n25, ZN => O_9_port);
   U31 : INV_X1 port map( A => A_s(7), ZN => n14);
   U32 : INV_X1 port map( A => A_ns(7), ZN => n3);
   U33 : OAI221_X1 port map( B1 => n12, B2 => n23, C1 => n2, C2 => n24, A => 
                           n37, ZN => O_10_port);
   U34 : INV_X1 port map( A => A_s(8), ZN => n12);
   U35 : INV_X1 port map( A => A_ns(8), ZN => n2);
   U36 : NAND3_X1 port map( A1 => n38, A2 => n39, A3 => B(3), ZN => n24);
   U37 : OR2_X1 port map( A1 => n39, A2 => B(3), ZN => n23);
   U38 : AOI22_X1 port map( A1 => A_s(2), A2 => n26, B1 => A_ns(2), B2 => n27, 
                           ZN => n33);
   U39 : AOI22_X1 port map( A1 => A_s(3), A2 => n26, B1 => A_ns(3), B2 => n27, 
                           ZN => n32);
   U40 : AOI22_X1 port map( A1 => A_s(4), A2 => n26, B1 => A_ns(4), B2 => n27, 
                           ZN => n31);
   U41 : AOI22_X1 port map( A1 => A_s(5), A2 => n26, B1 => A_ns(5), B2 => n27, 
                           ZN => n30);
   U42 : AOI22_X1 port map( A1 => A_s(6), A2 => n26, B1 => A_ns(6), B2 => n27, 
                           ZN => n29);
   U43 : AOI22_X1 port map( A1 => A_s(7), A2 => n26, B1 => A_ns(7), B2 => n27, 
                           ZN => n28);
   U44 : AOI22_X1 port map( A1 => A_s(8), A2 => n26, B1 => A_ns(8), B2 => n27, 
                           ZN => n25);
   U45 : AOI22_X1 port map( A1 => A_s(9), A2 => n26, B1 => A_ns(9), B2 => n27, 
                           ZN => n37);
   U46 : AOI22_X1 port map( A1 => A_s(10), A2 => n26, B1 => A_ns(10), B2 => n27
                           , ZN => n36);
   U47 : NAND2_X1 port map( A1 => B(1), A2 => B(2), ZN => n39);
   U48 : INV_X1 port map( A => A_s(1), ZN => n21);
   U49 : AOI22_X1 port map( A1 => n27, A2 => A_ns(0), B1 => n26, B2 => A_s(0), 
                           ZN => n35);
   U50 : INV_X1 port map( A => A_ns(0), ZN => n9);

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
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
      n25, n26, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13 : std_logic;

begin
   A_so <= ( A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), 
      A_s(0), X_Logic0_port );
   A_nso <= ( A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), 
      A_ns(1), A_ns(0), X_Logic0_port );
   
   X_Logic0_port <= '0';
   U3 : NOR2_X1 port map( A1 => n13, A2 => B(1), ZN => n15);
   U4 : INV_X1 port map( A => n16, ZN => n11);
   U5 : INV_X1 port map( A => A_ns(8), ZN => n1);
   U6 : INV_X1 port map( A => A_ns(1), ZN => n9);
   U7 : INV_X1 port map( A => A_ns(2), ZN => n8);
   U8 : INV_X1 port map( A => A_ns(3), ZN => n7);
   U9 : INV_X1 port map( A => A_ns(4), ZN => n6);
   U10 : INV_X1 port map( A => A_ns(5), ZN => n5);
   U11 : INV_X1 port map( A => A_ns(6), ZN => n4);
   U12 : INV_X1 port map( A => A_ns(7), ZN => n3);
   U13 : NOR2_X1 port map( A1 => n13, A2 => n15, ZN => n16);
   U14 : OAI221_X1 port map( B1 => n17, B2 => n10, C1 => n11, C2 => n9, A => 
                           n25, ZN => O(1));
   U15 : OAI221_X1 port map( B1 => n17, B2 => n9, C1 => n11, C2 => n8, A => n24
                           , ZN => O(2));
   U16 : INV_X1 port map( A => B(0), ZN => n13);
   U17 : INV_X1 port map( A => n14, ZN => O(9));
   U18 : AOI222_X1 port map( A1 => A_s(9), A2 => n15, B1 => A_ns(8), B2 => n12,
                           C1 => A_ns(9), C2 => n16, ZN => n14);
   U19 : INV_X1 port map( A => n17, ZN => n12);
   U20 : OAI221_X1 port map( B1 => n17, B2 => n8, C1 => n11, C2 => n7, A => n23
                           , ZN => O(3));
   U21 : OAI221_X1 port map( B1 => n17, B2 => n7, C1 => n11, C2 => n6, A => n22
                           , ZN => O(4));
   U22 : OAI221_X1 port map( B1 => n17, B2 => n6, C1 => n11, C2 => n5, A => n21
                           , ZN => O(5));
   U23 : OAI221_X1 port map( B1 => n17, B2 => n5, C1 => n11, C2 => n4, A => n20
                           , ZN => O(6));
   U24 : OAI221_X1 port map( B1 => n17, B2 => n4, C1 => n11, C2 => n3, A => n19
                           , ZN => O(7));
   U25 : OAI221_X1 port map( B1 => n17, B2 => n3, C1 => n1, C2 => n11, A => n18
                           , ZN => O(8));
   U26 : NAND2_X1 port map( A1 => B(1), A2 => n13, ZN => n17);
   U27 : NAND2_X1 port map( A1 => A_s(2), A2 => n15, ZN => n24);
   U28 : NAND2_X1 port map( A1 => A_s(3), A2 => n15, ZN => n23);
   U29 : NAND2_X1 port map( A1 => A_s(4), A2 => n15, ZN => n22);
   U30 : NAND2_X1 port map( A1 => A_s(5), A2 => n15, ZN => n21);
   U31 : NAND2_X1 port map( A1 => A_s(6), A2 => n15, ZN => n20);
   U32 : NAND2_X1 port map( A1 => A_s(7), A2 => n15, ZN => n19);
   U33 : NAND2_X1 port map( A1 => A_s(8), A2 => n15, ZN => n18);
   U34 : OAI21_X1 port map( B1 => n11, B2 => n10, A => n26, ZN => O(0));
   U35 : NAND2_X1 port map( A1 => A_s(0), A2 => n15, ZN => n26);
   U36 : NAND2_X1 port map( A1 => A_s(1), A2 => n15, ZN => n25);
   U37 : INV_X1 port map( A => A_ns(0), ZN => n10);

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
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
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
   
   signal X_Logic0_port, A_n_9, SHIFT_3_13_port, SHIFT_3_12_port, 
      SHIFT_3_11_port, SHIFT_3_10_port, SHIFT_3_9_port, SHIFT_3_8_port, 
      SHIFT_3_7_port, SHIFT_3_6_port, SHIFT_3_5_port, SHIFT_3_4_port, 
      SHIFT_3_3_port, SHIFT_3_2_port, SHIFT_3_1_port, SHIFT_3_0_port, 
      SHIFT_2_11_port, SHIFT_2_10_port, SHIFT_2_9_port, SHIFT_2_8_port, 
      SHIFT_2_7_port, SHIFT_2_6_port, SHIFT_2_5_port, SHIFT_2_4_port, 
      SHIFT_2_3_port, SHIFT_2_2_port, SHIFT_2_1_port, SHIFT_2_0_port, 
      SHIFT_1_9_port, SHIFT_1_8_port, SHIFT_1_7_port, SHIFT_1_6_port, 
      SHIFT_1_5_port, SHIFT_1_4_port, SHIFT_1_3_port, SHIFT_1_2_port, 
      SHIFT_1_1_port, SHIFT_1_0_port, SHIFT_n_3_13_port, SHIFT_n_3_12_port, 
      SHIFT_n_3_11_port, SHIFT_n_3_10_port, SHIFT_n_3_9_port, SHIFT_n_3_8_port,
      SHIFT_n_3_7_port, SHIFT_n_3_6_port, SHIFT_n_3_5_port, SHIFT_n_3_4_port, 
      SHIFT_n_3_3_port, SHIFT_n_3_2_port, SHIFT_n_3_1_port, SHIFT_n_3_0_port, 
      SHIFT_n_2_11_port, SHIFT_n_2_10_port, SHIFT_n_2_9_port, SHIFT_n_2_8_port,
      SHIFT_n_2_7_port, SHIFT_n_2_6_port, SHIFT_n_2_5_port, SHIFT_n_2_4_port, 
      SHIFT_n_2_3_port, SHIFT_n_2_2_port, SHIFT_n_2_1_port, SHIFT_n_2_0_port, 
      SHIFT_n_1_9_port, SHIFT_n_1_8_port, SHIFT_n_1_7_port, SHIFT_n_1_6_port, 
      SHIFT_n_1_5_port, SHIFT_n_1_4_port, SHIFT_n_1_3_port, SHIFT_n_1_2_port, 
      SHIFT_n_1_1_port, SHIFT_n_1_0_port, OTMP_3_15_port, OTMP_3_14_port, 
      OTMP_3_13_port, OTMP_3_12_port, OTMP_3_11_port, OTMP_3_10_port, 
      OTMP_3_9_port, OTMP_3_8_port, OTMP_3_7_port, OTMP_3_6_port, OTMP_3_5_port
      , OTMP_3_4_port, OTMP_3_3_port, OTMP_3_2_port, OTMP_3_1_port, 
      OTMP_3_0_port, OTMP_2_13_port, OTMP_2_12_port, OTMP_2_11_port, 
      OTMP_2_10_port, OTMP_2_9_port, OTMP_2_8_port, OTMP_2_7_port, 
      OTMP_2_6_port, OTMP_2_5_port, OTMP_2_4_port, OTMP_2_3_port, OTMP_2_2_port
      , OTMP_2_1_port, OTMP_2_0_port, OTMP_1_11_port, OTMP_1_10_port, 
      OTMP_1_9_port, OTMP_1_8_port, OTMP_1_7_port, OTMP_1_6_port, OTMP_1_5_port
      , OTMP_1_4_port, OTMP_1_3_port, OTMP_1_2_port, OTMP_1_1_port, 
      OTMP_1_0_port, OTMP_0_10_port, OTMP_0_8_port, OTMP_0_7_port, 
      OTMP_0_6_port, OTMP_0_5_port, OTMP_0_4_port, OTMP_0_3_port, OTMP_0_2_port
      , OTMP_0_1_port, OTMP_0_0_port, PTMP_1_13_port, PTMP_1_12_port, 
      PTMP_1_11_port, PTMP_1_10_port, PTMP_1_9_port, PTMP_1_8_port, 
      PTMP_1_7_port, PTMP_1_6_port, PTMP_1_5_port, PTMP_1_4_port, PTMP_1_3_port
      , PTMP_1_2_port, PTMP_1_1_port, PTMP_1_0_port, PTMP_0_12_port, 
      PTMP_0_10_port, PTMP_0_9_port, PTMP_0_8_port, PTMP_0_7_port, 
      PTMP_0_6_port, PTMP_0_5_port, PTMP_0_4_port, PTMP_0_3_port, PTMP_0_2_port
      , PTMP_0_1_port, PTMP_0_0_port, n4, n5, n6, n7, n8, n9, n10, n11, n12, 
      n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
      n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, 
      n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, 
      n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, 
      n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, 
      n_1048, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, 
      n_1057, n_1058, n_1059 : std_logic;

begin
   
   X_Logic0_port <= '0';
   ENC1 : BOOTHENC_NBIT10_i0 port map( A_s(9) => A(7), A_s(8) => A(7), A_s(7) 
                           => A(7), A_s(6) => A(6), A_s(5) => A(5), A_s(4) => 
                           A(4), A_s(3) => A(3), A_s(2) => A(2), A_s(1) => A(1)
                           , A_s(0) => A(0), A_ns(9) => A_n_9, A_ns(8) => A_n_9
                           , A_ns(7) => n11, A_ns(6) => n10, A_ns(5) => n9, 
                           A_ns(4) => n8, A_ns(3) => n7, A_ns(2) => n6, A_ns(1)
                           => n5, A_ns(0) => A(0), B(9) => B(7), B(8) => B(7), 
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
                           SHIFT_1_1_port, A_so(0) => n_1012, A_nso(9) => 
                           SHIFT_n_1_9_port, A_nso(8) => SHIFT_n_1_8_port, 
                           A_nso(7) => SHIFT_n_1_7_port, A_nso(6) => 
                           SHIFT_n_1_6_port, A_nso(5) => SHIFT_n_1_5_port, 
                           A_nso(4) => SHIFT_n_1_4_port, A_nso(3) => 
                           SHIFT_n_1_3_port, A_nso(2) => SHIFT_n_1_2_port, 
                           A_nso(1) => SHIFT_n_1_1_port, A_nso(0) => n_1013);
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
                           OTMP_1_1_port, O(0) => n_1014, A_so(11) => 
                           SHIFT_2_11_port, A_so(10) => SHIFT_2_10_port, 
                           A_so(9) => SHIFT_2_9_port, A_so(8) => SHIFT_2_8_port
                           , A_so(7) => SHIFT_2_7_port, A_so(6) => 
                           SHIFT_2_6_port, A_so(5) => SHIFT_2_5_port, A_so(4) 
                           => SHIFT_2_4_port, A_so(3) => SHIFT_2_3_port, 
                           A_so(2) => SHIFT_2_2_port, A_so(1) => n_1015, 
                           A_so(0) => n_1016, A_nso(11) => SHIFT_n_2_11_port, 
                           A_nso(10) => SHIFT_n_2_10_port, A_nso(9) => 
                           SHIFT_n_2_9_port, A_nso(8) => SHIFT_n_2_8_port, 
                           A_nso(7) => SHIFT_n_2_7_port, A_nso(6) => 
                           SHIFT_n_2_6_port, A_nso(5) => SHIFT_n_2_5_port, 
                           A_nso(4) => SHIFT_n_2_4_port, A_nso(3) => 
                           SHIFT_n_2_3_port, A_nso(2) => SHIFT_n_2_2_port, 
                           A_nso(1) => n_1017, A_nso(0) => n_1018);
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
                           OTMP_2_2_port, O(1) => OTMP_2_1_port, O(0) => n_1019
                           , A_so(13) => SHIFT_3_13_port, A_so(12) => 
                           SHIFT_3_12_port, A_so(11) => SHIFT_3_11_port, 
                           A_so(10) => SHIFT_3_10_port, A_so(9) => 
                           SHIFT_3_9_port, A_so(8) => SHIFT_3_8_port, A_so(7) 
                           => SHIFT_3_7_port, A_so(6) => SHIFT_3_6_port, 
                           A_so(5) => SHIFT_3_5_port, A_so(4) => SHIFT_3_4_port
                           , A_so(3) => SHIFT_3_3_port, A_so(2) => 
                           SHIFT_3_2_port, A_so(1) => n_1020, A_so(0) => n_1021
                           , A_nso(13) => SHIFT_n_3_13_port, A_nso(12) => 
                           SHIFT_n_3_12_port, A_nso(11) => SHIFT_n_3_11_port, 
                           A_nso(10) => SHIFT_n_3_10_port, A_nso(9) => 
                           SHIFT_n_3_9_port, A_nso(8) => SHIFT_n_3_8_port, 
                           A_nso(7) => SHIFT_n_3_7_port, A_nso(6) => 
                           SHIFT_n_3_6_port, A_nso(5) => SHIFT_n_3_5_port, 
                           A_nso(4) => SHIFT_n_3_4_port, A_nso(3) => 
                           SHIFT_n_3_3_port, A_nso(2) => SHIFT_n_3_2_port, 
                           A_nso(1) => n_1022, A_nso(0) => n_1023);
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
                           OTMP_3_1_port, O(0) => n_1024, A_so(15) => n_1025, 
                           A_so(14) => n_1026, A_so(13) => n_1027, A_so(12) => 
                           n_1028, A_so(11) => n_1029, A_so(10) => n_1030, 
                           A_so(9) => n_1031, A_so(8) => n_1032, A_so(7) => 
                           n_1033, A_so(6) => n_1034, A_so(5) => n_1035, 
                           A_so(4) => n_1036, A_so(3) => n_1037, A_so(2) => 
                           n_1038, A_so(1) => n_1039, A_so(0) => n_1040, 
                           A_nso(15) => n_1041, A_nso(14) => n_1042, A_nso(13) 
                           => n_1043, A_nso(12) => n_1044, A_nso(11) => n_1045,
                           A_nso(10) => n_1046, A_nso(9) => n_1047, A_nso(8) =>
                           n_1048, A_nso(7) => n_1049, A_nso(6) => n_1050, 
                           A_nso(5) => n_1051, A_nso(4) => n_1052, A_nso(3) => 
                           n_1053, A_nso(2) => n_1054, A_nso(1) => n_1055, 
                           A_nso(0) => n_1056);
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
                           PTMP_0_1_port, S(0) => PTMP_0_0_port, Co => n_1057);
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
                           PTMP_1_1_port, S(0) => PTMP_1_0_port, Co => n_1058);
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
                           S(1), S(0) => S(0), Co => n_1059);
   U5 : AND2_X1 port map( A1 => n26, A2 => n17, ZN => n4);
   U6 : XOR2_X1 port map( A => n20, B => n19, Z => n5);
   U7 : XOR2_X1 port map( A => n21, B => n12, Z => n6);
   U8 : XOR2_X1 port map( A => n22, B => n13, Z => n7);
   U9 : XOR2_X1 port map( A => n23, B => n14, Z => n8);
   U10 : XOR2_X1 port map( A => n24, B => n15, Z => n9);
   U11 : XOR2_X1 port map( A => n25, B => n16, Z => n10);
   U12 : XOR2_X1 port map( A => n26, B => n17, Z => n11);
   U13 : AND2_X1 port map( A1 => n20, A2 => n19, ZN => n12);
   U14 : AND2_X1 port map( A1 => n21, A2 => n12, ZN => n13);
   U15 : AND2_X1 port map( A1 => n22, A2 => n13, ZN => n14);
   U16 : AND2_X1 port map( A1 => n23, A2 => n14, ZN => n15);
   U17 : AND2_X1 port map( A1 => n24, A2 => n15, ZN => n16);
   U18 : AND2_X1 port map( A1 => n25, A2 => n16, ZN => n17);
   U19 : INV_X1 port map( A => n18, ZN => A_n_9);
   U20 : XNOR2_X1 port map( A => n26, B => n4, ZN => n18);
   U21 : INV_X1 port map( A => A(0), ZN => n19);
   U22 : INV_X1 port map( A => A(1), ZN => n20);
   U23 : INV_X1 port map( A => A(2), ZN => n21);
   U24 : INV_X1 port map( A => A(7), ZN => n26);
   U25 : INV_X1 port map( A => A(3), ZN => n22);
   U26 : INV_X1 port map( A => A(4), ZN => n23);
   U27 : INV_X1 port map( A => A(5), ZN => n24);
   U28 : INV_X1 port map( A => A(6), ZN => n25);
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
