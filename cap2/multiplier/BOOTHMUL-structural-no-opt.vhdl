
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT36_DW01_add_0 is

   port( A, B : in std_logic_vector (35 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (35 downto 0);  CO : out std_logic);

end RCA_NBIT36_DW01_add_0;

architecture SYN_rpl of RCA_NBIT36_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_35_port, carry_34_port, carry_33_port, carry_32_port, 
      carry_31_port, carry_30_port, carry_29_port, carry_28_port, carry_27_port
      , carry_26_port, carry_25_port, carry_24_port, carry_23_port, 
      carry_22_port, carry_21_port, carry_20_port, carry_19_port, carry_18_port
      , carry_17_port, carry_16_port, carry_15_port, carry_14_port, 
      carry_13_port, carry_12_port, carry_11_port, carry_10_port, carry_9_port,
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           n_1002, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT38_DW01_add_0 is

   port( A, B : in std_logic_vector (37 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (37 downto 0);  CO : out std_logic);

end RCA_NBIT38_DW01_add_0;

architecture SYN_rpl of RCA_NBIT38_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_37_port, carry_36_port, carry_35_port, carry_34_port, 
      carry_33_port, carry_32_port, carry_31_port, carry_30_port, carry_29_port
      , carry_28_port, carry_27_port, carry_26_port, carry_25_port, 
      carry_24_port, carry_23_port, carry_22_port, carry_21_port, carry_20_port
      , carry_19_port, carry_18_port, carry_17_port, carry_16_port, 
      carry_15_port, carry_14_port, carry_13_port, carry_12_port, carry_11_port
      , carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1, n_1005 : 
      std_logic;

begin
   
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           n_1005, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT40_DW01_add_0 is

   port( A, B : in std_logic_vector (39 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (39 downto 0);  CO : out std_logic);

end RCA_NBIT40_DW01_add_0;

architecture SYN_rpl of RCA_NBIT40_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_39_port, carry_38_port, carry_37_port, carry_36_port, 
      carry_35_port, carry_34_port, carry_33_port, carry_32_port, carry_31_port
      , carry_30_port, carry_29_port, carry_28_port, carry_27_port, 
      carry_26_port, carry_25_port, carry_24_port, carry_23_port, carry_22_port
      , carry_21_port, carry_20_port, carry_19_port, carry_18_port, 
      carry_17_port, carry_16_port, carry_15_port, carry_14_port, carry_13_port
      , carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port
      , carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, n1, n_1008 : std_logic;

begin
   
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           n_1008, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT42_DW01_add_0 is

   port( A, B : in std_logic_vector (41 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (41 downto 0);  CO : out std_logic);

end RCA_NBIT42_DW01_add_0;

architecture SYN_rpl of RCA_NBIT42_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_41_port, carry_40_port, carry_39_port, carry_38_port, 
      carry_37_port, carry_36_port, carry_35_port, carry_34_port, carry_33_port
      , carry_32_port, carry_31_port, carry_30_port, carry_29_port, 
      carry_28_port, carry_27_port, carry_26_port, carry_25_port, carry_24_port
      , carry_23_port, carry_22_port, carry_21_port, carry_20_port, 
      carry_19_port, carry_18_port, carry_17_port, carry_16_port, carry_15_port
      , carry_14_port, carry_13_port, carry_12_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1, n_1011 : 
      std_logic;

begin
   
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           n_1011, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT44_DW01_add_0 is

   port( A, B : in std_logic_vector (43 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (43 downto 0);  CO : out std_logic);

end RCA_NBIT44_DW01_add_0;

architecture SYN_rpl of RCA_NBIT44_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_43_port, carry_42_port, carry_41_port, carry_40_port, 
      carry_39_port, carry_38_port, carry_37_port, carry_36_port, carry_35_port
      , carry_34_port, carry_33_port, carry_32_port, carry_31_port, 
      carry_30_port, carry_29_port, carry_28_port, carry_27_port, carry_26_port
      , carry_25_port, carry_24_port, carry_23_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, carry_17_port
      , carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, n1, n_1014 : std_logic;

begin
   
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           n_1014, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT46_DW01_add_0 is

   port( A, B : in std_logic_vector (45 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (45 downto 0);  CO : out std_logic);

end RCA_NBIT46_DW01_add_0;

architecture SYN_rpl of RCA_NBIT46_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_45_port, carry_44_port, carry_43_port, carry_42_port, 
      carry_41_port, carry_40_port, carry_39_port, carry_38_port, carry_37_port
      , carry_36_port, carry_35_port, carry_34_port, carry_33_port, 
      carry_32_port, carry_31_port, carry_30_port, carry_29_port, carry_28_port
      , carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      carry_23_port, carry_22_port, carry_21_port, carry_20_port, carry_19_port
      , carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1017 : std_logic;

begin
   
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           n_1017, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT48_DW01_add_0 is

   port( A, B : in std_logic_vector (47 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (47 downto 0);  CO : out std_logic);

end RCA_NBIT48_DW01_add_0;

architecture SYN_rpl of RCA_NBIT48_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_47_port, carry_46_port, carry_45_port, carry_44_port, 
      carry_43_port, carry_42_port, carry_41_port, carry_40_port, carry_39_port
      , carry_38_port, carry_37_port, carry_36_port, carry_35_port, 
      carry_34_port, carry_33_port, carry_32_port, carry_31_port, carry_30_port
      , carry_29_port, carry_28_port, carry_27_port, carry_26_port, 
      carry_25_port, carry_24_port, carry_23_port, carry_22_port, carry_21_port
      , carry_20_port, carry_19_port, carry_18_port, carry_17_port, 
      carry_16_port, carry_15_port, carry_14_port, carry_13_port, carry_12_port
      , carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port,
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1,
      n_1020 : std_logic;

begin
   
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           n_1020, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT50_DW01_add_0 is

   port( A, B : in std_logic_vector (49 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (49 downto 0);  CO : out std_logic);

end RCA_NBIT50_DW01_add_0;

architecture SYN_rpl of RCA_NBIT50_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_49_port, carry_48_port, carry_47_port, carry_46_port, 
      carry_45_port, carry_44_port, carry_43_port, carry_42_port, carry_41_port
      , carry_40_port, carry_39_port, carry_38_port, carry_37_port, 
      carry_36_port, carry_35_port, carry_34_port, carry_33_port, carry_32_port
      , carry_31_port, carry_30_port, carry_29_port, carry_28_port, 
      carry_27_port, carry_26_port, carry_25_port, carry_24_port, carry_23_port
      , carry_22_port, carry_21_port, carry_20_port, carry_19_port, 
      carry_18_port, carry_17_port, carry_16_port, carry_15_port, carry_14_port
      , carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1023 : std_logic;

begin
   
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           n_1023, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT52_DW01_add_0 is

   port( A, B : in std_logic_vector (51 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (51 downto 0);  CO : out std_logic);

end RCA_NBIT52_DW01_add_0;

architecture SYN_rpl of RCA_NBIT52_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_51_port, carry_50_port, carry_49_port, carry_48_port, 
      carry_47_port, carry_46_port, carry_45_port, carry_44_port, carry_43_port
      , carry_42_port, carry_41_port, carry_40_port, carry_39_port, 
      carry_38_port, carry_37_port, carry_36_port, carry_35_port, carry_34_port
      , carry_33_port, carry_32_port, carry_31_port, carry_30_port, 
      carry_29_port, carry_28_port, carry_27_port, carry_26_port, carry_25_port
      , carry_24_port, carry_23_port, carry_22_port, carry_21_port, 
      carry_20_port, carry_19_port, carry_18_port, carry_17_port, carry_16_port
      , carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1,
      n_1026 : std_logic;

begin
   
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           n_1026, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT54_DW01_add_0 is

   port( A, B : in std_logic_vector (53 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (53 downto 0);  CO : out std_logic);

end RCA_NBIT54_DW01_add_0;

architecture SYN_rpl of RCA_NBIT54_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_53_port, carry_52_port, carry_51_port, carry_50_port, 
      carry_49_port, carry_48_port, carry_47_port, carry_46_port, carry_45_port
      , carry_44_port, carry_43_port, carry_42_port, carry_41_port, 
      carry_40_port, carry_39_port, carry_38_port, carry_37_port, carry_36_port
      , carry_35_port, carry_34_port, carry_33_port, carry_32_port, 
      carry_31_port, carry_30_port, carry_29_port, carry_28_port, carry_27_port
      , carry_26_port, carry_25_port, carry_24_port, carry_23_port, 
      carry_22_port, carry_21_port, carry_20_port, carry_19_port, carry_18_port
      , carry_17_port, carry_16_port, carry_15_port, carry_14_port, 
      carry_13_port, carry_12_port, carry_11_port, carry_10_port, carry_9_port,
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1029 : std_logic;

begin
   
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           n_1029, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT56_DW01_add_0 is

   port( A, B : in std_logic_vector (55 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (55 downto 0);  CO : out std_logic);

end RCA_NBIT56_DW01_add_0;

architecture SYN_rpl of RCA_NBIT56_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_55_port, carry_54_port, carry_53_port, carry_52_port, 
      carry_51_port, carry_50_port, carry_49_port, carry_48_port, carry_47_port
      , carry_46_port, carry_45_port, carry_44_port, carry_43_port, 
      carry_42_port, carry_41_port, carry_40_port, carry_39_port, carry_38_port
      , carry_37_port, carry_36_port, carry_35_port, carry_34_port, 
      carry_33_port, carry_32_port, carry_31_port, carry_30_port, carry_29_port
      , carry_28_port, carry_27_port, carry_26_port, carry_25_port, 
      carry_24_port, carry_23_port, carry_22_port, carry_21_port, carry_20_port
      , carry_19_port, carry_18_port, carry_17_port, carry_16_port, 
      carry_15_port, carry_14_port, carry_13_port, carry_12_port, carry_11_port
      , carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1, n_1032 : 
      std_logic;

begin
   
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           n_1032, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT58_DW01_add_0 is

   port( A, B : in std_logic_vector (57 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (57 downto 0);  CO : out std_logic);

end RCA_NBIT58_DW01_add_0;

architecture SYN_rpl of RCA_NBIT58_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_57_port, carry_56_port, carry_55_port, carry_54_port, 
      carry_53_port, carry_52_port, carry_51_port, carry_50_port, carry_49_port
      , carry_48_port, carry_47_port, carry_46_port, carry_45_port, 
      carry_44_port, carry_43_port, carry_42_port, carry_41_port, carry_40_port
      , carry_39_port, carry_38_port, carry_37_port, carry_36_port, 
      carry_35_port, carry_34_port, carry_33_port, carry_32_port, carry_31_port
      , carry_30_port, carry_29_port, carry_28_port, carry_27_port, 
      carry_26_port, carry_25_port, carry_24_port, carry_23_port, carry_22_port
      , carry_21_port, carry_20_port, carry_19_port, carry_18_port, 
      carry_17_port, carry_16_port, carry_15_port, carry_14_port, carry_13_port
      , carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port
      , carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, n1, n_1035 : std_logic;

begin
   
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           n_1035, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT60_DW01_add_0 is

   port( A, B : in std_logic_vector (59 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (59 downto 0);  CO : out std_logic);

end RCA_NBIT60_DW01_add_0;

architecture SYN_rpl of RCA_NBIT60_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_59_port, carry_58_port, carry_57_port, carry_56_port, 
      carry_55_port, carry_54_port, carry_53_port, carry_52_port, carry_51_port
      , carry_50_port, carry_49_port, carry_48_port, carry_47_port, 
      carry_46_port, carry_45_port, carry_44_port, carry_43_port, carry_42_port
      , carry_41_port, carry_40_port, carry_39_port, carry_38_port, 
      carry_37_port, carry_36_port, carry_35_port, carry_34_port, carry_33_port
      , carry_32_port, carry_31_port, carry_30_port, carry_29_port, 
      carry_28_port, carry_27_port, carry_26_port, carry_25_port, carry_24_port
      , carry_23_port, carry_22_port, carry_21_port, carry_20_port, 
      carry_19_port, carry_18_port, carry_17_port, carry_16_port, carry_15_port
      , carry_14_port, carry_13_port, carry_12_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1, n_1038 : 
      std_logic;

begin
   
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           n_1038, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT62_DW01_add_0 is

   port( A, B : in std_logic_vector (61 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (61 downto 0);  CO : out std_logic);

end RCA_NBIT62_DW01_add_0;

architecture SYN_rpl of RCA_NBIT62_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_61_port, carry_60_port, carry_59_port, carry_58_port, 
      carry_57_port, carry_56_port, carry_55_port, carry_54_port, carry_53_port
      , carry_52_port, carry_51_port, carry_50_port, carry_49_port, 
      carry_48_port, carry_47_port, carry_46_port, carry_45_port, carry_44_port
      , carry_43_port, carry_42_port, carry_41_port, carry_40_port, 
      carry_39_port, carry_38_port, carry_37_port, carry_36_port, carry_35_port
      , carry_34_port, carry_33_port, carry_32_port, carry_31_port, 
      carry_30_port, carry_29_port, carry_28_port, carry_27_port, carry_26_port
      , carry_25_port, carry_24_port, carry_23_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, carry_17_port
      , carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, n1, n_1041 : std_logic;

begin
   
   U1_61 : FA_X1 port map( A => A(61), B => B(61), CI => carry_61_port, CO => 
                           n_1041, S => SUM(61));
   U1_60 : FA_X1 port map( A => A(60), B => B(60), CI => carry_60_port, CO => 
                           carry_61_port, S => SUM(60));
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           carry_60_port, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT64_DW01_add_0 is

   port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (63 downto 0);  CO : out std_logic);

end RCA_NBIT64_DW01_add_0;

architecture SYN_rpl of RCA_NBIT64_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_63_port, carry_62_port, carry_61_port, carry_60_port, 
      carry_59_port, carry_58_port, carry_57_port, carry_56_port, carry_55_port
      , carry_54_port, carry_53_port, carry_52_port, carry_51_port, 
      carry_50_port, carry_49_port, carry_48_port, carry_47_port, carry_46_port
      , carry_45_port, carry_44_port, carry_43_port, carry_42_port, 
      carry_41_port, carry_40_port, carry_39_port, carry_38_port, carry_37_port
      , carry_36_port, carry_35_port, carry_34_port, carry_33_port, 
      carry_32_port, carry_31_port, carry_30_port, carry_29_port, carry_28_port
      , carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      carry_23_port, carry_22_port, carry_21_port, carry_20_port, carry_19_port
      , carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1044 : std_logic;

begin
   
   U1_63 : FA_X1 port map( A => A(63), B => B(63), CI => carry_63_port, CO => 
                           n_1044, S => SUM(63));
   U1_62 : FA_X1 port map( A => A(62), B => B(62), CI => carry_62_port, CO => 
                           carry_63_port, S => SUM(62));
   U1_61 : FA_X1 port map( A => A(61), B => B(61), CI => carry_61_port, CO => 
                           carry_62_port, S => SUM(61));
   U1_60 : FA_X1 port map( A => A(60), B => B(60), CI => carry_60_port, CO => 
                           carry_61_port, S => SUM(60));
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           carry_60_port, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
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

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHMUL_NBIT32_DW01_sub_0 is

   port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  DIFF : 
         out std_logic_vector (31 downto 0);  CO : out std_logic);

end BOOTHMUL_NBIT32_DW01_sub_0;

architecture SYN_rpl of BOOTHMUL_NBIT32_DW01_sub_0 is

   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal DIFF_31_port, DIFF_30_port, DIFF_29_port, DIFF_28_port, DIFF_27_port,
      DIFF_26_port, DIFF_25_port, DIFF_24_port, DIFF_23_port, DIFF_22_port, 
      DIFF_21_port, DIFF_20_port, DIFF_19_port, DIFF_18_port, DIFF_17_port, 
      DIFF_16_port, DIFF_15_port, DIFF_14_port, DIFF_13_port, DIFF_12_port, 
      DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, DIFF_7_port, 
      DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, DIFF_2_port, 
      DIFF_1_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58
      , n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, 
      n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87
      , n88, n89, n90, n91, n92, n93 : std_logic;

begin
   DIFF <= ( DIFF_31_port, DIFF_30_port, DIFF_29_port, DIFF_28_port, 
      DIFF_27_port, DIFF_26_port, DIFF_25_port, DIFF_24_port, DIFF_23_port, 
      DIFF_22_port, DIFF_21_port, DIFF_20_port, DIFF_19_port, DIFF_18_port, 
      DIFF_17_port, DIFF_16_port, DIFF_15_port, DIFF_14_port, DIFF_13_port, 
      DIFF_12_port, DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, 
      DIFF_7_port, DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, 
      DIFF_2_port, DIFF_1_port, B(0) );
   
   U1 : AND2_X1 port map( A1 => n63, A2 => n30, ZN => n1);
   U2 : INV_X4 port map( A => n31, ZN => DIFF_31_port);
   U3 : XNOR2_X1 port map( A => n92, B => n93, ZN => n61);
   U4 : XNOR2_X1 port map( A => n91, B => n2, ZN => n60);
   U5 : XNOR2_X1 port map( A => n90, B => n3, ZN => n59);
   U6 : XNOR2_X1 port map( A => n89, B => n4, ZN => n58);
   U7 : XNOR2_X1 port map( A => n88, B => n5, ZN => n57);
   U8 : XNOR2_X1 port map( A => n87, B => n6, ZN => n56);
   U9 : XNOR2_X1 port map( A => n86, B => n7, ZN => n55);
   U10 : XNOR2_X1 port map( A => n85, B => n8, ZN => n54);
   U11 : XNOR2_X1 port map( A => n84, B => n9, ZN => n53);
   U12 : XNOR2_X1 port map( A => n83, B => n10, ZN => n52);
   U13 : XNOR2_X1 port map( A => n82, B => n11, ZN => n51);
   U14 : XNOR2_X1 port map( A => n81, B => n12, ZN => n50);
   U15 : XNOR2_X1 port map( A => n80, B => n13, ZN => n49);
   U16 : XNOR2_X1 port map( A => n79, B => n14, ZN => n48);
   U17 : XNOR2_X1 port map( A => n78, B => n15, ZN => n47);
   U18 : XNOR2_X1 port map( A => n77, B => n16, ZN => n46);
   U19 : XNOR2_X1 port map( A => n76, B => n17, ZN => n45);
   U20 : XNOR2_X1 port map( A => n75, B => n18, ZN => n44);
   U21 : XNOR2_X1 port map( A => n74, B => n19, ZN => n43);
   U22 : XNOR2_X1 port map( A => n73, B => n20, ZN => n42);
   U23 : XNOR2_X1 port map( A => n72, B => n21, ZN => n41);
   U24 : XNOR2_X1 port map( A => n71, B => n22, ZN => n40);
   U25 : XNOR2_X1 port map( A => n70, B => n23, ZN => n39);
   U26 : XNOR2_X1 port map( A => n69, B => n24, ZN => n38);
   U27 : XNOR2_X1 port map( A => n68, B => n25, ZN => n37);
   U28 : XNOR2_X1 port map( A => n67, B => n26, ZN => n36);
   U29 : XNOR2_X1 port map( A => n66, B => n27, ZN => n35);
   U30 : XNOR2_X1 port map( A => n65, B => n28, ZN => n34);
   U31 : XNOR2_X1 port map( A => n63, B => n30, ZN => n32);
   U32 : XNOR2_X1 port map( A => n64, B => n29, ZN => n33);
   U33 : AND2_X1 port map( A1 => n92, A2 => n93, ZN => n2);
   U34 : AND2_X1 port map( A1 => n91, A2 => n2, ZN => n3);
   U35 : AND2_X1 port map( A1 => n90, A2 => n3, ZN => n4);
   U36 : AND2_X1 port map( A1 => n89, A2 => n4, ZN => n5);
   U37 : AND2_X1 port map( A1 => n88, A2 => n5, ZN => n6);
   U38 : AND2_X1 port map( A1 => n87, A2 => n6, ZN => n7);
   U39 : AND2_X1 port map( A1 => n86, A2 => n7, ZN => n8);
   U40 : AND2_X1 port map( A1 => n85, A2 => n8, ZN => n9);
   U41 : AND2_X1 port map( A1 => n84, A2 => n9, ZN => n10);
   U42 : AND2_X1 port map( A1 => n83, A2 => n10, ZN => n11);
   U43 : AND2_X1 port map( A1 => n82, A2 => n11, ZN => n12);
   U44 : AND2_X1 port map( A1 => n81, A2 => n12, ZN => n13);
   U45 : AND2_X1 port map( A1 => n80, A2 => n13, ZN => n14);
   U46 : AND2_X1 port map( A1 => n79, A2 => n14, ZN => n15);
   U47 : AND2_X1 port map( A1 => n78, A2 => n15, ZN => n16);
   U48 : AND2_X1 port map( A1 => n77, A2 => n16, ZN => n17);
   U49 : AND2_X1 port map( A1 => n76, A2 => n17, ZN => n18);
   U50 : AND2_X1 port map( A1 => n75, A2 => n18, ZN => n19);
   U51 : AND2_X1 port map( A1 => n74, A2 => n19, ZN => n20);
   U52 : AND2_X1 port map( A1 => n73, A2 => n20, ZN => n21);
   U53 : AND2_X1 port map( A1 => n72, A2 => n21, ZN => n22);
   U54 : AND2_X1 port map( A1 => n71, A2 => n22, ZN => n23);
   U55 : AND2_X1 port map( A1 => n70, A2 => n23, ZN => n24);
   U56 : AND2_X1 port map( A1 => n69, A2 => n24, ZN => n25);
   U57 : AND2_X1 port map( A1 => n68, A2 => n25, ZN => n26);
   U58 : AND2_X1 port map( A1 => n67, A2 => n26, ZN => n27);
   U59 : AND2_X1 port map( A1 => n66, A2 => n27, ZN => n28);
   U60 : AND2_X1 port map( A1 => n65, A2 => n28, ZN => n29);
   U61 : AND2_X1 port map( A1 => n64, A2 => n29, ZN => n30);
   U62 : XNOR2_X1 port map( A => n62, B => n1, ZN => n31);
   U63 : INV_X1 port map( A => B(31), ZN => n62);
   U64 : INV_X1 port map( A => B(0), ZN => n93);
   U65 : INV_X1 port map( A => B(1), ZN => n92);
   U66 : INV_X1 port map( A => B(2), ZN => n91);
   U67 : INV_X1 port map( A => B(3), ZN => n90);
   U68 : INV_X1 port map( A => B(4), ZN => n89);
   U69 : INV_X1 port map( A => B(5), ZN => n88);
   U70 : INV_X1 port map( A => B(6), ZN => n87);
   U71 : INV_X1 port map( A => B(7), ZN => n86);
   U72 : INV_X1 port map( A => B(8), ZN => n85);
   U73 : INV_X1 port map( A => B(9), ZN => n84);
   U74 : INV_X1 port map( A => B(10), ZN => n83);
   U75 : INV_X1 port map( A => B(11), ZN => n82);
   U76 : INV_X1 port map( A => B(12), ZN => n81);
   U77 : INV_X1 port map( A => B(13), ZN => n80);
   U78 : INV_X1 port map( A => B(14), ZN => n79);
   U79 : INV_X1 port map( A => B(15), ZN => n78);
   U80 : INV_X1 port map( A => B(16), ZN => n77);
   U81 : INV_X1 port map( A => B(17), ZN => n76);
   U82 : INV_X1 port map( A => B(18), ZN => n75);
   U83 : INV_X1 port map( A => B(19), ZN => n74);
   U84 : INV_X1 port map( A => B(20), ZN => n73);
   U85 : INV_X1 port map( A => B(21), ZN => n72);
   U86 : INV_X1 port map( A => B(22), ZN => n71);
   U87 : INV_X1 port map( A => B(23), ZN => n70);
   U88 : INV_X1 port map( A => B(24), ZN => n69);
   U89 : INV_X1 port map( A => B(25), ZN => n68);
   U90 : INV_X1 port map( A => B(26), ZN => n67);
   U91 : INV_X1 port map( A => B(27), ZN => n66);
   U92 : INV_X1 port map( A => B(28), ZN => n65);
   U93 : INV_X1 port map( A => B(29), ZN => n64);
   U94 : INV_X1 port map( A => B(30), ZN => n63);
   U95 : INV_X2 port map( A => n32, ZN => DIFF_30_port);
   U96 : INV_X2 port map( A => n33, ZN => DIFF_29_port);
   U97 : INV_X2 port map( A => n34, ZN => DIFF_28_port);
   U98 : INV_X2 port map( A => n35, ZN => DIFF_27_port);
   U99 : INV_X2 port map( A => n36, ZN => DIFF_26_port);
   U100 : INV_X2 port map( A => n37, ZN => DIFF_25_port);
   U101 : INV_X2 port map( A => n38, ZN => DIFF_24_port);
   U102 : INV_X2 port map( A => n39, ZN => DIFF_23_port);
   U103 : INV_X2 port map( A => n40, ZN => DIFF_22_port);
   U104 : INV_X2 port map( A => n41, ZN => DIFF_21_port);
   U105 : INV_X2 port map( A => n42, ZN => DIFF_20_port);
   U106 : INV_X2 port map( A => n43, ZN => DIFF_19_port);
   U107 : INV_X2 port map( A => n44, ZN => DIFF_18_port);
   U108 : INV_X2 port map( A => n45, ZN => DIFF_17_port);
   U109 : INV_X2 port map( A => n46, ZN => DIFF_16_port);
   U110 : INV_X2 port map( A => n47, ZN => DIFF_15_port);
   U111 : INV_X2 port map( A => n48, ZN => DIFF_14_port);
   U112 : INV_X2 port map( A => n49, ZN => DIFF_13_port);
   U113 : INV_X2 port map( A => n50, ZN => DIFF_12_port);
   U114 : INV_X2 port map( A => n51, ZN => DIFF_11_port);
   U115 : INV_X2 port map( A => n52, ZN => DIFF_10_port);
   U116 : INV_X2 port map( A => n53, ZN => DIFF_9_port);
   U117 : INV_X2 port map( A => n54, ZN => DIFF_8_port);
   U118 : INV_X2 port map( A => n55, ZN => DIFF_7_port);
   U119 : INV_X2 port map( A => n56, ZN => DIFF_6_port);
   U120 : INV_X2 port map( A => n57, ZN => DIFF_5_port);
   U121 : INV_X2 port map( A => n58, ZN => DIFF_4_port);
   U122 : INV_X2 port map( A => n59, ZN => DIFF_3_port);
   U123 : INV_X2 port map( A => n60, ZN => DIFF_2_port);
   U124 : INV_X2 port map( A => n61, ZN => DIFF_1_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT64 is

   port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (63 downto 0);  Co : out std_logic);

end RCA_NBIT64;

architecture SYN_DIRECT of RCA_NBIT64 is

   component RCA_NBIT64_DW01_add_0
      port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (63 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1079 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT64_DW01_add_0 port map( A(63) => A(63), A(62) => A(62), 
                           A(61) => A(61), A(60) => A(60), A(59) => A(59), 
                           A(58) => A(58), A(57) => A(57), A(56) => A(56), 
                           A(55) => A(55), A(54) => A(54), A(53) => A(53), 
                           A(52) => A(52), A(51) => A(51), A(50) => A(50), 
                           A(49) => A(49), A(48) => A(48), A(47) => A(47), 
                           A(46) => A(46), A(45) => A(45), A(44) => A(44), 
                           A(43) => A(43), A(42) => A(42), A(41) => A(41), 
                           A(40) => A(40), A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(63) => B(63), B(62) => B(62), B(61) => B(61), 
                           B(60) => B(60), B(59) => B(59), B(58) => B(58), 
                           B(57) => B(57), B(56) => B(56), B(55) => B(55), 
                           B(54) => B(54), B(53) => B(53), B(52) => B(52), 
                           B(51) => B(51), B(50) => B(50), B(49) => B(49), 
                           B(48) => B(48), B(47) => B(47), B(46) => B(46), 
                           B(45) => B(45), B(44) => B(44), B(43) => B(43), 
                           B(42) => B(42), B(41) => B(41), B(40) => B(40), 
                           B(39) => B(39), B(38) => B(38), B(37) => B(37), 
                           B(36) => B(36), B(35) => B(35), B(34) => B(34), 
                           B(33) => B(33), B(32) => B(32), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, SUM(63) 
                           => S(63), SUM(62) => S(62), SUM(61) => S(61), 
                           SUM(60) => S(60), SUM(59) => S(59), SUM(58) => S(58)
                           , SUM(57) => S(57), SUM(56) => S(56), SUM(55) => 
                           S(55), SUM(54) => S(54), SUM(53) => S(53), SUM(52) 
                           => S(52), SUM(51) => S(51), SUM(50) => S(50), 
                           SUM(49) => S(49), SUM(48) => S(48), SUM(47) => S(47)
                           , SUM(46) => S(46), SUM(45) => S(45), SUM(44) => 
                           S(44), SUM(43) => S(43), SUM(42) => S(42), SUM(41) 
                           => S(41), SUM(40) => S(40), SUM(39) => S(39), 
                           SUM(38) => S(38), SUM(37) => S(37), SUM(36) => S(36)
                           , SUM(35) => S(35), SUM(34) => S(34), SUM(33) => 
                           S(33), SUM(32) => S(32), SUM(31) => S(31), SUM(30) 
                           => S(30), SUM(29) => S(29), SUM(28) => S(28), 
                           SUM(27) => S(27), SUM(26) => S(26), SUM(25) => S(25)
                           , SUM(24) => S(24), SUM(23) => S(23), SUM(22) => 
                           S(22), SUM(21) => S(21), SUM(20) => S(20), SUM(19) 
                           => S(19), SUM(18) => S(18), SUM(17) => S(17), 
                           SUM(16) => S(16), SUM(15) => S(15), SUM(14) => S(14)
                           , SUM(13) => S(13), SUM(12) => S(12), SUM(11) => 
                           S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) => 
                           S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5)
                           , SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1079);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT62 is

   port( A, B : in std_logic_vector (61 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (61 downto 0);  Co : out std_logic);

end RCA_NBIT62;

architecture SYN_DIRECT of RCA_NBIT62 is

   component RCA_NBIT62_DW01_add_0
      port( A, B : in std_logic_vector (61 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (61 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1080 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT62_DW01_add_0 port map( A(61) => A(61), A(60) => A(60), 
                           A(59) => A(59), A(58) => A(58), A(57) => A(57), 
                           A(56) => A(56), A(55) => A(55), A(54) => A(54), 
                           A(53) => A(53), A(52) => A(52), A(51) => A(51), 
                           A(50) => A(50), A(49) => A(49), A(48) => A(48), 
                           A(47) => A(47), A(46) => A(46), A(45) => A(45), 
                           A(44) => A(44), A(43) => A(43), A(42) => A(42), 
                           A(41) => A(41), A(40) => A(40), A(39) => A(39), 
                           A(38) => A(38), A(37) => A(37), A(36) => A(36), 
                           A(35) => A(35), A(34) => A(34), A(33) => A(33), 
                           A(32) => A(32), A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(61) => B(61), B(60) => B(60), 
                           B(59) => B(59), B(58) => B(58), B(57) => B(57), 
                           B(56) => B(56), B(55) => B(55), B(54) => B(54), 
                           B(53) => B(53), B(52) => B(52), B(51) => B(51), 
                           B(50) => B(50), B(49) => B(49), B(48) => B(48), 
                           B(47) => B(47), B(46) => B(46), B(45) => B(45), 
                           B(44) => B(44), B(43) => B(43), B(42) => B(42), 
                           B(41) => B(41), B(40) => B(40), B(39) => B(39), 
                           B(38) => B(38), B(37) => B(37), B(36) => B(36), 
                           B(35) => B(35), B(34) => B(34), B(33) => B(33), 
                           B(32) => B(32), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, SUM(61) => S(61), 
                           SUM(60) => S(60), SUM(59) => S(59), SUM(58) => S(58)
                           , SUM(57) => S(57), SUM(56) => S(56), SUM(55) => 
                           S(55), SUM(54) => S(54), SUM(53) => S(53), SUM(52) 
                           => S(52), SUM(51) => S(51), SUM(50) => S(50), 
                           SUM(49) => S(49), SUM(48) => S(48), SUM(47) => S(47)
                           , SUM(46) => S(46), SUM(45) => S(45), SUM(44) => 
                           S(44), SUM(43) => S(43), SUM(42) => S(42), SUM(41) 
                           => S(41), SUM(40) => S(40), SUM(39) => S(39), 
                           SUM(38) => S(38), SUM(37) => S(37), SUM(36) => S(36)
                           , SUM(35) => S(35), SUM(34) => S(34), SUM(33) => 
                           S(33), SUM(32) => S(32), SUM(31) => S(31), SUM(30) 
                           => S(30), SUM(29) => S(29), SUM(28) => S(28), 
                           SUM(27) => S(27), SUM(26) => S(26), SUM(25) => S(25)
                           , SUM(24) => S(24), SUM(23) => S(23), SUM(22) => 
                           S(22), SUM(21) => S(21), SUM(20) => S(20), SUM(19) 
                           => S(19), SUM(18) => S(18), SUM(17) => S(17), 
                           SUM(16) => S(16), SUM(15) => S(15), SUM(14) => S(14)
                           , SUM(13) => S(13), SUM(12) => S(12), SUM(11) => 
                           S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) => 
                           S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5)
                           , SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1080);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT60 is

   port( A, B : in std_logic_vector (59 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (59 downto 0);  Co : out std_logic);

end RCA_NBIT60;

architecture SYN_DIRECT of RCA_NBIT60 is

   component RCA_NBIT60_DW01_add_0
      port( A, B : in std_logic_vector (59 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (59 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1081 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT60_DW01_add_0 port map( A(59) => A(59), A(58) => A(58), 
                           A(57) => A(57), A(56) => A(56), A(55) => A(55), 
                           A(54) => A(54), A(53) => A(53), A(52) => A(52), 
                           A(51) => A(51), A(50) => A(50), A(49) => A(49), 
                           A(48) => A(48), A(47) => A(47), A(46) => A(46), 
                           A(45) => A(45), A(44) => A(44), A(43) => A(43), 
                           A(42) => A(42), A(41) => A(41), A(40) => A(40), 
                           A(39) => A(39), A(38) => A(38), A(37) => A(37), 
                           A(36) => A(36), A(35) => A(35), A(34) => A(34), 
                           A(33) => A(33), A(32) => A(32), A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(59) => B(59), 
                           B(58) => B(58), B(57) => B(57), B(56) => B(56), 
                           B(55) => B(55), B(54) => B(54), B(53) => B(53), 
                           B(52) => B(52), B(51) => B(51), B(50) => B(50), 
                           B(49) => B(49), B(48) => B(48), B(47) => B(47), 
                           B(46) => B(46), B(45) => B(45), B(44) => B(44), 
                           B(43) => B(43), B(42) => B(42), B(41) => B(41), 
                           B(40) => B(40), B(39) => B(39), B(38) => B(38), 
                           B(37) => B(37), B(36) => B(36), B(35) => B(35), 
                           B(34) => B(34), B(33) => B(33), B(32) => B(32), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, SUM(59) => S(59), SUM(58) => S(58), 
                           SUM(57) => S(57), SUM(56) => S(56), SUM(55) => S(55)
                           , SUM(54) => S(54), SUM(53) => S(53), SUM(52) => 
                           S(52), SUM(51) => S(51), SUM(50) => S(50), SUM(49) 
                           => S(49), SUM(48) => S(48), SUM(47) => S(47), 
                           SUM(46) => S(46), SUM(45) => S(45), SUM(44) => S(44)
                           , SUM(43) => S(43), SUM(42) => S(42), SUM(41) => 
                           S(41), SUM(40) => S(40), SUM(39) => S(39), SUM(38) 
                           => S(38), SUM(37) => S(37), SUM(36) => S(36), 
                           SUM(35) => S(35), SUM(34) => S(34), SUM(33) => S(33)
                           , SUM(32) => S(32), SUM(31) => S(31), SUM(30) => 
                           S(30), SUM(29) => S(29), SUM(28) => S(28), SUM(27) 
                           => S(27), SUM(26) => S(26), SUM(25) => S(25), 
                           SUM(24) => S(24), SUM(23) => S(23), SUM(22) => S(22)
                           , SUM(21) => S(21), SUM(20) => S(20), SUM(19) => 
                           S(19), SUM(18) => S(18), SUM(17) => S(17), SUM(16) 
                           => S(16), SUM(15) => S(15), SUM(14) => S(14), 
                           SUM(13) => S(13), SUM(12) => S(12), SUM(11) => S(11)
                           , SUM(10) => S(10), SUM(9) => S(9), SUM(8) => S(8), 
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1081);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT58 is

   port( A, B : in std_logic_vector (57 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (57 downto 0);  Co : out std_logic);

end RCA_NBIT58;

architecture SYN_DIRECT of RCA_NBIT58 is

   component RCA_NBIT58_DW01_add_0
      port( A, B : in std_logic_vector (57 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (57 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1082 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT58_DW01_add_0 port map( A(57) => A(57), A(56) => A(56), 
                           A(55) => A(55), A(54) => A(54), A(53) => A(53), 
                           A(52) => A(52), A(51) => A(51), A(50) => A(50), 
                           A(49) => A(49), A(48) => A(48), A(47) => A(47), 
                           A(46) => A(46), A(45) => A(45), A(44) => A(44), 
                           A(43) => A(43), A(42) => A(42), A(41) => A(41), 
                           A(40) => A(40), A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(57) => B(57), B(56) => B(56), B(55) => B(55), 
                           B(54) => B(54), B(53) => B(53), B(52) => B(52), 
                           B(51) => B(51), B(50) => B(50), B(49) => B(49), 
                           B(48) => B(48), B(47) => B(47), B(46) => B(46), 
                           B(45) => B(45), B(44) => B(44), B(43) => B(43), 
                           B(42) => B(42), B(41) => B(41), B(40) => B(40), 
                           B(39) => B(39), B(38) => B(38), B(37) => B(37), 
                           B(36) => B(36), B(35) => B(35), B(34) => B(34), 
                           B(33) => B(33), B(32) => B(32), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, SUM(57) 
                           => S(57), SUM(56) => S(56), SUM(55) => S(55), 
                           SUM(54) => S(54), SUM(53) => S(53), SUM(52) => S(52)
                           , SUM(51) => S(51), SUM(50) => S(50), SUM(49) => 
                           S(49), SUM(48) => S(48), SUM(47) => S(47), SUM(46) 
                           => S(46), SUM(45) => S(45), SUM(44) => S(44), 
                           SUM(43) => S(43), SUM(42) => S(42), SUM(41) => S(41)
                           , SUM(40) => S(40), SUM(39) => S(39), SUM(38) => 
                           S(38), SUM(37) => S(37), SUM(36) => S(36), SUM(35) 
                           => S(35), SUM(34) => S(34), SUM(33) => S(33), 
                           SUM(32) => S(32), SUM(31) => S(31), SUM(30) => S(30)
                           , SUM(29) => S(29), SUM(28) => S(28), SUM(27) => 
                           S(27), SUM(26) => S(26), SUM(25) => S(25), SUM(24) 
                           => S(24), SUM(23) => S(23), SUM(22) => S(22), 
                           SUM(21) => S(21), SUM(20) => S(20), SUM(19) => S(19)
                           , SUM(18) => S(18), SUM(17) => S(17), SUM(16) => 
                           S(16), SUM(15) => S(15), SUM(14) => S(14), SUM(13) 
                           => S(13), SUM(12) => S(12), SUM(11) => S(11), 
                           SUM(10) => S(10), SUM(9) => S(9), SUM(8) => S(8), 
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1082);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT56 is

   port( A, B : in std_logic_vector (55 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (55 downto 0);  Co : out std_logic);

end RCA_NBIT56;

architecture SYN_DIRECT of RCA_NBIT56 is

   component RCA_NBIT56_DW01_add_0
      port( A, B : in std_logic_vector (55 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (55 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1083 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT56_DW01_add_0 port map( A(55) => A(55), A(54) => A(54), 
                           A(53) => A(53), A(52) => A(52), A(51) => A(51), 
                           A(50) => A(50), A(49) => A(49), A(48) => A(48), 
                           A(47) => A(47), A(46) => A(46), A(45) => A(45), 
                           A(44) => A(44), A(43) => A(43), A(42) => A(42), 
                           A(41) => A(41), A(40) => A(40), A(39) => A(39), 
                           A(38) => A(38), A(37) => A(37), A(36) => A(36), 
                           A(35) => A(35), A(34) => A(34), A(33) => A(33), 
                           A(32) => A(32), A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(55) => B(55), B(54) => B(54), 
                           B(53) => B(53), B(52) => B(52), B(51) => B(51), 
                           B(50) => B(50), B(49) => B(49), B(48) => B(48), 
                           B(47) => B(47), B(46) => B(46), B(45) => B(45), 
                           B(44) => B(44), B(43) => B(43), B(42) => B(42), 
                           B(41) => B(41), B(40) => B(40), B(39) => B(39), 
                           B(38) => B(38), B(37) => B(37), B(36) => B(36), 
                           B(35) => B(35), B(34) => B(34), B(33) => B(33), 
                           B(32) => B(32), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, SUM(55) => S(55), 
                           SUM(54) => S(54), SUM(53) => S(53), SUM(52) => S(52)
                           , SUM(51) => S(51), SUM(50) => S(50), SUM(49) => 
                           S(49), SUM(48) => S(48), SUM(47) => S(47), SUM(46) 
                           => S(46), SUM(45) => S(45), SUM(44) => S(44), 
                           SUM(43) => S(43), SUM(42) => S(42), SUM(41) => S(41)
                           , SUM(40) => S(40), SUM(39) => S(39), SUM(38) => 
                           S(38), SUM(37) => S(37), SUM(36) => S(36), SUM(35) 
                           => S(35), SUM(34) => S(34), SUM(33) => S(33), 
                           SUM(32) => S(32), SUM(31) => S(31), SUM(30) => S(30)
                           , SUM(29) => S(29), SUM(28) => S(28), SUM(27) => 
                           S(27), SUM(26) => S(26), SUM(25) => S(25), SUM(24) 
                           => S(24), SUM(23) => S(23), SUM(22) => S(22), 
                           SUM(21) => S(21), SUM(20) => S(20), SUM(19) => S(19)
                           , SUM(18) => S(18), SUM(17) => S(17), SUM(16) => 
                           S(16), SUM(15) => S(15), SUM(14) => S(14), SUM(13) 
                           => S(13), SUM(12) => S(12), SUM(11) => S(11), 
                           SUM(10) => S(10), SUM(9) => S(9), SUM(8) => S(8), 
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1083);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT54 is

   port( A, B : in std_logic_vector (53 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (53 downto 0);  Co : out std_logic);

end RCA_NBIT54;

architecture SYN_DIRECT of RCA_NBIT54 is

   component RCA_NBIT54_DW01_add_0
      port( A, B : in std_logic_vector (53 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (53 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1084 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT54_DW01_add_0 port map( A(53) => A(53), A(52) => A(52), 
                           A(51) => A(51), A(50) => A(50), A(49) => A(49), 
                           A(48) => A(48), A(47) => A(47), A(46) => A(46), 
                           A(45) => A(45), A(44) => A(44), A(43) => A(43), 
                           A(42) => A(42), A(41) => A(41), A(40) => A(40), 
                           A(39) => A(39), A(38) => A(38), A(37) => A(37), 
                           A(36) => A(36), A(35) => A(35), A(34) => A(34), 
                           A(33) => A(33), A(32) => A(32), A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(53) => B(53), 
                           B(52) => B(52), B(51) => B(51), B(50) => B(50), 
                           B(49) => B(49), B(48) => B(48), B(47) => B(47), 
                           B(46) => B(46), B(45) => B(45), B(44) => B(44), 
                           B(43) => B(43), B(42) => B(42), B(41) => B(41), 
                           B(40) => B(40), B(39) => B(39), B(38) => B(38), 
                           B(37) => B(37), B(36) => B(36), B(35) => B(35), 
                           B(34) => B(34), B(33) => B(33), B(32) => B(32), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, SUM(53) => S(53), SUM(52) => S(52), 
                           SUM(51) => S(51), SUM(50) => S(50), SUM(49) => S(49)
                           , SUM(48) => S(48), SUM(47) => S(47), SUM(46) => 
                           S(46), SUM(45) => S(45), SUM(44) => S(44), SUM(43) 
                           => S(43), SUM(42) => S(42), SUM(41) => S(41), 
                           SUM(40) => S(40), SUM(39) => S(39), SUM(38) => S(38)
                           , SUM(37) => S(37), SUM(36) => S(36), SUM(35) => 
                           S(35), SUM(34) => S(34), SUM(33) => S(33), SUM(32) 
                           => S(32), SUM(31) => S(31), SUM(30) => S(30), 
                           SUM(29) => S(29), SUM(28) => S(28), SUM(27) => S(27)
                           , SUM(26) => S(26), SUM(25) => S(25), SUM(24) => 
                           S(24), SUM(23) => S(23), SUM(22) => S(22), SUM(21) 
                           => S(21), SUM(20) => S(20), SUM(19) => S(19), 
                           SUM(18) => S(18), SUM(17) => S(17), SUM(16) => S(16)
                           , SUM(15) => S(15), SUM(14) => S(14), SUM(13) => 
                           S(13), SUM(12) => S(12), SUM(11) => S(11), SUM(10) 
                           => S(10), SUM(9) => S(9), SUM(8) => S(8), SUM(7) => 
                           S(7), SUM(6) => S(6), SUM(5) => S(5), SUM(4) => S(4)
                           , SUM(3) => S(3), SUM(2) => S(2), SUM(1) => S(1), 
                           SUM(0) => S(0), CO => n_1084);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT52 is

   port( A, B : in std_logic_vector (51 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (51 downto 0);  Co : out std_logic);

end RCA_NBIT52;

architecture SYN_DIRECT of RCA_NBIT52 is

   component RCA_NBIT52_DW01_add_0
      port( A, B : in std_logic_vector (51 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (51 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1085 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT52_DW01_add_0 port map( A(51) => A(51), A(50) => A(50), 
                           A(49) => A(49), A(48) => A(48), A(47) => A(47), 
                           A(46) => A(46), A(45) => A(45), A(44) => A(44), 
                           A(43) => A(43), A(42) => A(42), A(41) => A(41), 
                           A(40) => A(40), A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(51) => B(51), B(50) => B(50), B(49) => B(49), 
                           B(48) => B(48), B(47) => B(47), B(46) => B(46), 
                           B(45) => B(45), B(44) => B(44), B(43) => B(43), 
                           B(42) => B(42), B(41) => B(41), B(40) => B(40), 
                           B(39) => B(39), B(38) => B(38), B(37) => B(37), 
                           B(36) => B(36), B(35) => B(35), B(34) => B(34), 
                           B(33) => B(33), B(32) => B(32), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, SUM(51) 
                           => S(51), SUM(50) => S(50), SUM(49) => S(49), 
                           SUM(48) => S(48), SUM(47) => S(47), SUM(46) => S(46)
                           , SUM(45) => S(45), SUM(44) => S(44), SUM(43) => 
                           S(43), SUM(42) => S(42), SUM(41) => S(41), SUM(40) 
                           => S(40), SUM(39) => S(39), SUM(38) => S(38), 
                           SUM(37) => S(37), SUM(36) => S(36), SUM(35) => S(35)
                           , SUM(34) => S(34), SUM(33) => S(33), SUM(32) => 
                           S(32), SUM(31) => S(31), SUM(30) => S(30), SUM(29) 
                           => S(29), SUM(28) => S(28), SUM(27) => S(27), 
                           SUM(26) => S(26), SUM(25) => S(25), SUM(24) => S(24)
                           , SUM(23) => S(23), SUM(22) => S(22), SUM(21) => 
                           S(21), SUM(20) => S(20), SUM(19) => S(19), SUM(18) 
                           => S(18), SUM(17) => S(17), SUM(16) => S(16), 
                           SUM(15) => S(15), SUM(14) => S(14), SUM(13) => S(13)
                           , SUM(12) => S(12), SUM(11) => S(11), SUM(10) => 
                           S(10), SUM(9) => S(9), SUM(8) => S(8), SUM(7) => 
                           S(7), SUM(6) => S(6), SUM(5) => S(5), SUM(4) => S(4)
                           , SUM(3) => S(3), SUM(2) => S(2), SUM(1) => S(1), 
                           SUM(0) => S(0), CO => n_1085);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT50 is

   port( A, B : in std_logic_vector (49 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (49 downto 0);  Co : out std_logic);

end RCA_NBIT50;

architecture SYN_DIRECT of RCA_NBIT50 is

   component RCA_NBIT50_DW01_add_0
      port( A, B : in std_logic_vector (49 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (49 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1086 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT50_DW01_add_0 port map( A(49) => A(49), A(48) => A(48), 
                           A(47) => A(47), A(46) => A(46), A(45) => A(45), 
                           A(44) => A(44), A(43) => A(43), A(42) => A(42), 
                           A(41) => A(41), A(40) => A(40), A(39) => A(39), 
                           A(38) => A(38), A(37) => A(37), A(36) => A(36), 
                           A(35) => A(35), A(34) => A(34), A(33) => A(33), 
                           A(32) => A(32), A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(49) => B(49), B(48) => B(48), 
                           B(47) => B(47), B(46) => B(46), B(45) => B(45), 
                           B(44) => B(44), B(43) => B(43), B(42) => B(42), 
                           B(41) => B(41), B(40) => B(40), B(39) => B(39), 
                           B(38) => B(38), B(37) => B(37), B(36) => B(36), 
                           B(35) => B(35), B(34) => B(34), B(33) => B(33), 
                           B(32) => B(32), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, SUM(49) => S(49), 
                           SUM(48) => S(48), SUM(47) => S(47), SUM(46) => S(46)
                           , SUM(45) => S(45), SUM(44) => S(44), SUM(43) => 
                           S(43), SUM(42) => S(42), SUM(41) => S(41), SUM(40) 
                           => S(40), SUM(39) => S(39), SUM(38) => S(38), 
                           SUM(37) => S(37), SUM(36) => S(36), SUM(35) => S(35)
                           , SUM(34) => S(34), SUM(33) => S(33), SUM(32) => 
                           S(32), SUM(31) => S(31), SUM(30) => S(30), SUM(29) 
                           => S(29), SUM(28) => S(28), SUM(27) => S(27), 
                           SUM(26) => S(26), SUM(25) => S(25), SUM(24) => S(24)
                           , SUM(23) => S(23), SUM(22) => S(22), SUM(21) => 
                           S(21), SUM(20) => S(20), SUM(19) => S(19), SUM(18) 
                           => S(18), SUM(17) => S(17), SUM(16) => S(16), 
                           SUM(15) => S(15), SUM(14) => S(14), SUM(13) => S(13)
                           , SUM(12) => S(12), SUM(11) => S(11), SUM(10) => 
                           S(10), SUM(9) => S(9), SUM(8) => S(8), SUM(7) => 
                           S(7), SUM(6) => S(6), SUM(5) => S(5), SUM(4) => S(4)
                           , SUM(3) => S(3), SUM(2) => S(2), SUM(1) => S(1), 
                           SUM(0) => S(0), CO => n_1086);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT48 is

   port( A, B : in std_logic_vector (47 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (47 downto 0);  Co : out std_logic);

end RCA_NBIT48;

architecture SYN_DIRECT of RCA_NBIT48 is

   component RCA_NBIT48_DW01_add_0
      port( A, B : in std_logic_vector (47 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (47 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1087 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT48_DW01_add_0 port map( A(47) => A(47), A(46) => A(46), 
                           A(45) => A(45), A(44) => A(44), A(43) => A(43), 
                           A(42) => A(42), A(41) => A(41), A(40) => A(40), 
                           A(39) => A(39), A(38) => A(38), A(37) => A(37), 
                           A(36) => A(36), A(35) => A(35), A(34) => A(34), 
                           A(33) => A(33), A(32) => A(32), A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(47) => B(47), 
                           B(46) => B(46), B(45) => B(45), B(44) => B(44), 
                           B(43) => B(43), B(42) => B(42), B(41) => B(41), 
                           B(40) => B(40), B(39) => B(39), B(38) => B(38), 
                           B(37) => B(37), B(36) => B(36), B(35) => B(35), 
                           B(34) => B(34), B(33) => B(33), B(32) => B(32), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, SUM(47) => S(47), SUM(46) => S(46), 
                           SUM(45) => S(45), SUM(44) => S(44), SUM(43) => S(43)
                           , SUM(42) => S(42), SUM(41) => S(41), SUM(40) => 
                           S(40), SUM(39) => S(39), SUM(38) => S(38), SUM(37) 
                           => S(37), SUM(36) => S(36), SUM(35) => S(35), 
                           SUM(34) => S(34), SUM(33) => S(33), SUM(32) => S(32)
                           , SUM(31) => S(31), SUM(30) => S(30), SUM(29) => 
                           S(29), SUM(28) => S(28), SUM(27) => S(27), SUM(26) 
                           => S(26), SUM(25) => S(25), SUM(24) => S(24), 
                           SUM(23) => S(23), SUM(22) => S(22), SUM(21) => S(21)
                           , SUM(20) => S(20), SUM(19) => S(19), SUM(18) => 
                           S(18), SUM(17) => S(17), SUM(16) => S(16), SUM(15) 
                           => S(15), SUM(14) => S(14), SUM(13) => S(13), 
                           SUM(12) => S(12), SUM(11) => S(11), SUM(10) => S(10)
                           , SUM(9) => S(9), SUM(8) => S(8), SUM(7) => S(7), 
                           SUM(6) => S(6), SUM(5) => S(5), SUM(4) => S(4), 
                           SUM(3) => S(3), SUM(2) => S(2), SUM(1) => S(1), 
                           SUM(0) => S(0), CO => n_1087);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT46 is

   port( A, B : in std_logic_vector (45 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (45 downto 0);  Co : out std_logic);

end RCA_NBIT46;

architecture SYN_DIRECT of RCA_NBIT46 is

   component RCA_NBIT46_DW01_add_0
      port( A, B : in std_logic_vector (45 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (45 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1088 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT46_DW01_add_0 port map( A(45) => A(45), A(44) => A(44), 
                           A(43) => A(43), A(42) => A(42), A(41) => A(41), 
                           A(40) => A(40), A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(45) => B(45), B(44) => B(44), B(43) => B(43), 
                           B(42) => B(42), B(41) => B(41), B(40) => B(40), 
                           B(39) => B(39), B(38) => B(38), B(37) => B(37), 
                           B(36) => B(36), B(35) => B(35), B(34) => B(34), 
                           B(33) => B(33), B(32) => B(32), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, SUM(45) 
                           => S(45), SUM(44) => S(44), SUM(43) => S(43), 
                           SUM(42) => S(42), SUM(41) => S(41), SUM(40) => S(40)
                           , SUM(39) => S(39), SUM(38) => S(38), SUM(37) => 
                           S(37), SUM(36) => S(36), SUM(35) => S(35), SUM(34) 
                           => S(34), SUM(33) => S(33), SUM(32) => S(32), 
                           SUM(31) => S(31), SUM(30) => S(30), SUM(29) => S(29)
                           , SUM(28) => S(28), SUM(27) => S(27), SUM(26) => 
                           S(26), SUM(25) => S(25), SUM(24) => S(24), SUM(23) 
                           => S(23), SUM(22) => S(22), SUM(21) => S(21), 
                           SUM(20) => S(20), SUM(19) => S(19), SUM(18) => S(18)
                           , SUM(17) => S(17), SUM(16) => S(16), SUM(15) => 
                           S(15), SUM(14) => S(14), SUM(13) => S(13), SUM(12) 
                           => S(12), SUM(11) => S(11), SUM(10) => S(10), SUM(9)
                           => S(9), SUM(8) => S(8), SUM(7) => S(7), SUM(6) => 
                           S(6), SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3)
                           , SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO
                           => n_1088);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT44 is

   port( A, B : in std_logic_vector (43 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (43 downto 0);  Co : out std_logic);

end RCA_NBIT44;

architecture SYN_DIRECT of RCA_NBIT44 is

   component RCA_NBIT44_DW01_add_0
      port( A, B : in std_logic_vector (43 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (43 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1089 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT44_DW01_add_0 port map( A(43) => A(43), A(42) => A(42), 
                           A(41) => A(41), A(40) => A(40), A(39) => A(39), 
                           A(38) => A(38), A(37) => A(37), A(36) => A(36), 
                           A(35) => A(35), A(34) => A(34), A(33) => A(33), 
                           A(32) => A(32), A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(43) => B(43), B(42) => B(42), 
                           B(41) => B(41), B(40) => B(40), B(39) => B(39), 
                           B(38) => B(38), B(37) => B(37), B(36) => B(36), 
                           B(35) => B(35), B(34) => B(34), B(33) => B(33), 
                           B(32) => B(32), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, SUM(43) => S(43), 
                           SUM(42) => S(42), SUM(41) => S(41), SUM(40) => S(40)
                           , SUM(39) => S(39), SUM(38) => S(38), SUM(37) => 
                           S(37), SUM(36) => S(36), SUM(35) => S(35), SUM(34) 
                           => S(34), SUM(33) => S(33), SUM(32) => S(32), 
                           SUM(31) => S(31), SUM(30) => S(30), SUM(29) => S(29)
                           , SUM(28) => S(28), SUM(27) => S(27), SUM(26) => 
                           S(26), SUM(25) => S(25), SUM(24) => S(24), SUM(23) 
                           => S(23), SUM(22) => S(22), SUM(21) => S(21), 
                           SUM(20) => S(20), SUM(19) => S(19), SUM(18) => S(18)
                           , SUM(17) => S(17), SUM(16) => S(16), SUM(15) => 
                           S(15), SUM(14) => S(14), SUM(13) => S(13), SUM(12) 
                           => S(12), SUM(11) => S(11), SUM(10) => S(10), SUM(9)
                           => S(9), SUM(8) => S(8), SUM(7) => S(7), SUM(6) => 
                           S(6), SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3)
                           , SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO
                           => n_1089);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT42 is

   port( A, B : in std_logic_vector (41 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (41 downto 0);  Co : out std_logic);

end RCA_NBIT42;

architecture SYN_DIRECT of RCA_NBIT42 is

   component RCA_NBIT42_DW01_add_0
      port( A, B : in std_logic_vector (41 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (41 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1090 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT42_DW01_add_0 port map( A(41) => A(41), A(40) => A(40), 
                           A(39) => A(39), A(38) => A(38), A(37) => A(37), 
                           A(36) => A(36), A(35) => A(35), A(34) => A(34), 
                           A(33) => A(33), A(32) => A(32), A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(41) => B(41), 
                           B(40) => B(40), B(39) => B(39), B(38) => B(38), 
                           B(37) => B(37), B(36) => B(36), B(35) => B(35), 
                           B(34) => B(34), B(33) => B(33), B(32) => B(32), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, SUM(41) => S(41), SUM(40) => S(40), 
                           SUM(39) => S(39), SUM(38) => S(38), SUM(37) => S(37)
                           , SUM(36) => S(36), SUM(35) => S(35), SUM(34) => 
                           S(34), SUM(33) => S(33), SUM(32) => S(32), SUM(31) 
                           => S(31), SUM(30) => S(30), SUM(29) => S(29), 
                           SUM(28) => S(28), SUM(27) => S(27), SUM(26) => S(26)
                           , SUM(25) => S(25), SUM(24) => S(24), SUM(23) => 
                           S(23), SUM(22) => S(22), SUM(21) => S(21), SUM(20) 
                           => S(20), SUM(19) => S(19), SUM(18) => S(18), 
                           SUM(17) => S(17), SUM(16) => S(16), SUM(15) => S(15)
                           , SUM(14) => S(14), SUM(13) => S(13), SUM(12) => 
                           S(12), SUM(11) => S(11), SUM(10) => S(10), SUM(9) =>
                           S(9), SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6)
                           , SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1090);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT40 is

   port( A, B : in std_logic_vector (39 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (39 downto 0);  Co : out std_logic);

end RCA_NBIT40;

architecture SYN_DIRECT of RCA_NBIT40 is

   component RCA_NBIT40_DW01_add_0
      port( A, B : in std_logic_vector (39 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (39 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1091 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT40_DW01_add_0 port map( A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(39) => B(39), B(38) => B(38), B(37) => B(37), 
                           B(36) => B(36), B(35) => B(35), B(34) => B(34), 
                           B(33) => B(33), B(32) => B(32), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, SUM(39) 
                           => S(39), SUM(38) => S(38), SUM(37) => S(37), 
                           SUM(36) => S(36), SUM(35) => S(35), SUM(34) => S(34)
                           , SUM(33) => S(33), SUM(32) => S(32), SUM(31) => 
                           S(31), SUM(30) => S(30), SUM(29) => S(29), SUM(28) 
                           => S(28), SUM(27) => S(27), SUM(26) => S(26), 
                           SUM(25) => S(25), SUM(24) => S(24), SUM(23) => S(23)
                           , SUM(22) => S(22), SUM(21) => S(21), SUM(20) => 
                           S(20), SUM(19) => S(19), SUM(18) => S(18), SUM(17) 
                           => S(17), SUM(16) => S(16), SUM(15) => S(15), 
                           SUM(14) => S(14), SUM(13) => S(13), SUM(12) => S(12)
                           , SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9)
                           , SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1091);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT38 is

   port( A, B : in std_logic_vector (37 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (37 downto 0);  Co : out std_logic);

end RCA_NBIT38;

architecture SYN_DIRECT of RCA_NBIT38 is

   component RCA_NBIT38_DW01_add_0
      port( A, B : in std_logic_vector (37 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (37 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1092 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT38_DW01_add_0 port map( A(37) => A(37), A(36) => A(36), 
                           A(35) => A(35), A(34) => A(34), A(33) => A(33), 
                           A(32) => A(32), A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(37) => B(37), B(36) => B(36), 
                           B(35) => B(35), B(34) => B(34), B(33) => B(33), 
                           B(32) => B(32), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, SUM(37) => S(37), 
                           SUM(36) => S(36), SUM(35) => S(35), SUM(34) => S(34)
                           , SUM(33) => S(33), SUM(32) => S(32), SUM(31) => 
                           S(31), SUM(30) => S(30), SUM(29) => S(29), SUM(28) 
                           => S(28), SUM(27) => S(27), SUM(26) => S(26), 
                           SUM(25) => S(25), SUM(24) => S(24), SUM(23) => S(23)
                           , SUM(22) => S(22), SUM(21) => S(21), SUM(20) => 
                           S(20), SUM(19) => S(19), SUM(18) => S(18), SUM(17) 
                           => S(17), SUM(16) => S(16), SUM(15) => S(15), 
                           SUM(14) => S(14), SUM(13) => S(13), SUM(12) => S(12)
                           , SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9)
                           , SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1092);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity RCA_NBIT36 is

   port( A, B : in std_logic_vector (35 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (35 downto 0);  Co : out std_logic);

end RCA_NBIT36;

architecture SYN_DIRECT of RCA_NBIT36 is

   component RCA_NBIT36_DW01_add_0
      port( A, B : in std_logic_vector (35 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (35 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1093 : std_logic;

begin
   
   Co <= '0';
   n1 <= '0';
   add_95 : RCA_NBIT36_DW01_add_0 port map( A(35) => A(35), A(34) => A(34), 
                           A(33) => A(33), A(32) => A(32), A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(35) => B(35), 
                           B(34) => B(34), B(33) => B(33), B(32) => B(32), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, SUM(35) => S(35), SUM(34) => S(34), 
                           SUM(33) => S(33), SUM(32) => S(32), SUM(31) => S(31)
                           , SUM(30) => S(30), SUM(29) => S(29), SUM(28) => 
                           S(28), SUM(27) => S(27), SUM(26) => S(26), SUM(25) 
                           => S(25), SUM(24) => S(24), SUM(23) => S(23), 
                           SUM(22) => S(22), SUM(21) => S(21), SUM(20) => S(20)
                           , SUM(19) => S(19), SUM(18) => S(18), SUM(17) => 
                           S(17), SUM(16) => S(16), SUM(15) => S(15), SUM(14) 
                           => S(14), SUM(13) => S(13), SUM(12) => S(12), 
                           SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9), 
                           SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1093);

end SYN_DIRECT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT64_i30 is

   port( A_s, A_ns, B : in std_logic_vector (63 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (63 downto 0));

end BOOTHENC_NBIT64_i30;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT64_i30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_63_port, O_62_port, O_61_port, O_60_port, O_59_port,
      O_58_port, O_57_port, O_56_port, O_55_port, O_54_port, O_53_port, 
      O_52_port, O_51_port, O_50_port, O_49_port, O_48_port, O_47_port, 
      O_46_port, O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, 
      O_40_port, O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, 
      O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, 
      O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, 
      O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, 
      O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, 
      O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, 
      O_3_port, O_2_port, O_1_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, 
      n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83
      , n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
      n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, 
      n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, 
      n194, n195 : std_logic;

begin
   O <= ( O_63_port, O_62_port, O_61_port, O_60_port, O_59_port, O_58_port, 
      O_57_port, O_56_port, O_55_port, O_54_port, O_53_port, O_52_port, 
      O_51_port, O_50_port, O_49_port, O_48_port, O_47_port, O_46_port, 
      O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, 
      O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, 
      O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, 
      O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(61), A_s(60), A_s(59), A_s(58), A_s(57), A_s(56), A_s(55), 
      A_s(54), A_s(53), A_s(52), A_s(51), A_s(50), A_s(49), A_s(48), A_s(47), 
      A_s(46), A_s(45), A_s(44), A_s(43), A_s(42), A_s(41), A_s(40), A_s(39), 
      A_s(38), A_s(37), A_s(36), A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), 
      A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), 
      A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), 
      A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), 
      A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, 
      X_Logic0_port );
   A_nso <= ( A_ns(61), A_ns(60), A_ns(59), A_ns(58), A_ns(57), A_ns(56), 
      A_ns(55), A_ns(54), A_ns(53), A_ns(52), A_ns(51), A_ns(50), A_ns(49), 
      A_ns(48), A_ns(47), A_ns(46), A_ns(45), A_ns(44), A_ns(43), A_ns(42), 
      A_ns(41), A_ns(40), A_ns(39), A_ns(38), A_ns(37), A_ns(36), A_ns(35), 
      A_ns(34), A_ns(33), A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), 
      A_ns(27), A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), 
      A_ns(20), A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), 
      A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), 
      A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), 
      X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : AND3_X1 port map( A1 => B(30), A2 => n195, A3 => B(29), ZN => n1);
   U3 : INV_X4 port map( A => n1, ZN => n2);
   U4 : INV_X4 port map( A => n162, ZN => n8);
   U5 : INV_X4 port map( A => n163, ZN => n7);
   U6 : OR3_X4 port map( A1 => B(29), A2 => B(30), A3 => n195, ZN => n3);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n2, C2 => n5, A => n6, ZN
                           => O_9_port);
   U8 : AOI22_X1 port map( A1 => A_ns(8), A2 => n7, B1 => A_s(8), B2 => n8, ZN 
                           => n6);
   U9 : INV_X1 port map( A => A_s(7), ZN => n5);
   U10 : INV_X1 port map( A => A_ns(7), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n2, C2 => n10, A => n11,
                           ZN => O_8_port);
   U12 : AOI22_X1 port map( A1 => A_ns(7), A2 => n7, B1 => A_s(7), B2 => n8, ZN
                           => n11);
   U13 : INV_X1 port map( A => A_s(6), ZN => n10);
   U14 : INV_X1 port map( A => A_ns(6), ZN => n9);
   U15 : OAI221_X1 port map( B1 => n3, B2 => n12, C1 => n2, C2 => n13, A => n14
                           , ZN => O_7_port);
   U16 : AOI22_X1 port map( A1 => A_ns(6), A2 => n7, B1 => A_s(6), B2 => n8, ZN
                           => n14);
   U17 : INV_X1 port map( A => A_s(5), ZN => n13);
   U18 : INV_X1 port map( A => A_ns(5), ZN => n12);
   U19 : OAI221_X1 port map( B1 => n3, B2 => n15, C1 => n2, C2 => n16, A => n17
                           , ZN => O_6_port);
   U20 : AOI22_X1 port map( A1 => A_ns(5), A2 => n7, B1 => A_s(5), B2 => n8, ZN
                           => n17);
   U21 : INV_X1 port map( A => A_s(4), ZN => n16);
   U22 : INV_X1 port map( A => A_ns(4), ZN => n15);
   U23 : OAI221_X1 port map( B1 => n3, B2 => n18, C1 => n2, C2 => n19, A => n20
                           , ZN => O_63_port);
   U24 : AOI22_X1 port map( A1 => A_ns(62), A2 => n7, B1 => A_s(62), B2 => n8, 
                           ZN => n20);
   U25 : INV_X1 port map( A => A_s(61), ZN => n19);
   U26 : INV_X1 port map( A => A_ns(61), ZN => n18);
   U27 : OAI221_X1 port map( B1 => n3, B2 => n21, C1 => n2, C2 => n22, A => n23
                           , ZN => O_62_port);
   U28 : AOI22_X1 port map( A1 => A_ns(61), A2 => n7, B1 => A_s(61), B2 => n8, 
                           ZN => n23);
   U29 : INV_X1 port map( A => A_s(60), ZN => n22);
   U30 : INV_X1 port map( A => A_ns(60), ZN => n21);
   U31 : OAI221_X1 port map( B1 => n3, B2 => n24, C1 => n2, C2 => n25, A => n26
                           , ZN => O_61_port);
   U32 : AOI22_X1 port map( A1 => A_ns(60), A2 => n7, B1 => A_s(60), B2 => n8, 
                           ZN => n26);
   U33 : INV_X1 port map( A => A_s(59), ZN => n25);
   U34 : INV_X1 port map( A => A_ns(59), ZN => n24);
   U35 : OAI221_X1 port map( B1 => n3, B2 => n27, C1 => n2, C2 => n28, A => n29
                           , ZN => O_60_port);
   U36 : AOI22_X1 port map( A1 => A_ns(59), A2 => n7, B1 => A_s(59), B2 => n8, 
                           ZN => n29);
   U37 : INV_X1 port map( A => A_s(58), ZN => n28);
   U38 : INV_X1 port map( A => A_ns(58), ZN => n27);
   U39 : OAI221_X1 port map( B1 => n3, B2 => n30, C1 => n2, C2 => n31, A => n32
                           , ZN => O_5_port);
   U40 : AOI22_X1 port map( A1 => A_ns(4), A2 => n7, B1 => A_s(4), B2 => n8, ZN
                           => n32);
   U41 : INV_X1 port map( A => A_s(3), ZN => n31);
   U42 : INV_X1 port map( A => A_ns(3), ZN => n30);
   U43 : OAI221_X1 port map( B1 => n3, B2 => n33, C1 => n2, C2 => n34, A => n35
                           , ZN => O_59_port);
   U44 : AOI22_X1 port map( A1 => A_ns(58), A2 => n7, B1 => A_s(58), B2 => n8, 
                           ZN => n35);
   U45 : INV_X1 port map( A => A_s(57), ZN => n34);
   U46 : INV_X1 port map( A => A_ns(57), ZN => n33);
   U47 : OAI221_X1 port map( B1 => n3, B2 => n36, C1 => n2, C2 => n37, A => n38
                           , ZN => O_58_port);
   U48 : AOI22_X1 port map( A1 => A_ns(57), A2 => n7, B1 => A_s(57), B2 => n8, 
                           ZN => n38);
   U49 : INV_X1 port map( A => A_s(56), ZN => n37);
   U50 : INV_X1 port map( A => A_ns(56), ZN => n36);
   U51 : OAI221_X1 port map( B1 => n3, B2 => n39, C1 => n2, C2 => n40, A => n41
                           , ZN => O_57_port);
   U52 : AOI22_X1 port map( A1 => A_ns(56), A2 => n7, B1 => A_s(56), B2 => n8, 
                           ZN => n41);
   U53 : INV_X1 port map( A => A_s(55), ZN => n40);
   U54 : INV_X1 port map( A => A_ns(55), ZN => n39);
   U55 : OAI221_X1 port map( B1 => n3, B2 => n42, C1 => n2, C2 => n43, A => n44
                           , ZN => O_56_port);
   U56 : AOI22_X1 port map( A1 => A_ns(55), A2 => n7, B1 => A_s(55), B2 => n8, 
                           ZN => n44);
   U57 : INV_X1 port map( A => A_s(54), ZN => n43);
   U58 : INV_X1 port map( A => A_ns(54), ZN => n42);
   U59 : OAI221_X1 port map( B1 => n3, B2 => n45, C1 => n2, C2 => n46, A => n47
                           , ZN => O_55_port);
   U60 : AOI22_X1 port map( A1 => A_ns(54), A2 => n7, B1 => A_s(54), B2 => n8, 
                           ZN => n47);
   U61 : INV_X1 port map( A => A_s(53), ZN => n46);
   U62 : INV_X1 port map( A => A_ns(53), ZN => n45);
   U63 : OAI221_X1 port map( B1 => n3, B2 => n48, C1 => n2, C2 => n49, A => n50
                           , ZN => O_54_port);
   U64 : AOI22_X1 port map( A1 => A_ns(53), A2 => n7, B1 => A_s(53), B2 => n8, 
                           ZN => n50);
   U65 : INV_X1 port map( A => A_s(52), ZN => n49);
   U66 : INV_X1 port map( A => A_ns(52), ZN => n48);
   U67 : OAI221_X1 port map( B1 => n3, B2 => n51, C1 => n2, C2 => n52, A => n53
                           , ZN => O_53_port);
   U68 : AOI22_X1 port map( A1 => A_ns(52), A2 => n7, B1 => A_s(52), B2 => n8, 
                           ZN => n53);
   U69 : INV_X1 port map( A => A_s(51), ZN => n52);
   U70 : INV_X1 port map( A => A_ns(51), ZN => n51);
   U71 : OAI221_X1 port map( B1 => n3, B2 => n54, C1 => n2, C2 => n55, A => n56
                           , ZN => O_52_port);
   U72 : AOI22_X1 port map( A1 => A_ns(51), A2 => n7, B1 => A_s(51), B2 => n8, 
                           ZN => n56);
   U73 : INV_X1 port map( A => A_s(50), ZN => n55);
   U74 : INV_X1 port map( A => A_ns(50), ZN => n54);
   U75 : OAI221_X1 port map( B1 => n3, B2 => n57, C1 => n2, C2 => n58, A => n59
                           , ZN => O_51_port);
   U76 : AOI22_X1 port map( A1 => A_ns(50), A2 => n7, B1 => A_s(50), B2 => n8, 
                           ZN => n59);
   U77 : INV_X1 port map( A => A_s(49), ZN => n58);
   U78 : INV_X1 port map( A => A_ns(49), ZN => n57);
   U79 : OAI221_X1 port map( B1 => n3, B2 => n60, C1 => n2, C2 => n61, A => n62
                           , ZN => O_50_port);
   U80 : AOI22_X1 port map( A1 => A_ns(49), A2 => n7, B1 => A_s(49), B2 => n8, 
                           ZN => n62);
   U81 : INV_X1 port map( A => A_s(48), ZN => n61);
   U82 : INV_X1 port map( A => A_ns(48), ZN => n60);
   U83 : OAI221_X1 port map( B1 => n3, B2 => n63, C1 => n2, C2 => n64, A => n65
                           , ZN => O_4_port);
   U84 : AOI22_X1 port map( A1 => A_ns(3), A2 => n7, B1 => A_s(3), B2 => n8, ZN
                           => n65);
   U85 : INV_X1 port map( A => A_s(2), ZN => n64);
   U86 : INV_X1 port map( A => A_ns(2), ZN => n63);
   U87 : OAI221_X1 port map( B1 => n3, B2 => n66, C1 => n2, C2 => n67, A => n68
                           , ZN => O_49_port);
   U88 : AOI22_X1 port map( A1 => A_ns(48), A2 => n7, B1 => A_s(48), B2 => n8, 
                           ZN => n68);
   U89 : INV_X1 port map( A => A_s(47), ZN => n67);
   U90 : INV_X1 port map( A => A_ns(47), ZN => n66);
   U91 : OAI221_X1 port map( B1 => n3, B2 => n69, C1 => n2, C2 => n70, A => n71
                           , ZN => O_48_port);
   U92 : AOI22_X1 port map( A1 => A_ns(47), A2 => n7, B1 => A_s(47), B2 => n8, 
                           ZN => n71);
   U93 : INV_X1 port map( A => A_s(46), ZN => n70);
   U94 : INV_X1 port map( A => A_ns(46), ZN => n69);
   U95 : OAI221_X1 port map( B1 => n3, B2 => n72, C1 => n2, C2 => n73, A => n74
                           , ZN => O_47_port);
   U96 : AOI22_X1 port map( A1 => A_ns(46), A2 => n7, B1 => A_s(46), B2 => n8, 
                           ZN => n74);
   U97 : INV_X1 port map( A => A_s(45), ZN => n73);
   U98 : INV_X1 port map( A => A_ns(45), ZN => n72);
   U99 : OAI221_X1 port map( B1 => n3, B2 => n75, C1 => n2, C2 => n76, A => n77
                           , ZN => O_46_port);
   U100 : AOI22_X1 port map( A1 => A_ns(45), A2 => n7, B1 => A_s(45), B2 => n8,
                           ZN => n77);
   U101 : INV_X1 port map( A => A_s(44), ZN => n76);
   U102 : INV_X1 port map( A => A_ns(44), ZN => n75);
   U103 : OAI221_X1 port map( B1 => n3, B2 => n78, C1 => n2, C2 => n79, A => 
                           n80, ZN => O_45_port);
   U104 : AOI22_X1 port map( A1 => A_ns(44), A2 => n7, B1 => A_s(44), B2 => n8,
                           ZN => n80);
   U105 : INV_X1 port map( A => A_s(43), ZN => n79);
   U106 : INV_X1 port map( A => A_ns(43), ZN => n78);
   U107 : OAI221_X1 port map( B1 => n3, B2 => n81, C1 => n2, C2 => n82, A => 
                           n83, ZN => O_44_port);
   U108 : AOI22_X1 port map( A1 => A_ns(43), A2 => n7, B1 => A_s(43), B2 => n8,
                           ZN => n83);
   U109 : INV_X1 port map( A => A_s(42), ZN => n82);
   U110 : INV_X1 port map( A => A_ns(42), ZN => n81);
   U111 : OAI221_X1 port map( B1 => n3, B2 => n84, C1 => n2, C2 => n85, A => 
                           n86, ZN => O_43_port);
   U112 : AOI22_X1 port map( A1 => A_ns(42), A2 => n7, B1 => A_s(42), B2 => n8,
                           ZN => n86);
   U113 : INV_X1 port map( A => A_s(41), ZN => n85);
   U114 : INV_X1 port map( A => A_ns(41), ZN => n84);
   U115 : OAI221_X1 port map( B1 => n3, B2 => n87, C1 => n2, C2 => n88, A => 
                           n89, ZN => O_42_port);
   U116 : AOI22_X1 port map( A1 => A_ns(41), A2 => n7, B1 => A_s(41), B2 => n8,
                           ZN => n89);
   U117 : INV_X1 port map( A => A_s(40), ZN => n88);
   U118 : INV_X1 port map( A => A_ns(40), ZN => n87);
   U119 : OAI221_X1 port map( B1 => n3, B2 => n90, C1 => n2, C2 => n91, A => 
                           n92, ZN => O_41_port);
   U120 : AOI22_X1 port map( A1 => A_ns(40), A2 => n7, B1 => A_s(40), B2 => n8,
                           ZN => n92);
   U121 : INV_X1 port map( A => A_s(39), ZN => n91);
   U122 : INV_X1 port map( A => A_ns(39), ZN => n90);
   U123 : OAI221_X1 port map( B1 => n3, B2 => n93, C1 => n2, C2 => n94, A => 
                           n95, ZN => O_40_port);
   U124 : AOI22_X1 port map( A1 => A_ns(39), A2 => n7, B1 => A_s(39), B2 => n8,
                           ZN => n95);
   U125 : INV_X1 port map( A => A_s(38), ZN => n94);
   U126 : INV_X1 port map( A => A_ns(38), ZN => n93);
   U127 : OAI221_X1 port map( B1 => n3, B2 => n96, C1 => n2, C2 => n97, A => 
                           n98, ZN => O_3_port);
   U128 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n98);
   U129 : INV_X1 port map( A => A_s(1), ZN => n97);
   U130 : INV_X1 port map( A => A_ns(1), ZN => n96);
   U131 : OAI221_X1 port map( B1 => n3, B2 => n99, C1 => n2, C2 => n100, A => 
                           n101, ZN => O_39_port);
   U132 : AOI22_X1 port map( A1 => A_ns(38), A2 => n7, B1 => A_s(38), B2 => n8,
                           ZN => n101);
   U133 : INV_X1 port map( A => A_s(37), ZN => n100);
   U134 : INV_X1 port map( A => A_ns(37), ZN => n99);
   U135 : OAI221_X1 port map( B1 => n3, B2 => n102, C1 => n2, C2 => n103, A => 
                           n104, ZN => O_38_port);
   U136 : AOI22_X1 port map( A1 => A_ns(37), A2 => n7, B1 => A_s(37), B2 => n8,
                           ZN => n104);
   U137 : INV_X1 port map( A => A_s(36), ZN => n103);
   U138 : INV_X1 port map( A => A_ns(36), ZN => n102);
   U139 : OAI221_X1 port map( B1 => n3, B2 => n105, C1 => n2, C2 => n106, A => 
                           n107, ZN => O_37_port);
   U140 : AOI22_X1 port map( A1 => A_ns(36), A2 => n7, B1 => A_s(36), B2 => n8,
                           ZN => n107);
   U141 : INV_X1 port map( A => A_s(35), ZN => n106);
   U142 : INV_X1 port map( A => A_ns(35), ZN => n105);
   U143 : OAI221_X1 port map( B1 => n3, B2 => n108, C1 => n2, C2 => n109, A => 
                           n110, ZN => O_36_port);
   U144 : AOI22_X1 port map( A1 => A_ns(35), A2 => n7, B1 => A_s(35), B2 => n8,
                           ZN => n110);
   U145 : INV_X1 port map( A => A_s(34), ZN => n109);
   U146 : INV_X1 port map( A => A_ns(34), ZN => n108);
   U147 : OAI221_X1 port map( B1 => n3, B2 => n111, C1 => n2, C2 => n112, A => 
                           n113, ZN => O_35_port);
   U148 : AOI22_X1 port map( A1 => A_ns(34), A2 => n7, B1 => A_s(34), B2 => n8,
                           ZN => n113);
   U149 : INV_X1 port map( A => A_s(33), ZN => n112);
   U150 : INV_X1 port map( A => A_ns(33), ZN => n111);
   U151 : OAI221_X1 port map( B1 => n3, B2 => n114, C1 => n2, C2 => n115, A => 
                           n116, ZN => O_34_port);
   U152 : AOI22_X1 port map( A1 => A_ns(33), A2 => n7, B1 => A_s(33), B2 => n8,
                           ZN => n116);
   U153 : INV_X1 port map( A => A_s(32), ZN => n115);
   U154 : INV_X1 port map( A => A_ns(32), ZN => n114);
   U155 : OAI221_X1 port map( B1 => n3, B2 => n117, C1 => n2, C2 => n118, A => 
                           n119, ZN => O_33_port);
   U156 : AOI22_X1 port map( A1 => A_ns(32), A2 => n7, B1 => A_s(32), B2 => n8,
                           ZN => n119);
   U157 : INV_X1 port map( A => A_s(31), ZN => n118);
   U158 : INV_X1 port map( A => A_ns(31), ZN => n117);
   U159 : OAI221_X1 port map( B1 => n3, B2 => n120, C1 => n2, C2 => n121, A => 
                           n122, ZN => O_32_port);
   U160 : AOI22_X1 port map( A1 => A_ns(31), A2 => n7, B1 => A_s(31), B2 => n8,
                           ZN => n122);
   U161 : INV_X1 port map( A => A_s(30), ZN => n121);
   U162 : INV_X1 port map( A => A_ns(30), ZN => n120);
   U163 : OAI221_X1 port map( B1 => n3, B2 => n123, C1 => n2, C2 => n124, A => 
                           n125, ZN => O_31_port);
   U164 : AOI22_X1 port map( A1 => A_ns(30), A2 => n7, B1 => A_s(30), B2 => n8,
                           ZN => n125);
   U165 : INV_X1 port map( A => A_s(29), ZN => n124);
   U166 : INV_X1 port map( A => A_ns(29), ZN => n123);
   U167 : OAI221_X1 port map( B1 => n3, B2 => n126, C1 => n2, C2 => n127, A => 
                           n128, ZN => O_30_port);
   U168 : AOI22_X1 port map( A1 => A_ns(29), A2 => n7, B1 => A_s(29), B2 => n8,
                           ZN => n128);
   U169 : INV_X1 port map( A => A_s(28), ZN => n127);
   U170 : INV_X1 port map( A => A_ns(28), ZN => n126);
   U171 : OAI221_X1 port map( B1 => n3, B2 => n129, C1 => n2, C2 => n130, A => 
                           n131, ZN => O_2_port);
   U172 : AOI22_X1 port map( A1 => A_ns(1), A2 => n7, B1 => A_s(1), B2 => n8, 
                           ZN => n131);
   U173 : OAI221_X1 port map( B1 => n3, B2 => n132, C1 => n2, C2 => n133, A => 
                           n134, ZN => O_29_port);
   U174 : AOI22_X1 port map( A1 => A_ns(28), A2 => n7, B1 => A_s(28), B2 => n8,
                           ZN => n134);
   U175 : INV_X1 port map( A => A_s(27), ZN => n133);
   U176 : INV_X1 port map( A => A_ns(27), ZN => n132);
   U177 : OAI221_X1 port map( B1 => n3, B2 => n135, C1 => n2, C2 => n136, A => 
                           n137, ZN => O_28_port);
   U178 : AOI22_X1 port map( A1 => A_ns(27), A2 => n7, B1 => A_s(27), B2 => n8,
                           ZN => n137);
   U179 : INV_X1 port map( A => A_s(26), ZN => n136);
   U180 : INV_X1 port map( A => A_ns(26), ZN => n135);
   U181 : OAI221_X1 port map( B1 => n3, B2 => n138, C1 => n2, C2 => n139, A => 
                           n140, ZN => O_27_port);
   U182 : AOI22_X1 port map( A1 => A_ns(26), A2 => n7, B1 => A_s(26), B2 => n8,
                           ZN => n140);
   U183 : INV_X1 port map( A => A_s(25), ZN => n139);
   U184 : INV_X1 port map( A => A_ns(25), ZN => n138);
   U185 : OAI221_X1 port map( B1 => n3, B2 => n141, C1 => n2, C2 => n142, A => 
                           n143, ZN => O_26_port);
   U186 : AOI22_X1 port map( A1 => A_ns(25), A2 => n7, B1 => A_s(25), B2 => n8,
                           ZN => n143);
   U187 : INV_X1 port map( A => A_s(24), ZN => n142);
   U188 : INV_X1 port map( A => A_ns(24), ZN => n141);
   U189 : OAI221_X1 port map( B1 => n3, B2 => n144, C1 => n2, C2 => n145, A => 
                           n146, ZN => O_25_port);
   U190 : AOI22_X1 port map( A1 => A_ns(24), A2 => n7, B1 => A_s(24), B2 => n8,
                           ZN => n146);
   U191 : INV_X1 port map( A => A_s(23), ZN => n145);
   U192 : INV_X1 port map( A => A_ns(23), ZN => n144);
   U193 : OAI221_X1 port map( B1 => n3, B2 => n147, C1 => n2, C2 => n148, A => 
                           n149, ZN => O_24_port);
   U194 : AOI22_X1 port map( A1 => A_ns(23), A2 => n7, B1 => A_s(23), B2 => n8,
                           ZN => n149);
   U195 : INV_X1 port map( A => A_s(22), ZN => n148);
   U196 : INV_X1 port map( A => A_ns(22), ZN => n147);
   U197 : OAI221_X1 port map( B1 => n3, B2 => n150, C1 => n2, C2 => n151, A => 
                           n152, ZN => O_23_port);
   U198 : AOI22_X1 port map( A1 => A_ns(22), A2 => n7, B1 => A_s(22), B2 => n8,
                           ZN => n152);
   U199 : INV_X1 port map( A => A_s(21), ZN => n151);
   U200 : INV_X1 port map( A => A_ns(21), ZN => n150);
   U201 : OAI221_X1 port map( B1 => n3, B2 => n153, C1 => n2, C2 => n154, A => 
                           n155, ZN => O_22_port);
   U202 : AOI22_X1 port map( A1 => A_ns(21), A2 => n7, B1 => A_s(21), B2 => n8,
                           ZN => n155);
   U203 : INV_X1 port map( A => A_s(20), ZN => n154);
   U204 : INV_X1 port map( A => A_ns(20), ZN => n153);
   U205 : OAI221_X1 port map( B1 => n3, B2 => n156, C1 => n2, C2 => n157, A => 
                           n158, ZN => O_21_port);
   U206 : AOI22_X1 port map( A1 => A_ns(20), A2 => n7, B1 => A_s(20), B2 => n8,
                           ZN => n158);
   U207 : INV_X1 port map( A => A_s(19), ZN => n157);
   U208 : INV_X1 port map( A => A_ns(19), ZN => n156);
   U209 : OAI221_X1 port map( B1 => n3, B2 => n159, C1 => n2, C2 => n160, A => 
                           n161, ZN => O_20_port);
   U210 : AOI22_X1 port map( A1 => A_ns(19), A2 => n7, B1 => A_s(19), B2 => n8,
                           ZN => n161);
   U211 : INV_X1 port map( A => A_s(18), ZN => n160);
   U212 : INV_X1 port map( A => A_ns(18), ZN => n159);
   U213 : OAI22_X1 port map( A1 => n162, A2 => n130, B1 => n163, B2 => n129, ZN
                           => O_1_port);
   U214 : INV_X1 port map( A => A_ns(0), ZN => n129);
   U215 : INV_X1 port map( A => A_s(0), ZN => n130);
   U216 : OAI221_X1 port map( B1 => n3, B2 => n164, C1 => n2, C2 => n165, A => 
                           n166, ZN => O_19_port);
   U217 : AOI22_X1 port map( A1 => A_ns(18), A2 => n7, B1 => A_s(18), B2 => n8,
                           ZN => n166);
   U218 : INV_X1 port map( A => A_s(17), ZN => n165);
   U219 : INV_X1 port map( A => A_ns(17), ZN => n164);
   U220 : OAI221_X1 port map( B1 => n3, B2 => n167, C1 => n2, C2 => n168, A => 
                           n169, ZN => O_18_port);
   U221 : AOI22_X1 port map( A1 => A_ns(17), A2 => n7, B1 => A_s(17), B2 => n8,
                           ZN => n169);
   U222 : INV_X1 port map( A => A_s(16), ZN => n168);
   U223 : INV_X1 port map( A => A_ns(16), ZN => n167);
   U224 : OAI221_X1 port map( B1 => n3, B2 => n170, C1 => n2, C2 => n171, A => 
                           n172, ZN => O_17_port);
   U225 : AOI22_X1 port map( A1 => A_ns(16), A2 => n7, B1 => A_s(16), B2 => n8,
                           ZN => n172);
   U226 : INV_X1 port map( A => A_s(15), ZN => n171);
   U227 : INV_X1 port map( A => A_ns(15), ZN => n170);
   U228 : OAI221_X1 port map( B1 => n3, B2 => n173, C1 => n2, C2 => n174, A => 
                           n175, ZN => O_16_port);
   U229 : AOI22_X1 port map( A1 => A_ns(15), A2 => n7, B1 => A_s(15), B2 => n8,
                           ZN => n175);
   U230 : INV_X1 port map( A => A_s(14), ZN => n174);
   U231 : INV_X1 port map( A => A_ns(14), ZN => n173);
   U232 : OAI221_X1 port map( B1 => n3, B2 => n176, C1 => n2, C2 => n177, A => 
                           n178, ZN => O_15_port);
   U233 : AOI22_X1 port map( A1 => A_ns(14), A2 => n7, B1 => A_s(14), B2 => n8,
                           ZN => n178);
   U234 : INV_X1 port map( A => A_s(13), ZN => n177);
   U235 : INV_X1 port map( A => A_ns(13), ZN => n176);
   U236 : OAI221_X1 port map( B1 => n3, B2 => n179, C1 => n2, C2 => n180, A => 
                           n181, ZN => O_14_port);
   U237 : AOI22_X1 port map( A1 => A_ns(13), A2 => n7, B1 => A_s(13), B2 => n8,
                           ZN => n181);
   U238 : INV_X1 port map( A => A_s(12), ZN => n180);
   U239 : INV_X1 port map( A => A_ns(12), ZN => n179);
   U240 : OAI221_X1 port map( B1 => n3, B2 => n182, C1 => n2, C2 => n183, A => 
                           n184, ZN => O_13_port);
   U241 : AOI22_X1 port map( A1 => A_ns(12), A2 => n7, B1 => A_s(12), B2 => n8,
                           ZN => n184);
   U242 : INV_X1 port map( A => A_s(11), ZN => n183);
   U243 : INV_X1 port map( A => A_ns(11), ZN => n182);
   U244 : OAI221_X1 port map( B1 => n3, B2 => n185, C1 => n2, C2 => n186, A => 
                           n187, ZN => O_12_port);
   U245 : AOI22_X1 port map( A1 => A_ns(11), A2 => n7, B1 => A_s(11), B2 => n8,
                           ZN => n187);
   U246 : INV_X1 port map( A => A_s(10), ZN => n186);
   U247 : INV_X1 port map( A => A_ns(10), ZN => n185);
   U248 : OAI221_X1 port map( B1 => n3, B2 => n188, C1 => n2, C2 => n189, A => 
                           n190, ZN => O_11_port);
   U249 : AOI22_X1 port map( A1 => A_ns(10), A2 => n7, B1 => A_s(10), B2 => n8,
                           ZN => n190);
   U250 : INV_X1 port map( A => A_s(9), ZN => n189);
   U251 : INV_X1 port map( A => A_ns(9), ZN => n188);
   U252 : OAI221_X1 port map( B1 => n191, B2 => n3, C1 => n192, C2 => n2, A => 
                           n193, ZN => O_10_port);
   U253 : AOI22_X1 port map( A1 => A_ns(9), A2 => n7, B1 => A_s(9), B2 => n8, 
                           ZN => n193);
   U254 : NAND2_X1 port map( A1 => n194, A2 => n162, ZN => n163);
   U255 : NAND2_X1 port map( A1 => n194, A2 => n195, ZN => n162);
   U256 : XOR2_X1 port map( A => B(29), B => B(30), Z => n194);
   U257 : INV_X1 port map( A => A_s(8), ZN => n192);
   U258 : INV_X1 port map( A => B(31), ZN => n195);
   U259 : INV_X1 port map( A => A_ns(8), ZN => n191);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT62_i28 is

   port( A_s, A_ns, B : in std_logic_vector (61 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (61 downto 0));

end BOOTHENC_NBIT62_i28;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT62_i28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_61_port, O_60_port, O_59_port, O_58_port, O_57_port,
      O_56_port, O_55_port, O_54_port, O_53_port, O_52_port, O_51_port, 
      O_50_port, O_49_port, O_48_port, O_47_port, O_46_port, O_45_port, 
      O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, O_39_port, 
      O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, 
      O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, 
      O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, 
      O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, 
      O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port
      , O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, 
      n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, 
      n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60
      , n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, 
      n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89
      , n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
      n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, 
      n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189 : std_logic;

begin
   O <= ( O_61_port, O_60_port, O_59_port, O_58_port, O_57_port, O_56_port, 
      O_55_port, O_54_port, O_53_port, O_52_port, O_51_port, O_50_port, 
      O_49_port, O_48_port, O_47_port, O_46_port, O_45_port, O_44_port, 
      O_43_port, O_42_port, O_41_port, O_40_port, O_39_port, O_38_port, 
      O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, 
      O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, 
      O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, 
      O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, 
      O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, O_7_port,
      O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port
      );
   A_so <= ( A_s(59), A_s(58), A_s(57), A_s(56), A_s(55), A_s(54), A_s(53), 
      A_s(52), A_s(51), A_s(50), A_s(49), A_s(48), A_s(47), A_s(46), A_s(45), 
      A_s(44), A_s(43), A_s(42), A_s(41), A_s(40), A_s(39), A_s(38), A_s(37), 
      A_s(36), A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), 
      A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), 
      A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), 
      A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4)
      , A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(59), A_ns(58), A_ns(57), A_ns(56), A_ns(55), A_ns(54), 
      A_ns(53), A_ns(52), A_ns(51), A_ns(50), A_ns(49), A_ns(48), A_ns(47), 
      A_ns(46), A_ns(45), A_ns(44), A_ns(43), A_ns(42), A_ns(41), A_ns(40), 
      A_ns(39), A_ns(38), A_ns(37), A_ns(36), A_ns(35), A_ns(34), A_ns(33), 
      A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), A_ns(27), A_ns(26), 
      A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), A_ns(20), A_ns(19), 
      A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), A_ns(13), A_ns(12), 
      A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4),
      A_ns(3), A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : AND3_X1 port map( A1 => B(28), A2 => n189, A3 => B(27), ZN => n1);
   U3 : INV_X4 port map( A => n1, ZN => n2);
   U4 : INV_X4 port map( A => n156, ZN => n8);
   U5 : INV_X4 port map( A => n157, ZN => n7);
   U6 : OR3_X4 port map( A1 => B(27), A2 => B(28), A3 => n189, ZN => n3);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n2, C2 => n5, A => n6, ZN
                           => O_9_port);
   U8 : AOI22_X1 port map( A1 => A_ns(8), A2 => n7, B1 => A_s(8), B2 => n8, ZN 
                           => n6);
   U9 : INV_X1 port map( A => A_s(7), ZN => n5);
   U10 : INV_X1 port map( A => A_ns(7), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n2, C2 => n10, A => n11,
                           ZN => O_8_port);
   U12 : AOI22_X1 port map( A1 => A_ns(7), A2 => n7, B1 => A_s(7), B2 => n8, ZN
                           => n11);
   U13 : INV_X1 port map( A => A_s(6), ZN => n10);
   U14 : INV_X1 port map( A => A_ns(6), ZN => n9);
   U15 : OAI221_X1 port map( B1 => n3, B2 => n12, C1 => n2, C2 => n13, A => n14
                           , ZN => O_7_port);
   U16 : AOI22_X1 port map( A1 => A_ns(6), A2 => n7, B1 => A_s(6), B2 => n8, ZN
                           => n14);
   U17 : INV_X1 port map( A => A_s(5), ZN => n13);
   U18 : INV_X1 port map( A => A_ns(5), ZN => n12);
   U19 : OAI221_X1 port map( B1 => n3, B2 => n15, C1 => n2, C2 => n16, A => n17
                           , ZN => O_6_port);
   U20 : AOI22_X1 port map( A1 => A_ns(5), A2 => n7, B1 => A_s(5), B2 => n8, ZN
                           => n17);
   U21 : INV_X1 port map( A => A_s(4), ZN => n16);
   U22 : INV_X1 port map( A => A_ns(4), ZN => n15);
   U23 : OAI221_X1 port map( B1 => n3, B2 => n18, C1 => n2, C2 => n19, A => n20
                           , ZN => O_61_port);
   U24 : AOI22_X1 port map( A1 => A_ns(60), A2 => n7, B1 => A_s(60), B2 => n8, 
                           ZN => n20);
   U25 : INV_X1 port map( A => A_s(59), ZN => n19);
   U26 : INV_X1 port map( A => A_ns(59), ZN => n18);
   U27 : OAI221_X1 port map( B1 => n3, B2 => n21, C1 => n2, C2 => n22, A => n23
                           , ZN => O_60_port);
   U28 : AOI22_X1 port map( A1 => A_ns(59), A2 => n7, B1 => A_s(59), B2 => n8, 
                           ZN => n23);
   U29 : INV_X1 port map( A => A_s(58), ZN => n22);
   U30 : INV_X1 port map( A => A_ns(58), ZN => n21);
   U31 : OAI221_X1 port map( B1 => n3, B2 => n24, C1 => n2, C2 => n25, A => n26
                           , ZN => O_5_port);
   U32 : AOI22_X1 port map( A1 => A_ns(4), A2 => n7, B1 => A_s(4), B2 => n8, ZN
                           => n26);
   U33 : INV_X1 port map( A => A_s(3), ZN => n25);
   U34 : INV_X1 port map( A => A_ns(3), ZN => n24);
   U35 : OAI221_X1 port map( B1 => n3, B2 => n27, C1 => n2, C2 => n28, A => n29
                           , ZN => O_59_port);
   U36 : AOI22_X1 port map( A1 => A_ns(58), A2 => n7, B1 => A_s(58), B2 => n8, 
                           ZN => n29);
   U37 : INV_X1 port map( A => A_s(57), ZN => n28);
   U38 : INV_X1 port map( A => A_ns(57), ZN => n27);
   U39 : OAI221_X1 port map( B1 => n3, B2 => n30, C1 => n2, C2 => n31, A => n32
                           , ZN => O_58_port);
   U40 : AOI22_X1 port map( A1 => A_ns(57), A2 => n7, B1 => A_s(57), B2 => n8, 
                           ZN => n32);
   U41 : INV_X1 port map( A => A_s(56), ZN => n31);
   U42 : INV_X1 port map( A => A_ns(56), ZN => n30);
   U43 : OAI221_X1 port map( B1 => n3, B2 => n33, C1 => n2, C2 => n34, A => n35
                           , ZN => O_57_port);
   U44 : AOI22_X1 port map( A1 => A_ns(56), A2 => n7, B1 => A_s(56), B2 => n8, 
                           ZN => n35);
   U45 : INV_X1 port map( A => A_s(55), ZN => n34);
   U46 : INV_X1 port map( A => A_ns(55), ZN => n33);
   U47 : OAI221_X1 port map( B1 => n3, B2 => n36, C1 => n2, C2 => n37, A => n38
                           , ZN => O_56_port);
   U48 : AOI22_X1 port map( A1 => A_ns(55), A2 => n7, B1 => A_s(55), B2 => n8, 
                           ZN => n38);
   U49 : INV_X1 port map( A => A_s(54), ZN => n37);
   U50 : INV_X1 port map( A => A_ns(54), ZN => n36);
   U51 : OAI221_X1 port map( B1 => n3, B2 => n39, C1 => n2, C2 => n40, A => n41
                           , ZN => O_55_port);
   U52 : AOI22_X1 port map( A1 => A_ns(54), A2 => n7, B1 => A_s(54), B2 => n8, 
                           ZN => n41);
   U53 : INV_X1 port map( A => A_s(53), ZN => n40);
   U54 : INV_X1 port map( A => A_ns(53), ZN => n39);
   U55 : OAI221_X1 port map( B1 => n3, B2 => n42, C1 => n2, C2 => n43, A => n44
                           , ZN => O_54_port);
   U56 : AOI22_X1 port map( A1 => A_ns(53), A2 => n7, B1 => A_s(53), B2 => n8, 
                           ZN => n44);
   U57 : INV_X1 port map( A => A_s(52), ZN => n43);
   U58 : INV_X1 port map( A => A_ns(52), ZN => n42);
   U59 : OAI221_X1 port map( B1 => n3, B2 => n45, C1 => n2, C2 => n46, A => n47
                           , ZN => O_53_port);
   U60 : AOI22_X1 port map( A1 => A_ns(52), A2 => n7, B1 => A_s(52), B2 => n8, 
                           ZN => n47);
   U61 : INV_X1 port map( A => A_s(51), ZN => n46);
   U62 : INV_X1 port map( A => A_ns(51), ZN => n45);
   U63 : OAI221_X1 port map( B1 => n3, B2 => n48, C1 => n2, C2 => n49, A => n50
                           , ZN => O_52_port);
   U64 : AOI22_X1 port map( A1 => A_ns(51), A2 => n7, B1 => A_s(51), B2 => n8, 
                           ZN => n50);
   U65 : INV_X1 port map( A => A_s(50), ZN => n49);
   U66 : INV_X1 port map( A => A_ns(50), ZN => n48);
   U67 : OAI221_X1 port map( B1 => n3, B2 => n51, C1 => n2, C2 => n52, A => n53
                           , ZN => O_51_port);
   U68 : AOI22_X1 port map( A1 => A_ns(50), A2 => n7, B1 => A_s(50), B2 => n8, 
                           ZN => n53);
   U69 : INV_X1 port map( A => A_s(49), ZN => n52);
   U70 : INV_X1 port map( A => A_ns(49), ZN => n51);
   U71 : OAI221_X1 port map( B1 => n3, B2 => n54, C1 => n2, C2 => n55, A => n56
                           , ZN => O_50_port);
   U72 : AOI22_X1 port map( A1 => A_ns(49), A2 => n7, B1 => A_s(49), B2 => n8, 
                           ZN => n56);
   U73 : INV_X1 port map( A => A_s(48), ZN => n55);
   U74 : INV_X1 port map( A => A_ns(48), ZN => n54);
   U75 : OAI221_X1 port map( B1 => n3, B2 => n57, C1 => n2, C2 => n58, A => n59
                           , ZN => O_4_port);
   U76 : AOI22_X1 port map( A1 => A_ns(3), A2 => n7, B1 => A_s(3), B2 => n8, ZN
                           => n59);
   U77 : INV_X1 port map( A => A_s(2), ZN => n58);
   U78 : INV_X1 port map( A => A_ns(2), ZN => n57);
   U79 : OAI221_X1 port map( B1 => n3, B2 => n60, C1 => n2, C2 => n61, A => n62
                           , ZN => O_49_port);
   U80 : AOI22_X1 port map( A1 => A_ns(48), A2 => n7, B1 => A_s(48), B2 => n8, 
                           ZN => n62);
   U81 : INV_X1 port map( A => A_s(47), ZN => n61);
   U82 : INV_X1 port map( A => A_ns(47), ZN => n60);
   U83 : OAI221_X1 port map( B1 => n3, B2 => n63, C1 => n2, C2 => n64, A => n65
                           , ZN => O_48_port);
   U84 : AOI22_X1 port map( A1 => A_ns(47), A2 => n7, B1 => A_s(47), B2 => n8, 
                           ZN => n65);
   U85 : INV_X1 port map( A => A_s(46), ZN => n64);
   U86 : INV_X1 port map( A => A_ns(46), ZN => n63);
   U87 : OAI221_X1 port map( B1 => n3, B2 => n66, C1 => n2, C2 => n67, A => n68
                           , ZN => O_47_port);
   U88 : AOI22_X1 port map( A1 => A_ns(46), A2 => n7, B1 => A_s(46), B2 => n8, 
                           ZN => n68);
   U89 : INV_X1 port map( A => A_s(45), ZN => n67);
   U90 : INV_X1 port map( A => A_ns(45), ZN => n66);
   U91 : OAI221_X1 port map( B1 => n3, B2 => n69, C1 => n2, C2 => n70, A => n71
                           , ZN => O_46_port);
   U92 : AOI22_X1 port map( A1 => A_ns(45), A2 => n7, B1 => A_s(45), B2 => n8, 
                           ZN => n71);
   U93 : INV_X1 port map( A => A_s(44), ZN => n70);
   U94 : INV_X1 port map( A => A_ns(44), ZN => n69);
   U95 : OAI221_X1 port map( B1 => n3, B2 => n72, C1 => n2, C2 => n73, A => n74
                           , ZN => O_45_port);
   U96 : AOI22_X1 port map( A1 => A_ns(44), A2 => n7, B1 => A_s(44), B2 => n8, 
                           ZN => n74);
   U97 : INV_X1 port map( A => A_s(43), ZN => n73);
   U98 : INV_X1 port map( A => A_ns(43), ZN => n72);
   U99 : OAI221_X1 port map( B1 => n3, B2 => n75, C1 => n2, C2 => n76, A => n77
                           , ZN => O_44_port);
   U100 : AOI22_X1 port map( A1 => A_ns(43), A2 => n7, B1 => A_s(43), B2 => n8,
                           ZN => n77);
   U101 : INV_X1 port map( A => A_s(42), ZN => n76);
   U102 : INV_X1 port map( A => A_ns(42), ZN => n75);
   U103 : OAI221_X1 port map( B1 => n3, B2 => n78, C1 => n2, C2 => n79, A => 
                           n80, ZN => O_43_port);
   U104 : AOI22_X1 port map( A1 => A_ns(42), A2 => n7, B1 => A_s(42), B2 => n8,
                           ZN => n80);
   U105 : INV_X1 port map( A => A_s(41), ZN => n79);
   U106 : INV_X1 port map( A => A_ns(41), ZN => n78);
   U107 : OAI221_X1 port map( B1 => n3, B2 => n81, C1 => n2, C2 => n82, A => 
                           n83, ZN => O_42_port);
   U108 : AOI22_X1 port map( A1 => A_ns(41), A2 => n7, B1 => A_s(41), B2 => n8,
                           ZN => n83);
   U109 : INV_X1 port map( A => A_s(40), ZN => n82);
   U110 : INV_X1 port map( A => A_ns(40), ZN => n81);
   U111 : OAI221_X1 port map( B1 => n3, B2 => n84, C1 => n2, C2 => n85, A => 
                           n86, ZN => O_41_port);
   U112 : AOI22_X1 port map( A1 => A_ns(40), A2 => n7, B1 => A_s(40), B2 => n8,
                           ZN => n86);
   U113 : INV_X1 port map( A => A_s(39), ZN => n85);
   U114 : INV_X1 port map( A => A_ns(39), ZN => n84);
   U115 : OAI221_X1 port map( B1 => n3, B2 => n87, C1 => n2, C2 => n88, A => 
                           n89, ZN => O_40_port);
   U116 : AOI22_X1 port map( A1 => A_ns(39), A2 => n7, B1 => A_s(39), B2 => n8,
                           ZN => n89);
   U117 : INV_X1 port map( A => A_s(38), ZN => n88);
   U118 : INV_X1 port map( A => A_ns(38), ZN => n87);
   U119 : OAI221_X1 port map( B1 => n3, B2 => n90, C1 => n2, C2 => n91, A => 
                           n92, ZN => O_3_port);
   U120 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n92);
   U121 : INV_X1 port map( A => A_s(1), ZN => n91);
   U122 : INV_X1 port map( A => A_ns(1), ZN => n90);
   U123 : OAI221_X1 port map( B1 => n3, B2 => n93, C1 => n2, C2 => n94, A => 
                           n95, ZN => O_39_port);
   U124 : AOI22_X1 port map( A1 => A_ns(38), A2 => n7, B1 => A_s(38), B2 => n8,
                           ZN => n95);
   U125 : INV_X1 port map( A => A_s(37), ZN => n94);
   U126 : INV_X1 port map( A => A_ns(37), ZN => n93);
   U127 : OAI221_X1 port map( B1 => n3, B2 => n96, C1 => n2, C2 => n97, A => 
                           n98, ZN => O_38_port);
   U128 : AOI22_X1 port map( A1 => A_ns(37), A2 => n7, B1 => A_s(37), B2 => n8,
                           ZN => n98);
   U129 : INV_X1 port map( A => A_s(36), ZN => n97);
   U130 : INV_X1 port map( A => A_ns(36), ZN => n96);
   U131 : OAI221_X1 port map( B1 => n3, B2 => n99, C1 => n2, C2 => n100, A => 
                           n101, ZN => O_37_port);
   U132 : AOI22_X1 port map( A1 => A_ns(36), A2 => n7, B1 => A_s(36), B2 => n8,
                           ZN => n101);
   U133 : INV_X1 port map( A => A_s(35), ZN => n100);
   U134 : INV_X1 port map( A => A_ns(35), ZN => n99);
   U135 : OAI221_X1 port map( B1 => n3, B2 => n102, C1 => n2, C2 => n103, A => 
                           n104, ZN => O_36_port);
   U136 : AOI22_X1 port map( A1 => A_ns(35), A2 => n7, B1 => A_s(35), B2 => n8,
                           ZN => n104);
   U137 : INV_X1 port map( A => A_s(34), ZN => n103);
   U138 : INV_X1 port map( A => A_ns(34), ZN => n102);
   U139 : OAI221_X1 port map( B1 => n3, B2 => n105, C1 => n2, C2 => n106, A => 
                           n107, ZN => O_35_port);
   U140 : AOI22_X1 port map( A1 => A_ns(34), A2 => n7, B1 => A_s(34), B2 => n8,
                           ZN => n107);
   U141 : INV_X1 port map( A => A_s(33), ZN => n106);
   U142 : INV_X1 port map( A => A_ns(33), ZN => n105);
   U143 : OAI221_X1 port map( B1 => n3, B2 => n108, C1 => n2, C2 => n109, A => 
                           n110, ZN => O_34_port);
   U144 : AOI22_X1 port map( A1 => A_ns(33), A2 => n7, B1 => A_s(33), B2 => n8,
                           ZN => n110);
   U145 : INV_X1 port map( A => A_s(32), ZN => n109);
   U146 : INV_X1 port map( A => A_ns(32), ZN => n108);
   U147 : OAI221_X1 port map( B1 => n3, B2 => n111, C1 => n2, C2 => n112, A => 
                           n113, ZN => O_33_port);
   U148 : AOI22_X1 port map( A1 => A_ns(32), A2 => n7, B1 => A_s(32), B2 => n8,
                           ZN => n113);
   U149 : INV_X1 port map( A => A_s(31), ZN => n112);
   U150 : INV_X1 port map( A => A_ns(31), ZN => n111);
   U151 : OAI221_X1 port map( B1 => n3, B2 => n114, C1 => n2, C2 => n115, A => 
                           n116, ZN => O_32_port);
   U152 : AOI22_X1 port map( A1 => A_ns(31), A2 => n7, B1 => A_s(31), B2 => n8,
                           ZN => n116);
   U153 : INV_X1 port map( A => A_s(30), ZN => n115);
   U154 : INV_X1 port map( A => A_ns(30), ZN => n114);
   U155 : OAI221_X1 port map( B1 => n3, B2 => n117, C1 => n2, C2 => n118, A => 
                           n119, ZN => O_31_port);
   U156 : AOI22_X1 port map( A1 => A_ns(30), A2 => n7, B1 => A_s(30), B2 => n8,
                           ZN => n119);
   U157 : INV_X1 port map( A => A_s(29), ZN => n118);
   U158 : INV_X1 port map( A => A_ns(29), ZN => n117);
   U159 : OAI221_X1 port map( B1 => n3, B2 => n120, C1 => n2, C2 => n121, A => 
                           n122, ZN => O_30_port);
   U160 : AOI22_X1 port map( A1 => A_ns(29), A2 => n7, B1 => A_s(29), B2 => n8,
                           ZN => n122);
   U161 : INV_X1 port map( A => A_s(28), ZN => n121);
   U162 : INV_X1 port map( A => A_ns(28), ZN => n120);
   U163 : OAI221_X1 port map( B1 => n3, B2 => n123, C1 => n2, C2 => n124, A => 
                           n125, ZN => O_2_port);
   U164 : AOI22_X1 port map( A1 => A_ns(1), A2 => n7, B1 => A_s(1), B2 => n8, 
                           ZN => n125);
   U165 : OAI221_X1 port map( B1 => n3, B2 => n126, C1 => n2, C2 => n127, A => 
                           n128, ZN => O_29_port);
   U166 : AOI22_X1 port map( A1 => A_ns(28), A2 => n7, B1 => A_s(28), B2 => n8,
                           ZN => n128);
   U167 : INV_X1 port map( A => A_s(27), ZN => n127);
   U168 : INV_X1 port map( A => A_ns(27), ZN => n126);
   U169 : OAI221_X1 port map( B1 => n3, B2 => n129, C1 => n2, C2 => n130, A => 
                           n131, ZN => O_28_port);
   U170 : AOI22_X1 port map( A1 => A_ns(27), A2 => n7, B1 => A_s(27), B2 => n8,
                           ZN => n131);
   U171 : INV_X1 port map( A => A_s(26), ZN => n130);
   U172 : INV_X1 port map( A => A_ns(26), ZN => n129);
   U173 : OAI221_X1 port map( B1 => n3, B2 => n132, C1 => n2, C2 => n133, A => 
                           n134, ZN => O_27_port);
   U174 : AOI22_X1 port map( A1 => A_ns(26), A2 => n7, B1 => A_s(26), B2 => n8,
                           ZN => n134);
   U175 : INV_X1 port map( A => A_s(25), ZN => n133);
   U176 : INV_X1 port map( A => A_ns(25), ZN => n132);
   U177 : OAI221_X1 port map( B1 => n3, B2 => n135, C1 => n2, C2 => n136, A => 
                           n137, ZN => O_26_port);
   U178 : AOI22_X1 port map( A1 => A_ns(25), A2 => n7, B1 => A_s(25), B2 => n8,
                           ZN => n137);
   U179 : INV_X1 port map( A => A_s(24), ZN => n136);
   U180 : INV_X1 port map( A => A_ns(24), ZN => n135);
   U181 : OAI221_X1 port map( B1 => n3, B2 => n138, C1 => n2, C2 => n139, A => 
                           n140, ZN => O_25_port);
   U182 : AOI22_X1 port map( A1 => A_ns(24), A2 => n7, B1 => A_s(24), B2 => n8,
                           ZN => n140);
   U183 : INV_X1 port map( A => A_s(23), ZN => n139);
   U184 : INV_X1 port map( A => A_ns(23), ZN => n138);
   U185 : OAI221_X1 port map( B1 => n3, B2 => n141, C1 => n2, C2 => n142, A => 
                           n143, ZN => O_24_port);
   U186 : AOI22_X1 port map( A1 => A_ns(23), A2 => n7, B1 => A_s(23), B2 => n8,
                           ZN => n143);
   U187 : INV_X1 port map( A => A_s(22), ZN => n142);
   U188 : INV_X1 port map( A => A_ns(22), ZN => n141);
   U189 : OAI221_X1 port map( B1 => n3, B2 => n144, C1 => n2, C2 => n145, A => 
                           n146, ZN => O_23_port);
   U190 : AOI22_X1 port map( A1 => A_ns(22), A2 => n7, B1 => A_s(22), B2 => n8,
                           ZN => n146);
   U191 : INV_X1 port map( A => A_s(21), ZN => n145);
   U192 : INV_X1 port map( A => A_ns(21), ZN => n144);
   U193 : OAI221_X1 port map( B1 => n3, B2 => n147, C1 => n2, C2 => n148, A => 
                           n149, ZN => O_22_port);
   U194 : AOI22_X1 port map( A1 => A_ns(21), A2 => n7, B1 => A_s(21), B2 => n8,
                           ZN => n149);
   U195 : INV_X1 port map( A => A_s(20), ZN => n148);
   U196 : INV_X1 port map( A => A_ns(20), ZN => n147);
   U197 : OAI221_X1 port map( B1 => n3, B2 => n150, C1 => n2, C2 => n151, A => 
                           n152, ZN => O_21_port);
   U198 : AOI22_X1 port map( A1 => A_ns(20), A2 => n7, B1 => A_s(20), B2 => n8,
                           ZN => n152);
   U199 : INV_X1 port map( A => A_s(19), ZN => n151);
   U200 : INV_X1 port map( A => A_ns(19), ZN => n150);
   U201 : OAI221_X1 port map( B1 => n3, B2 => n153, C1 => n2, C2 => n154, A => 
                           n155, ZN => O_20_port);
   U202 : AOI22_X1 port map( A1 => A_ns(19), A2 => n7, B1 => A_s(19), B2 => n8,
                           ZN => n155);
   U203 : INV_X1 port map( A => A_s(18), ZN => n154);
   U204 : INV_X1 port map( A => A_ns(18), ZN => n153);
   U205 : OAI22_X1 port map( A1 => n156, A2 => n124, B1 => n157, B2 => n123, ZN
                           => O_1_port);
   U206 : INV_X1 port map( A => A_ns(0), ZN => n123);
   U207 : INV_X1 port map( A => A_s(0), ZN => n124);
   U208 : OAI221_X1 port map( B1 => n3, B2 => n158, C1 => n2, C2 => n159, A => 
                           n160, ZN => O_19_port);
   U209 : AOI22_X1 port map( A1 => A_ns(18), A2 => n7, B1 => A_s(18), B2 => n8,
                           ZN => n160);
   U210 : INV_X1 port map( A => A_s(17), ZN => n159);
   U211 : INV_X1 port map( A => A_ns(17), ZN => n158);
   U212 : OAI221_X1 port map( B1 => n3, B2 => n161, C1 => n2, C2 => n162, A => 
                           n163, ZN => O_18_port);
   U213 : AOI22_X1 port map( A1 => A_ns(17), A2 => n7, B1 => A_s(17), B2 => n8,
                           ZN => n163);
   U214 : INV_X1 port map( A => A_s(16), ZN => n162);
   U215 : INV_X1 port map( A => A_ns(16), ZN => n161);
   U216 : OAI221_X1 port map( B1 => n3, B2 => n164, C1 => n2, C2 => n165, A => 
                           n166, ZN => O_17_port);
   U217 : AOI22_X1 port map( A1 => A_ns(16), A2 => n7, B1 => A_s(16), B2 => n8,
                           ZN => n166);
   U218 : INV_X1 port map( A => A_s(15), ZN => n165);
   U219 : INV_X1 port map( A => A_ns(15), ZN => n164);
   U220 : OAI221_X1 port map( B1 => n3, B2 => n167, C1 => n2, C2 => n168, A => 
                           n169, ZN => O_16_port);
   U221 : AOI22_X1 port map( A1 => A_ns(15), A2 => n7, B1 => A_s(15), B2 => n8,
                           ZN => n169);
   U222 : INV_X1 port map( A => A_s(14), ZN => n168);
   U223 : INV_X1 port map( A => A_ns(14), ZN => n167);
   U224 : OAI221_X1 port map( B1 => n3, B2 => n170, C1 => n2, C2 => n171, A => 
                           n172, ZN => O_15_port);
   U225 : AOI22_X1 port map( A1 => A_ns(14), A2 => n7, B1 => A_s(14), B2 => n8,
                           ZN => n172);
   U226 : INV_X1 port map( A => A_s(13), ZN => n171);
   U227 : INV_X1 port map( A => A_ns(13), ZN => n170);
   U228 : OAI221_X1 port map( B1 => n3, B2 => n173, C1 => n2, C2 => n174, A => 
                           n175, ZN => O_14_port);
   U229 : AOI22_X1 port map( A1 => A_ns(13), A2 => n7, B1 => A_s(13), B2 => n8,
                           ZN => n175);
   U230 : INV_X1 port map( A => A_s(12), ZN => n174);
   U231 : INV_X1 port map( A => A_ns(12), ZN => n173);
   U232 : OAI221_X1 port map( B1 => n3, B2 => n176, C1 => n2, C2 => n177, A => 
                           n178, ZN => O_13_port);
   U233 : AOI22_X1 port map( A1 => A_ns(12), A2 => n7, B1 => A_s(12), B2 => n8,
                           ZN => n178);
   U234 : INV_X1 port map( A => A_s(11), ZN => n177);
   U235 : INV_X1 port map( A => A_ns(11), ZN => n176);
   U236 : OAI221_X1 port map( B1 => n3, B2 => n179, C1 => n2, C2 => n180, A => 
                           n181, ZN => O_12_port);
   U237 : AOI22_X1 port map( A1 => A_ns(11), A2 => n7, B1 => A_s(11), B2 => n8,
                           ZN => n181);
   U238 : INV_X1 port map( A => A_s(10), ZN => n180);
   U239 : INV_X1 port map( A => A_ns(10), ZN => n179);
   U240 : OAI221_X1 port map( B1 => n3, B2 => n182, C1 => n2, C2 => n183, A => 
                           n184, ZN => O_11_port);
   U241 : AOI22_X1 port map( A1 => A_ns(10), A2 => n7, B1 => A_s(10), B2 => n8,
                           ZN => n184);
   U242 : INV_X1 port map( A => A_s(9), ZN => n183);
   U243 : INV_X1 port map( A => A_ns(9), ZN => n182);
   U244 : OAI221_X1 port map( B1 => n185, B2 => n3, C1 => n186, C2 => n2, A => 
                           n187, ZN => O_10_port);
   U245 : AOI22_X1 port map( A1 => A_ns(9), A2 => n7, B1 => A_s(9), B2 => n8, 
                           ZN => n187);
   U246 : NAND2_X1 port map( A1 => n188, A2 => n156, ZN => n157);
   U247 : NAND2_X1 port map( A1 => n188, A2 => n189, ZN => n156);
   U248 : XOR2_X1 port map( A => B(27), B => B(28), Z => n188);
   U249 : INV_X1 port map( A => A_s(8), ZN => n186);
   U250 : INV_X1 port map( A => B(29), ZN => n189);
   U251 : INV_X1 port map( A => A_ns(8), ZN => n185);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT60_i26 is

   port( A_s, A_ns, B : in std_logic_vector (59 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (59 downto 0));

end BOOTHENC_NBIT60_i26;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT60_i26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_59_port, O_58_port, O_57_port, O_56_port, O_55_port,
      O_54_port, O_53_port, O_52_port, O_51_port, O_50_port, O_49_port, 
      O_48_port, O_47_port, O_46_port, O_45_port, O_44_port, O_43_port, 
      O_42_port, O_41_port, O_40_port, O_39_port, O_38_port, O_37_port, 
      O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, 
      O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, 
      O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, 
      O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, 
      O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, 
      O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, n1, n2, n3, n4, n5, n6,
      n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, 
      n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36
      , n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, 
      n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65
      , n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, 
      n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94
      , n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107
      , n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
      n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, 
      n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, 
      n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, 
      n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, 
      n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, 
      n180, n181, n182, n183 : std_logic;

begin
   O <= ( O_59_port, O_58_port, O_57_port, O_56_port, O_55_port, O_54_port, 
      O_53_port, O_52_port, O_51_port, O_50_port, O_49_port, O_48_port, 
      O_47_port, O_46_port, O_45_port, O_44_port, O_43_port, O_42_port, 
      O_41_port, O_40_port, O_39_port, O_38_port, O_37_port, O_36_port, 
      O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, 
      O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, 
      O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, 
      O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, 
      O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, 
      O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(57), A_s(56), A_s(55), A_s(54), A_s(53), A_s(52), A_s(51), 
      A_s(50), A_s(49), A_s(48), A_s(47), A_s(46), A_s(45), A_s(44), A_s(43), 
      A_s(42), A_s(41), A_s(40), A_s(39), A_s(38), A_s(37), A_s(36), A_s(35), 
      A_s(34), A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), 
      A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), 
      A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), 
      A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), 
      A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(57), A_ns(56), A_ns(55), A_ns(54), A_ns(53), A_ns(52), 
      A_ns(51), A_ns(50), A_ns(49), A_ns(48), A_ns(47), A_ns(46), A_ns(45), 
      A_ns(44), A_ns(43), A_ns(42), A_ns(41), A_ns(40), A_ns(39), A_ns(38), 
      A_ns(37), A_ns(36), A_ns(35), A_ns(34), A_ns(33), A_ns(32), A_ns(31), 
      A_ns(30), A_ns(29), A_ns(28), A_ns(27), A_ns(26), A_ns(25), A_ns(24), 
      A_ns(23), A_ns(22), A_ns(21), A_ns(20), A_ns(19), A_ns(18), A_ns(17), 
      A_ns(16), A_ns(15), A_ns(14), A_ns(13), A_ns(12), A_ns(11), A_ns(10), 
      A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), 
      A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : AND3_X1 port map( A1 => B(26), A2 => n183, A3 => B(25), ZN => n1);
   U3 : INV_X4 port map( A => n1, ZN => n2);
   U4 : INV_X4 port map( A => n150, ZN => n8);
   U5 : INV_X4 port map( A => n151, ZN => n7);
   U6 : OR3_X4 port map( A1 => B(25), A2 => B(26), A3 => n183, ZN => n3);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n2, C2 => n5, A => n6, ZN
                           => O_9_port);
   U8 : AOI22_X1 port map( A1 => A_ns(8), A2 => n7, B1 => A_s(8), B2 => n8, ZN 
                           => n6);
   U9 : INV_X1 port map( A => A_s(7), ZN => n5);
   U10 : INV_X1 port map( A => A_ns(7), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n2, C2 => n10, A => n11,
                           ZN => O_8_port);
   U12 : AOI22_X1 port map( A1 => A_ns(7), A2 => n7, B1 => A_s(7), B2 => n8, ZN
                           => n11);
   U13 : INV_X1 port map( A => A_s(6), ZN => n10);
   U14 : INV_X1 port map( A => A_ns(6), ZN => n9);
   U15 : OAI221_X1 port map( B1 => n3, B2 => n12, C1 => n2, C2 => n13, A => n14
                           , ZN => O_7_port);
   U16 : AOI22_X1 port map( A1 => A_ns(6), A2 => n7, B1 => A_s(6), B2 => n8, ZN
                           => n14);
   U17 : INV_X1 port map( A => A_s(5), ZN => n13);
   U18 : INV_X1 port map( A => A_ns(5), ZN => n12);
   U19 : OAI221_X1 port map( B1 => n3, B2 => n15, C1 => n2, C2 => n16, A => n17
                           , ZN => O_6_port);
   U20 : AOI22_X1 port map( A1 => A_ns(5), A2 => n7, B1 => A_s(5), B2 => n8, ZN
                           => n17);
   U21 : INV_X1 port map( A => A_s(4), ZN => n16);
   U22 : INV_X1 port map( A => A_ns(4), ZN => n15);
   U23 : OAI221_X1 port map( B1 => n3, B2 => n18, C1 => n2, C2 => n19, A => n20
                           , ZN => O_5_port);
   U24 : AOI22_X1 port map( A1 => A_ns(4), A2 => n7, B1 => A_s(4), B2 => n8, ZN
                           => n20);
   U25 : INV_X1 port map( A => A_s(3), ZN => n19);
   U26 : INV_X1 port map( A => A_ns(3), ZN => n18);
   U27 : OAI221_X1 port map( B1 => n3, B2 => n21, C1 => n2, C2 => n22, A => n23
                           , ZN => O_59_port);
   U28 : AOI22_X1 port map( A1 => A_ns(58), A2 => n7, B1 => A_s(58), B2 => n8, 
                           ZN => n23);
   U29 : INV_X1 port map( A => A_s(57), ZN => n22);
   U30 : INV_X1 port map( A => A_ns(57), ZN => n21);
   U31 : OAI221_X1 port map( B1 => n3, B2 => n24, C1 => n2, C2 => n25, A => n26
                           , ZN => O_58_port);
   U32 : AOI22_X1 port map( A1 => A_ns(57), A2 => n7, B1 => A_s(57), B2 => n8, 
                           ZN => n26);
   U33 : INV_X1 port map( A => A_s(56), ZN => n25);
   U34 : INV_X1 port map( A => A_ns(56), ZN => n24);
   U35 : OAI221_X1 port map( B1 => n3, B2 => n27, C1 => n2, C2 => n28, A => n29
                           , ZN => O_57_port);
   U36 : AOI22_X1 port map( A1 => A_ns(56), A2 => n7, B1 => A_s(56), B2 => n8, 
                           ZN => n29);
   U37 : INV_X1 port map( A => A_s(55), ZN => n28);
   U38 : INV_X1 port map( A => A_ns(55), ZN => n27);
   U39 : OAI221_X1 port map( B1 => n3, B2 => n30, C1 => n2, C2 => n31, A => n32
                           , ZN => O_56_port);
   U40 : AOI22_X1 port map( A1 => A_ns(55), A2 => n7, B1 => A_s(55), B2 => n8, 
                           ZN => n32);
   U41 : INV_X1 port map( A => A_s(54), ZN => n31);
   U42 : INV_X1 port map( A => A_ns(54), ZN => n30);
   U43 : OAI221_X1 port map( B1 => n3, B2 => n33, C1 => n2, C2 => n34, A => n35
                           , ZN => O_55_port);
   U44 : AOI22_X1 port map( A1 => A_ns(54), A2 => n7, B1 => A_s(54), B2 => n8, 
                           ZN => n35);
   U45 : INV_X1 port map( A => A_s(53), ZN => n34);
   U46 : INV_X1 port map( A => A_ns(53), ZN => n33);
   U47 : OAI221_X1 port map( B1 => n3, B2 => n36, C1 => n2, C2 => n37, A => n38
                           , ZN => O_54_port);
   U48 : AOI22_X1 port map( A1 => A_ns(53), A2 => n7, B1 => A_s(53), B2 => n8, 
                           ZN => n38);
   U49 : INV_X1 port map( A => A_s(52), ZN => n37);
   U50 : INV_X1 port map( A => A_ns(52), ZN => n36);
   U51 : OAI221_X1 port map( B1 => n3, B2 => n39, C1 => n2, C2 => n40, A => n41
                           , ZN => O_53_port);
   U52 : AOI22_X1 port map( A1 => A_ns(52), A2 => n7, B1 => A_s(52), B2 => n8, 
                           ZN => n41);
   U53 : INV_X1 port map( A => A_s(51), ZN => n40);
   U54 : INV_X1 port map( A => A_ns(51), ZN => n39);
   U55 : OAI221_X1 port map( B1 => n3, B2 => n42, C1 => n2, C2 => n43, A => n44
                           , ZN => O_52_port);
   U56 : AOI22_X1 port map( A1 => A_ns(51), A2 => n7, B1 => A_s(51), B2 => n8, 
                           ZN => n44);
   U57 : INV_X1 port map( A => A_s(50), ZN => n43);
   U58 : INV_X1 port map( A => A_ns(50), ZN => n42);
   U59 : OAI221_X1 port map( B1 => n3, B2 => n45, C1 => n2, C2 => n46, A => n47
                           , ZN => O_51_port);
   U60 : AOI22_X1 port map( A1 => A_ns(50), A2 => n7, B1 => A_s(50), B2 => n8, 
                           ZN => n47);
   U61 : INV_X1 port map( A => A_s(49), ZN => n46);
   U62 : INV_X1 port map( A => A_ns(49), ZN => n45);
   U63 : OAI221_X1 port map( B1 => n3, B2 => n48, C1 => n2, C2 => n49, A => n50
                           , ZN => O_50_port);
   U64 : AOI22_X1 port map( A1 => A_ns(49), A2 => n7, B1 => A_s(49), B2 => n8, 
                           ZN => n50);
   U65 : INV_X1 port map( A => A_s(48), ZN => n49);
   U66 : INV_X1 port map( A => A_ns(48), ZN => n48);
   U67 : OAI221_X1 port map( B1 => n3, B2 => n51, C1 => n2, C2 => n52, A => n53
                           , ZN => O_4_port);
   U68 : AOI22_X1 port map( A1 => A_ns(3), A2 => n7, B1 => A_s(3), B2 => n8, ZN
                           => n53);
   U69 : INV_X1 port map( A => A_s(2), ZN => n52);
   U70 : INV_X1 port map( A => A_ns(2), ZN => n51);
   U71 : OAI221_X1 port map( B1 => n3, B2 => n54, C1 => n2, C2 => n55, A => n56
                           , ZN => O_49_port);
   U72 : AOI22_X1 port map( A1 => A_ns(48), A2 => n7, B1 => A_s(48), B2 => n8, 
                           ZN => n56);
   U73 : INV_X1 port map( A => A_s(47), ZN => n55);
   U74 : INV_X1 port map( A => A_ns(47), ZN => n54);
   U75 : OAI221_X1 port map( B1 => n3, B2 => n57, C1 => n2, C2 => n58, A => n59
                           , ZN => O_48_port);
   U76 : AOI22_X1 port map( A1 => A_ns(47), A2 => n7, B1 => A_s(47), B2 => n8, 
                           ZN => n59);
   U77 : INV_X1 port map( A => A_s(46), ZN => n58);
   U78 : INV_X1 port map( A => A_ns(46), ZN => n57);
   U79 : OAI221_X1 port map( B1 => n3, B2 => n60, C1 => n2, C2 => n61, A => n62
                           , ZN => O_47_port);
   U80 : AOI22_X1 port map( A1 => A_ns(46), A2 => n7, B1 => A_s(46), B2 => n8, 
                           ZN => n62);
   U81 : INV_X1 port map( A => A_s(45), ZN => n61);
   U82 : INV_X1 port map( A => A_ns(45), ZN => n60);
   U83 : OAI221_X1 port map( B1 => n3, B2 => n63, C1 => n2, C2 => n64, A => n65
                           , ZN => O_46_port);
   U84 : AOI22_X1 port map( A1 => A_ns(45), A2 => n7, B1 => A_s(45), B2 => n8, 
                           ZN => n65);
   U85 : INV_X1 port map( A => A_s(44), ZN => n64);
   U86 : INV_X1 port map( A => A_ns(44), ZN => n63);
   U87 : OAI221_X1 port map( B1 => n3, B2 => n66, C1 => n2, C2 => n67, A => n68
                           , ZN => O_45_port);
   U88 : AOI22_X1 port map( A1 => A_ns(44), A2 => n7, B1 => A_s(44), B2 => n8, 
                           ZN => n68);
   U89 : INV_X1 port map( A => A_s(43), ZN => n67);
   U90 : INV_X1 port map( A => A_ns(43), ZN => n66);
   U91 : OAI221_X1 port map( B1 => n3, B2 => n69, C1 => n2, C2 => n70, A => n71
                           , ZN => O_44_port);
   U92 : AOI22_X1 port map( A1 => A_ns(43), A2 => n7, B1 => A_s(43), B2 => n8, 
                           ZN => n71);
   U93 : INV_X1 port map( A => A_s(42), ZN => n70);
   U94 : INV_X1 port map( A => A_ns(42), ZN => n69);
   U95 : OAI221_X1 port map( B1 => n3, B2 => n72, C1 => n2, C2 => n73, A => n74
                           , ZN => O_43_port);
   U96 : AOI22_X1 port map( A1 => A_ns(42), A2 => n7, B1 => A_s(42), B2 => n8, 
                           ZN => n74);
   U97 : INV_X1 port map( A => A_s(41), ZN => n73);
   U98 : INV_X1 port map( A => A_ns(41), ZN => n72);
   U99 : OAI221_X1 port map( B1 => n3, B2 => n75, C1 => n2, C2 => n76, A => n77
                           , ZN => O_42_port);
   U100 : AOI22_X1 port map( A1 => A_ns(41), A2 => n7, B1 => A_s(41), B2 => n8,
                           ZN => n77);
   U101 : INV_X1 port map( A => A_s(40), ZN => n76);
   U102 : INV_X1 port map( A => A_ns(40), ZN => n75);
   U103 : OAI221_X1 port map( B1 => n3, B2 => n78, C1 => n2, C2 => n79, A => 
                           n80, ZN => O_41_port);
   U104 : AOI22_X1 port map( A1 => A_ns(40), A2 => n7, B1 => A_s(40), B2 => n8,
                           ZN => n80);
   U105 : INV_X1 port map( A => A_s(39), ZN => n79);
   U106 : INV_X1 port map( A => A_ns(39), ZN => n78);
   U107 : OAI221_X1 port map( B1 => n3, B2 => n81, C1 => n2, C2 => n82, A => 
                           n83, ZN => O_40_port);
   U108 : AOI22_X1 port map( A1 => A_ns(39), A2 => n7, B1 => A_s(39), B2 => n8,
                           ZN => n83);
   U109 : INV_X1 port map( A => A_s(38), ZN => n82);
   U110 : INV_X1 port map( A => A_ns(38), ZN => n81);
   U111 : OAI221_X1 port map( B1 => n3, B2 => n84, C1 => n2, C2 => n85, A => 
                           n86, ZN => O_3_port);
   U112 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n86);
   U113 : INV_X1 port map( A => A_s(1), ZN => n85);
   U114 : INV_X1 port map( A => A_ns(1), ZN => n84);
   U115 : OAI221_X1 port map( B1 => n3, B2 => n87, C1 => n2, C2 => n88, A => 
                           n89, ZN => O_39_port);
   U116 : AOI22_X1 port map( A1 => A_ns(38), A2 => n7, B1 => A_s(38), B2 => n8,
                           ZN => n89);
   U117 : INV_X1 port map( A => A_s(37), ZN => n88);
   U118 : INV_X1 port map( A => A_ns(37), ZN => n87);
   U119 : OAI221_X1 port map( B1 => n3, B2 => n90, C1 => n2, C2 => n91, A => 
                           n92, ZN => O_38_port);
   U120 : AOI22_X1 port map( A1 => A_ns(37), A2 => n7, B1 => A_s(37), B2 => n8,
                           ZN => n92);
   U121 : INV_X1 port map( A => A_s(36), ZN => n91);
   U122 : INV_X1 port map( A => A_ns(36), ZN => n90);
   U123 : OAI221_X1 port map( B1 => n3, B2 => n93, C1 => n2, C2 => n94, A => 
                           n95, ZN => O_37_port);
   U124 : AOI22_X1 port map( A1 => A_ns(36), A2 => n7, B1 => A_s(36), B2 => n8,
                           ZN => n95);
   U125 : INV_X1 port map( A => A_s(35), ZN => n94);
   U126 : INV_X1 port map( A => A_ns(35), ZN => n93);
   U127 : OAI221_X1 port map( B1 => n3, B2 => n96, C1 => n2, C2 => n97, A => 
                           n98, ZN => O_36_port);
   U128 : AOI22_X1 port map( A1 => A_ns(35), A2 => n7, B1 => A_s(35), B2 => n8,
                           ZN => n98);
   U129 : INV_X1 port map( A => A_s(34), ZN => n97);
   U130 : INV_X1 port map( A => A_ns(34), ZN => n96);
   U131 : OAI221_X1 port map( B1 => n3, B2 => n99, C1 => n2, C2 => n100, A => 
                           n101, ZN => O_35_port);
   U132 : AOI22_X1 port map( A1 => A_ns(34), A2 => n7, B1 => A_s(34), B2 => n8,
                           ZN => n101);
   U133 : INV_X1 port map( A => A_s(33), ZN => n100);
   U134 : INV_X1 port map( A => A_ns(33), ZN => n99);
   U135 : OAI221_X1 port map( B1 => n3, B2 => n102, C1 => n2, C2 => n103, A => 
                           n104, ZN => O_34_port);
   U136 : AOI22_X1 port map( A1 => A_ns(33), A2 => n7, B1 => A_s(33), B2 => n8,
                           ZN => n104);
   U137 : INV_X1 port map( A => A_s(32), ZN => n103);
   U138 : INV_X1 port map( A => A_ns(32), ZN => n102);
   U139 : OAI221_X1 port map( B1 => n3, B2 => n105, C1 => n2, C2 => n106, A => 
                           n107, ZN => O_33_port);
   U140 : AOI22_X1 port map( A1 => A_ns(32), A2 => n7, B1 => A_s(32), B2 => n8,
                           ZN => n107);
   U141 : INV_X1 port map( A => A_s(31), ZN => n106);
   U142 : INV_X1 port map( A => A_ns(31), ZN => n105);
   U143 : OAI221_X1 port map( B1 => n3, B2 => n108, C1 => n2, C2 => n109, A => 
                           n110, ZN => O_32_port);
   U144 : AOI22_X1 port map( A1 => A_ns(31), A2 => n7, B1 => A_s(31), B2 => n8,
                           ZN => n110);
   U145 : INV_X1 port map( A => A_s(30), ZN => n109);
   U146 : INV_X1 port map( A => A_ns(30), ZN => n108);
   U147 : OAI221_X1 port map( B1 => n3, B2 => n111, C1 => n2, C2 => n112, A => 
                           n113, ZN => O_31_port);
   U148 : AOI22_X1 port map( A1 => A_ns(30), A2 => n7, B1 => A_s(30), B2 => n8,
                           ZN => n113);
   U149 : INV_X1 port map( A => A_s(29), ZN => n112);
   U150 : INV_X1 port map( A => A_ns(29), ZN => n111);
   U151 : OAI221_X1 port map( B1 => n3, B2 => n114, C1 => n2, C2 => n115, A => 
                           n116, ZN => O_30_port);
   U152 : AOI22_X1 port map( A1 => A_ns(29), A2 => n7, B1 => A_s(29), B2 => n8,
                           ZN => n116);
   U153 : INV_X1 port map( A => A_s(28), ZN => n115);
   U154 : INV_X1 port map( A => A_ns(28), ZN => n114);
   U155 : OAI221_X1 port map( B1 => n3, B2 => n117, C1 => n2, C2 => n118, A => 
                           n119, ZN => O_2_port);
   U156 : AOI22_X1 port map( A1 => A_ns(1), A2 => n7, B1 => A_s(1), B2 => n8, 
                           ZN => n119);
   U157 : OAI221_X1 port map( B1 => n3, B2 => n120, C1 => n2, C2 => n121, A => 
                           n122, ZN => O_29_port);
   U158 : AOI22_X1 port map( A1 => A_ns(28), A2 => n7, B1 => A_s(28), B2 => n8,
                           ZN => n122);
   U159 : INV_X1 port map( A => A_s(27), ZN => n121);
   U160 : INV_X1 port map( A => A_ns(27), ZN => n120);
   U161 : OAI221_X1 port map( B1 => n3, B2 => n123, C1 => n2, C2 => n124, A => 
                           n125, ZN => O_28_port);
   U162 : AOI22_X1 port map( A1 => A_ns(27), A2 => n7, B1 => A_s(27), B2 => n8,
                           ZN => n125);
   U163 : INV_X1 port map( A => A_s(26), ZN => n124);
   U164 : INV_X1 port map( A => A_ns(26), ZN => n123);
   U165 : OAI221_X1 port map( B1 => n3, B2 => n126, C1 => n2, C2 => n127, A => 
                           n128, ZN => O_27_port);
   U166 : AOI22_X1 port map( A1 => A_ns(26), A2 => n7, B1 => A_s(26), B2 => n8,
                           ZN => n128);
   U167 : INV_X1 port map( A => A_s(25), ZN => n127);
   U168 : INV_X1 port map( A => A_ns(25), ZN => n126);
   U169 : OAI221_X1 port map( B1 => n3, B2 => n129, C1 => n2, C2 => n130, A => 
                           n131, ZN => O_26_port);
   U170 : AOI22_X1 port map( A1 => A_ns(25), A2 => n7, B1 => A_s(25), B2 => n8,
                           ZN => n131);
   U171 : INV_X1 port map( A => A_s(24), ZN => n130);
   U172 : INV_X1 port map( A => A_ns(24), ZN => n129);
   U173 : OAI221_X1 port map( B1 => n3, B2 => n132, C1 => n2, C2 => n133, A => 
                           n134, ZN => O_25_port);
   U174 : AOI22_X1 port map( A1 => A_ns(24), A2 => n7, B1 => A_s(24), B2 => n8,
                           ZN => n134);
   U175 : INV_X1 port map( A => A_s(23), ZN => n133);
   U176 : INV_X1 port map( A => A_ns(23), ZN => n132);
   U177 : OAI221_X1 port map( B1 => n3, B2 => n135, C1 => n2, C2 => n136, A => 
                           n137, ZN => O_24_port);
   U178 : AOI22_X1 port map( A1 => A_ns(23), A2 => n7, B1 => A_s(23), B2 => n8,
                           ZN => n137);
   U179 : INV_X1 port map( A => A_s(22), ZN => n136);
   U180 : INV_X1 port map( A => A_ns(22), ZN => n135);
   U181 : OAI221_X1 port map( B1 => n3, B2 => n138, C1 => n2, C2 => n139, A => 
                           n140, ZN => O_23_port);
   U182 : AOI22_X1 port map( A1 => A_ns(22), A2 => n7, B1 => A_s(22), B2 => n8,
                           ZN => n140);
   U183 : INV_X1 port map( A => A_s(21), ZN => n139);
   U184 : INV_X1 port map( A => A_ns(21), ZN => n138);
   U185 : OAI221_X1 port map( B1 => n3, B2 => n141, C1 => n2, C2 => n142, A => 
                           n143, ZN => O_22_port);
   U186 : AOI22_X1 port map( A1 => A_ns(21), A2 => n7, B1 => A_s(21), B2 => n8,
                           ZN => n143);
   U187 : INV_X1 port map( A => A_s(20), ZN => n142);
   U188 : INV_X1 port map( A => A_ns(20), ZN => n141);
   U189 : OAI221_X1 port map( B1 => n3, B2 => n144, C1 => n2, C2 => n145, A => 
                           n146, ZN => O_21_port);
   U190 : AOI22_X1 port map( A1 => A_ns(20), A2 => n7, B1 => A_s(20), B2 => n8,
                           ZN => n146);
   U191 : INV_X1 port map( A => A_s(19), ZN => n145);
   U192 : INV_X1 port map( A => A_ns(19), ZN => n144);
   U193 : OAI221_X1 port map( B1 => n3, B2 => n147, C1 => n2, C2 => n148, A => 
                           n149, ZN => O_20_port);
   U194 : AOI22_X1 port map( A1 => A_ns(19), A2 => n7, B1 => A_s(19), B2 => n8,
                           ZN => n149);
   U195 : INV_X1 port map( A => A_s(18), ZN => n148);
   U196 : INV_X1 port map( A => A_ns(18), ZN => n147);
   U197 : OAI22_X1 port map( A1 => n150, A2 => n118, B1 => n151, B2 => n117, ZN
                           => O_1_port);
   U198 : INV_X1 port map( A => A_ns(0), ZN => n117);
   U199 : INV_X1 port map( A => A_s(0), ZN => n118);
   U200 : OAI221_X1 port map( B1 => n3, B2 => n152, C1 => n2, C2 => n153, A => 
                           n154, ZN => O_19_port);
   U201 : AOI22_X1 port map( A1 => A_ns(18), A2 => n7, B1 => A_s(18), B2 => n8,
                           ZN => n154);
   U202 : INV_X1 port map( A => A_s(17), ZN => n153);
   U203 : INV_X1 port map( A => A_ns(17), ZN => n152);
   U204 : OAI221_X1 port map( B1 => n3, B2 => n155, C1 => n2, C2 => n156, A => 
                           n157, ZN => O_18_port);
   U205 : AOI22_X1 port map( A1 => A_ns(17), A2 => n7, B1 => A_s(17), B2 => n8,
                           ZN => n157);
   U206 : INV_X1 port map( A => A_s(16), ZN => n156);
   U207 : INV_X1 port map( A => A_ns(16), ZN => n155);
   U208 : OAI221_X1 port map( B1 => n3, B2 => n158, C1 => n2, C2 => n159, A => 
                           n160, ZN => O_17_port);
   U209 : AOI22_X1 port map( A1 => A_ns(16), A2 => n7, B1 => A_s(16), B2 => n8,
                           ZN => n160);
   U210 : INV_X1 port map( A => A_s(15), ZN => n159);
   U211 : INV_X1 port map( A => A_ns(15), ZN => n158);
   U212 : OAI221_X1 port map( B1 => n3, B2 => n161, C1 => n2, C2 => n162, A => 
                           n163, ZN => O_16_port);
   U213 : AOI22_X1 port map( A1 => A_ns(15), A2 => n7, B1 => A_s(15), B2 => n8,
                           ZN => n163);
   U214 : INV_X1 port map( A => A_s(14), ZN => n162);
   U215 : INV_X1 port map( A => A_ns(14), ZN => n161);
   U216 : OAI221_X1 port map( B1 => n3, B2 => n164, C1 => n2, C2 => n165, A => 
                           n166, ZN => O_15_port);
   U217 : AOI22_X1 port map( A1 => A_ns(14), A2 => n7, B1 => A_s(14), B2 => n8,
                           ZN => n166);
   U218 : INV_X1 port map( A => A_s(13), ZN => n165);
   U219 : INV_X1 port map( A => A_ns(13), ZN => n164);
   U220 : OAI221_X1 port map( B1 => n3, B2 => n167, C1 => n2, C2 => n168, A => 
                           n169, ZN => O_14_port);
   U221 : AOI22_X1 port map( A1 => A_ns(13), A2 => n7, B1 => A_s(13), B2 => n8,
                           ZN => n169);
   U222 : INV_X1 port map( A => A_s(12), ZN => n168);
   U223 : INV_X1 port map( A => A_ns(12), ZN => n167);
   U224 : OAI221_X1 port map( B1 => n3, B2 => n170, C1 => n2, C2 => n171, A => 
                           n172, ZN => O_13_port);
   U225 : AOI22_X1 port map( A1 => A_ns(12), A2 => n7, B1 => A_s(12), B2 => n8,
                           ZN => n172);
   U226 : INV_X1 port map( A => A_s(11), ZN => n171);
   U227 : INV_X1 port map( A => A_ns(11), ZN => n170);
   U228 : OAI221_X1 port map( B1 => n3, B2 => n173, C1 => n2, C2 => n174, A => 
                           n175, ZN => O_12_port);
   U229 : AOI22_X1 port map( A1 => A_ns(11), A2 => n7, B1 => A_s(11), B2 => n8,
                           ZN => n175);
   U230 : INV_X1 port map( A => A_s(10), ZN => n174);
   U231 : INV_X1 port map( A => A_ns(10), ZN => n173);
   U232 : OAI221_X1 port map( B1 => n3, B2 => n176, C1 => n2, C2 => n177, A => 
                           n178, ZN => O_11_port);
   U233 : AOI22_X1 port map( A1 => A_ns(10), A2 => n7, B1 => A_s(10), B2 => n8,
                           ZN => n178);
   U234 : INV_X1 port map( A => A_s(9), ZN => n177);
   U235 : INV_X1 port map( A => A_ns(9), ZN => n176);
   U236 : OAI221_X1 port map( B1 => n179, B2 => n3, C1 => n180, C2 => n2, A => 
                           n181, ZN => O_10_port);
   U237 : AOI22_X1 port map( A1 => A_ns(9), A2 => n7, B1 => A_s(9), B2 => n8, 
                           ZN => n181);
   U238 : NAND2_X1 port map( A1 => n182, A2 => n150, ZN => n151);
   U239 : NAND2_X1 port map( A1 => n182, A2 => n183, ZN => n150);
   U240 : XOR2_X1 port map( A => B(25), B => B(26), Z => n182);
   U241 : INV_X1 port map( A => A_s(8), ZN => n180);
   U242 : INV_X1 port map( A => B(27), ZN => n183);
   U243 : INV_X1 port map( A => A_ns(8), ZN => n179);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT58_i24 is

   port( A_s, A_ns, B : in std_logic_vector (57 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (57 downto 0));

end BOOTHENC_NBIT58_i24;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT58_i24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_57_port, O_56_port, O_55_port, O_54_port, O_53_port,
      O_52_port, O_51_port, O_50_port, O_49_port, O_48_port, O_47_port, 
      O_46_port, O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, 
      O_40_port, O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, 
      O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, 
      O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, 
      O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, 
      O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, 
      O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, 
      O_3_port, O_2_port, O_1_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, 
      n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83
      , n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
      n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177 : std_logic;

begin
   O <= ( O_57_port, O_56_port, O_55_port, O_54_port, O_53_port, O_52_port, 
      O_51_port, O_50_port, O_49_port, O_48_port, O_47_port, O_46_port, 
      O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, 
      O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, 
      O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, 
      O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(55), A_s(54), A_s(53), A_s(52), A_s(51), A_s(50), A_s(49), 
      A_s(48), A_s(47), A_s(46), A_s(45), A_s(44), A_s(43), A_s(42), A_s(41), 
      A_s(40), A_s(39), A_s(38), A_s(37), A_s(36), A_s(35), A_s(34), A_s(33), 
      A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), A_s(25), 
      A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), A_s(17), 
      A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), 
      A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), 
      X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(55), A_ns(54), A_ns(53), A_ns(52), A_ns(51), A_ns(50), 
      A_ns(49), A_ns(48), A_ns(47), A_ns(46), A_ns(45), A_ns(44), A_ns(43), 
      A_ns(42), A_ns(41), A_ns(40), A_ns(39), A_ns(38), A_ns(37), A_ns(36), 
      A_ns(35), A_ns(34), A_ns(33), A_ns(32), A_ns(31), A_ns(30), A_ns(29), 
      A_ns(28), A_ns(27), A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), 
      A_ns(21), A_ns(20), A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), 
      A_ns(14), A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), 
      A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), 
      X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : AND3_X1 port map( A1 => B(24), A2 => n177, A3 => B(23), ZN => n1);
   U3 : INV_X4 port map( A => n1, ZN => n2);
   U4 : INV_X4 port map( A => n144, ZN => n8);
   U5 : INV_X4 port map( A => n145, ZN => n7);
   U6 : OR3_X4 port map( A1 => B(23), A2 => B(24), A3 => n177, ZN => n3);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n2, C2 => n5, A => n6, ZN
                           => O_9_port);
   U8 : AOI22_X1 port map( A1 => A_ns(8), A2 => n7, B1 => A_s(8), B2 => n8, ZN 
                           => n6);
   U9 : INV_X1 port map( A => A_s(7), ZN => n5);
   U10 : INV_X1 port map( A => A_ns(7), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n2, C2 => n10, A => n11,
                           ZN => O_8_port);
   U12 : AOI22_X1 port map( A1 => A_ns(7), A2 => n7, B1 => A_s(7), B2 => n8, ZN
                           => n11);
   U13 : INV_X1 port map( A => A_s(6), ZN => n10);
   U14 : INV_X1 port map( A => A_ns(6), ZN => n9);
   U15 : OAI221_X1 port map( B1 => n3, B2 => n12, C1 => n2, C2 => n13, A => n14
                           , ZN => O_7_port);
   U16 : AOI22_X1 port map( A1 => A_ns(6), A2 => n7, B1 => A_s(6), B2 => n8, ZN
                           => n14);
   U17 : INV_X1 port map( A => A_s(5), ZN => n13);
   U18 : INV_X1 port map( A => A_ns(5), ZN => n12);
   U19 : OAI221_X1 port map( B1 => n3, B2 => n15, C1 => n2, C2 => n16, A => n17
                           , ZN => O_6_port);
   U20 : AOI22_X1 port map( A1 => A_ns(5), A2 => n7, B1 => A_s(5), B2 => n8, ZN
                           => n17);
   U21 : INV_X1 port map( A => A_s(4), ZN => n16);
   U22 : INV_X1 port map( A => A_ns(4), ZN => n15);
   U23 : OAI221_X1 port map( B1 => n3, B2 => n18, C1 => n2, C2 => n19, A => n20
                           , ZN => O_5_port);
   U24 : AOI22_X1 port map( A1 => A_ns(4), A2 => n7, B1 => A_s(4), B2 => n8, ZN
                           => n20);
   U25 : INV_X1 port map( A => A_s(3), ZN => n19);
   U26 : INV_X1 port map( A => A_ns(3), ZN => n18);
   U27 : OAI221_X1 port map( B1 => n3, B2 => n21, C1 => n2, C2 => n22, A => n23
                           , ZN => O_57_port);
   U28 : AOI22_X1 port map( A1 => A_ns(56), A2 => n7, B1 => A_s(56), B2 => n8, 
                           ZN => n23);
   U29 : INV_X1 port map( A => A_s(55), ZN => n22);
   U30 : INV_X1 port map( A => A_ns(55), ZN => n21);
   U31 : OAI221_X1 port map( B1 => n3, B2 => n24, C1 => n2, C2 => n25, A => n26
                           , ZN => O_56_port);
   U32 : AOI22_X1 port map( A1 => A_ns(55), A2 => n7, B1 => A_s(55), B2 => n8, 
                           ZN => n26);
   U33 : INV_X1 port map( A => A_s(54), ZN => n25);
   U34 : INV_X1 port map( A => A_ns(54), ZN => n24);
   U35 : OAI221_X1 port map( B1 => n3, B2 => n27, C1 => n2, C2 => n28, A => n29
                           , ZN => O_55_port);
   U36 : AOI22_X1 port map( A1 => A_ns(54), A2 => n7, B1 => A_s(54), B2 => n8, 
                           ZN => n29);
   U37 : INV_X1 port map( A => A_s(53), ZN => n28);
   U38 : INV_X1 port map( A => A_ns(53), ZN => n27);
   U39 : OAI221_X1 port map( B1 => n3, B2 => n30, C1 => n2, C2 => n31, A => n32
                           , ZN => O_54_port);
   U40 : AOI22_X1 port map( A1 => A_ns(53), A2 => n7, B1 => A_s(53), B2 => n8, 
                           ZN => n32);
   U41 : INV_X1 port map( A => A_s(52), ZN => n31);
   U42 : INV_X1 port map( A => A_ns(52), ZN => n30);
   U43 : OAI221_X1 port map( B1 => n3, B2 => n33, C1 => n2, C2 => n34, A => n35
                           , ZN => O_53_port);
   U44 : AOI22_X1 port map( A1 => A_ns(52), A2 => n7, B1 => A_s(52), B2 => n8, 
                           ZN => n35);
   U45 : INV_X1 port map( A => A_s(51), ZN => n34);
   U46 : INV_X1 port map( A => A_ns(51), ZN => n33);
   U47 : OAI221_X1 port map( B1 => n3, B2 => n36, C1 => n2, C2 => n37, A => n38
                           , ZN => O_52_port);
   U48 : AOI22_X1 port map( A1 => A_ns(51), A2 => n7, B1 => A_s(51), B2 => n8, 
                           ZN => n38);
   U49 : INV_X1 port map( A => A_s(50), ZN => n37);
   U50 : INV_X1 port map( A => A_ns(50), ZN => n36);
   U51 : OAI221_X1 port map( B1 => n3, B2 => n39, C1 => n2, C2 => n40, A => n41
                           , ZN => O_51_port);
   U52 : AOI22_X1 port map( A1 => A_ns(50), A2 => n7, B1 => A_s(50), B2 => n8, 
                           ZN => n41);
   U53 : INV_X1 port map( A => A_s(49), ZN => n40);
   U54 : INV_X1 port map( A => A_ns(49), ZN => n39);
   U55 : OAI221_X1 port map( B1 => n3, B2 => n42, C1 => n2, C2 => n43, A => n44
                           , ZN => O_50_port);
   U56 : AOI22_X1 port map( A1 => A_ns(49), A2 => n7, B1 => A_s(49), B2 => n8, 
                           ZN => n44);
   U57 : INV_X1 port map( A => A_s(48), ZN => n43);
   U58 : INV_X1 port map( A => A_ns(48), ZN => n42);
   U59 : OAI221_X1 port map( B1 => n3, B2 => n45, C1 => n2, C2 => n46, A => n47
                           , ZN => O_4_port);
   U60 : AOI22_X1 port map( A1 => A_ns(3), A2 => n7, B1 => A_s(3), B2 => n8, ZN
                           => n47);
   U61 : INV_X1 port map( A => A_s(2), ZN => n46);
   U62 : INV_X1 port map( A => A_ns(2), ZN => n45);
   U63 : OAI221_X1 port map( B1 => n3, B2 => n48, C1 => n2, C2 => n49, A => n50
                           , ZN => O_49_port);
   U64 : AOI22_X1 port map( A1 => A_ns(48), A2 => n7, B1 => A_s(48), B2 => n8, 
                           ZN => n50);
   U65 : INV_X1 port map( A => A_s(47), ZN => n49);
   U66 : INV_X1 port map( A => A_ns(47), ZN => n48);
   U67 : OAI221_X1 port map( B1 => n3, B2 => n51, C1 => n2, C2 => n52, A => n53
                           , ZN => O_48_port);
   U68 : AOI22_X1 port map( A1 => A_ns(47), A2 => n7, B1 => A_s(47), B2 => n8, 
                           ZN => n53);
   U69 : INV_X1 port map( A => A_s(46), ZN => n52);
   U70 : INV_X1 port map( A => A_ns(46), ZN => n51);
   U71 : OAI221_X1 port map( B1 => n3, B2 => n54, C1 => n2, C2 => n55, A => n56
                           , ZN => O_47_port);
   U72 : AOI22_X1 port map( A1 => A_ns(46), A2 => n7, B1 => A_s(46), B2 => n8, 
                           ZN => n56);
   U73 : INV_X1 port map( A => A_s(45), ZN => n55);
   U74 : INV_X1 port map( A => A_ns(45), ZN => n54);
   U75 : OAI221_X1 port map( B1 => n3, B2 => n57, C1 => n2, C2 => n58, A => n59
                           , ZN => O_46_port);
   U76 : AOI22_X1 port map( A1 => A_ns(45), A2 => n7, B1 => A_s(45), B2 => n8, 
                           ZN => n59);
   U77 : INV_X1 port map( A => A_s(44), ZN => n58);
   U78 : INV_X1 port map( A => A_ns(44), ZN => n57);
   U79 : OAI221_X1 port map( B1 => n3, B2 => n60, C1 => n2, C2 => n61, A => n62
                           , ZN => O_45_port);
   U80 : AOI22_X1 port map( A1 => A_ns(44), A2 => n7, B1 => A_s(44), B2 => n8, 
                           ZN => n62);
   U81 : INV_X1 port map( A => A_s(43), ZN => n61);
   U82 : INV_X1 port map( A => A_ns(43), ZN => n60);
   U83 : OAI221_X1 port map( B1 => n3, B2 => n63, C1 => n2, C2 => n64, A => n65
                           , ZN => O_44_port);
   U84 : AOI22_X1 port map( A1 => A_ns(43), A2 => n7, B1 => A_s(43), B2 => n8, 
                           ZN => n65);
   U85 : INV_X1 port map( A => A_s(42), ZN => n64);
   U86 : INV_X1 port map( A => A_ns(42), ZN => n63);
   U87 : OAI221_X1 port map( B1 => n3, B2 => n66, C1 => n2, C2 => n67, A => n68
                           , ZN => O_43_port);
   U88 : AOI22_X1 port map( A1 => A_ns(42), A2 => n7, B1 => A_s(42), B2 => n8, 
                           ZN => n68);
   U89 : INV_X1 port map( A => A_s(41), ZN => n67);
   U90 : INV_X1 port map( A => A_ns(41), ZN => n66);
   U91 : OAI221_X1 port map( B1 => n3, B2 => n69, C1 => n2, C2 => n70, A => n71
                           , ZN => O_42_port);
   U92 : AOI22_X1 port map( A1 => A_ns(41), A2 => n7, B1 => A_s(41), B2 => n8, 
                           ZN => n71);
   U93 : INV_X1 port map( A => A_s(40), ZN => n70);
   U94 : INV_X1 port map( A => A_ns(40), ZN => n69);
   U95 : OAI221_X1 port map( B1 => n3, B2 => n72, C1 => n2, C2 => n73, A => n74
                           , ZN => O_41_port);
   U96 : AOI22_X1 port map( A1 => A_ns(40), A2 => n7, B1 => A_s(40), B2 => n8, 
                           ZN => n74);
   U97 : INV_X1 port map( A => A_s(39), ZN => n73);
   U98 : INV_X1 port map( A => A_ns(39), ZN => n72);
   U99 : OAI221_X1 port map( B1 => n3, B2 => n75, C1 => n2, C2 => n76, A => n77
                           , ZN => O_40_port);
   U100 : AOI22_X1 port map( A1 => A_ns(39), A2 => n7, B1 => A_s(39), B2 => n8,
                           ZN => n77);
   U101 : INV_X1 port map( A => A_s(38), ZN => n76);
   U102 : INV_X1 port map( A => A_ns(38), ZN => n75);
   U103 : OAI221_X1 port map( B1 => n3, B2 => n78, C1 => n2, C2 => n79, A => 
                           n80, ZN => O_3_port);
   U104 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n80);
   U105 : INV_X1 port map( A => A_s(1), ZN => n79);
   U106 : INV_X1 port map( A => A_ns(1), ZN => n78);
   U107 : OAI221_X1 port map( B1 => n3, B2 => n81, C1 => n2, C2 => n82, A => 
                           n83, ZN => O_39_port);
   U108 : AOI22_X1 port map( A1 => A_ns(38), A2 => n7, B1 => A_s(38), B2 => n8,
                           ZN => n83);
   U109 : INV_X1 port map( A => A_s(37), ZN => n82);
   U110 : INV_X1 port map( A => A_ns(37), ZN => n81);
   U111 : OAI221_X1 port map( B1 => n3, B2 => n84, C1 => n2, C2 => n85, A => 
                           n86, ZN => O_38_port);
   U112 : AOI22_X1 port map( A1 => A_ns(37), A2 => n7, B1 => A_s(37), B2 => n8,
                           ZN => n86);
   U113 : INV_X1 port map( A => A_s(36), ZN => n85);
   U114 : INV_X1 port map( A => A_ns(36), ZN => n84);
   U115 : OAI221_X1 port map( B1 => n3, B2 => n87, C1 => n2, C2 => n88, A => 
                           n89, ZN => O_37_port);
   U116 : AOI22_X1 port map( A1 => A_ns(36), A2 => n7, B1 => A_s(36), B2 => n8,
                           ZN => n89);
   U117 : INV_X1 port map( A => A_s(35), ZN => n88);
   U118 : INV_X1 port map( A => A_ns(35), ZN => n87);
   U119 : OAI221_X1 port map( B1 => n3, B2 => n90, C1 => n2, C2 => n91, A => 
                           n92, ZN => O_36_port);
   U120 : AOI22_X1 port map( A1 => A_ns(35), A2 => n7, B1 => A_s(35), B2 => n8,
                           ZN => n92);
   U121 : INV_X1 port map( A => A_s(34), ZN => n91);
   U122 : INV_X1 port map( A => A_ns(34), ZN => n90);
   U123 : OAI221_X1 port map( B1 => n3, B2 => n93, C1 => n2, C2 => n94, A => 
                           n95, ZN => O_35_port);
   U124 : AOI22_X1 port map( A1 => A_ns(34), A2 => n7, B1 => A_s(34), B2 => n8,
                           ZN => n95);
   U125 : INV_X1 port map( A => A_s(33), ZN => n94);
   U126 : INV_X1 port map( A => A_ns(33), ZN => n93);
   U127 : OAI221_X1 port map( B1 => n3, B2 => n96, C1 => n2, C2 => n97, A => 
                           n98, ZN => O_34_port);
   U128 : AOI22_X1 port map( A1 => A_ns(33), A2 => n7, B1 => A_s(33), B2 => n8,
                           ZN => n98);
   U129 : INV_X1 port map( A => A_s(32), ZN => n97);
   U130 : INV_X1 port map( A => A_ns(32), ZN => n96);
   U131 : OAI221_X1 port map( B1 => n3, B2 => n99, C1 => n2, C2 => n100, A => 
                           n101, ZN => O_33_port);
   U132 : AOI22_X1 port map( A1 => A_ns(32), A2 => n7, B1 => A_s(32), B2 => n8,
                           ZN => n101);
   U133 : INV_X1 port map( A => A_s(31), ZN => n100);
   U134 : INV_X1 port map( A => A_ns(31), ZN => n99);
   U135 : OAI221_X1 port map( B1 => n3, B2 => n102, C1 => n2, C2 => n103, A => 
                           n104, ZN => O_32_port);
   U136 : AOI22_X1 port map( A1 => A_ns(31), A2 => n7, B1 => A_s(31), B2 => n8,
                           ZN => n104);
   U137 : INV_X1 port map( A => A_s(30), ZN => n103);
   U138 : INV_X1 port map( A => A_ns(30), ZN => n102);
   U139 : OAI221_X1 port map( B1 => n3, B2 => n105, C1 => n2, C2 => n106, A => 
                           n107, ZN => O_31_port);
   U140 : AOI22_X1 port map( A1 => A_ns(30), A2 => n7, B1 => A_s(30), B2 => n8,
                           ZN => n107);
   U141 : INV_X1 port map( A => A_s(29), ZN => n106);
   U142 : INV_X1 port map( A => A_ns(29), ZN => n105);
   U143 : OAI221_X1 port map( B1 => n3, B2 => n108, C1 => n2, C2 => n109, A => 
                           n110, ZN => O_30_port);
   U144 : AOI22_X1 port map( A1 => A_ns(29), A2 => n7, B1 => A_s(29), B2 => n8,
                           ZN => n110);
   U145 : INV_X1 port map( A => A_s(28), ZN => n109);
   U146 : INV_X1 port map( A => A_ns(28), ZN => n108);
   U147 : OAI221_X1 port map( B1 => n3, B2 => n111, C1 => n2, C2 => n112, A => 
                           n113, ZN => O_2_port);
   U148 : AOI22_X1 port map( A1 => A_ns(1), A2 => n7, B1 => A_s(1), B2 => n8, 
                           ZN => n113);
   U149 : OAI221_X1 port map( B1 => n3, B2 => n114, C1 => n2, C2 => n115, A => 
                           n116, ZN => O_29_port);
   U150 : AOI22_X1 port map( A1 => A_ns(28), A2 => n7, B1 => A_s(28), B2 => n8,
                           ZN => n116);
   U151 : INV_X1 port map( A => A_s(27), ZN => n115);
   U152 : INV_X1 port map( A => A_ns(27), ZN => n114);
   U153 : OAI221_X1 port map( B1 => n3, B2 => n117, C1 => n2, C2 => n118, A => 
                           n119, ZN => O_28_port);
   U154 : AOI22_X1 port map( A1 => A_ns(27), A2 => n7, B1 => A_s(27), B2 => n8,
                           ZN => n119);
   U155 : INV_X1 port map( A => A_s(26), ZN => n118);
   U156 : INV_X1 port map( A => A_ns(26), ZN => n117);
   U157 : OAI221_X1 port map( B1 => n3, B2 => n120, C1 => n2, C2 => n121, A => 
                           n122, ZN => O_27_port);
   U158 : AOI22_X1 port map( A1 => A_ns(26), A2 => n7, B1 => A_s(26), B2 => n8,
                           ZN => n122);
   U159 : INV_X1 port map( A => A_s(25), ZN => n121);
   U160 : INV_X1 port map( A => A_ns(25), ZN => n120);
   U161 : OAI221_X1 port map( B1 => n3, B2 => n123, C1 => n2, C2 => n124, A => 
                           n125, ZN => O_26_port);
   U162 : AOI22_X1 port map( A1 => A_ns(25), A2 => n7, B1 => A_s(25), B2 => n8,
                           ZN => n125);
   U163 : INV_X1 port map( A => A_s(24), ZN => n124);
   U164 : INV_X1 port map( A => A_ns(24), ZN => n123);
   U165 : OAI221_X1 port map( B1 => n3, B2 => n126, C1 => n2, C2 => n127, A => 
                           n128, ZN => O_25_port);
   U166 : AOI22_X1 port map( A1 => A_ns(24), A2 => n7, B1 => A_s(24), B2 => n8,
                           ZN => n128);
   U167 : INV_X1 port map( A => A_s(23), ZN => n127);
   U168 : INV_X1 port map( A => A_ns(23), ZN => n126);
   U169 : OAI221_X1 port map( B1 => n3, B2 => n129, C1 => n2, C2 => n130, A => 
                           n131, ZN => O_24_port);
   U170 : AOI22_X1 port map( A1 => A_ns(23), A2 => n7, B1 => A_s(23), B2 => n8,
                           ZN => n131);
   U171 : INV_X1 port map( A => A_s(22), ZN => n130);
   U172 : INV_X1 port map( A => A_ns(22), ZN => n129);
   U173 : OAI221_X1 port map( B1 => n3, B2 => n132, C1 => n2, C2 => n133, A => 
                           n134, ZN => O_23_port);
   U174 : AOI22_X1 port map( A1 => A_ns(22), A2 => n7, B1 => A_s(22), B2 => n8,
                           ZN => n134);
   U175 : INV_X1 port map( A => A_s(21), ZN => n133);
   U176 : INV_X1 port map( A => A_ns(21), ZN => n132);
   U177 : OAI221_X1 port map( B1 => n3, B2 => n135, C1 => n2, C2 => n136, A => 
                           n137, ZN => O_22_port);
   U178 : AOI22_X1 port map( A1 => A_ns(21), A2 => n7, B1 => A_s(21), B2 => n8,
                           ZN => n137);
   U179 : INV_X1 port map( A => A_s(20), ZN => n136);
   U180 : INV_X1 port map( A => A_ns(20), ZN => n135);
   U181 : OAI221_X1 port map( B1 => n3, B2 => n138, C1 => n2, C2 => n139, A => 
                           n140, ZN => O_21_port);
   U182 : AOI22_X1 port map( A1 => A_ns(20), A2 => n7, B1 => A_s(20), B2 => n8,
                           ZN => n140);
   U183 : INV_X1 port map( A => A_s(19), ZN => n139);
   U184 : INV_X1 port map( A => A_ns(19), ZN => n138);
   U185 : OAI221_X1 port map( B1 => n3, B2 => n141, C1 => n2, C2 => n142, A => 
                           n143, ZN => O_20_port);
   U186 : AOI22_X1 port map( A1 => A_ns(19), A2 => n7, B1 => A_s(19), B2 => n8,
                           ZN => n143);
   U187 : INV_X1 port map( A => A_s(18), ZN => n142);
   U188 : INV_X1 port map( A => A_ns(18), ZN => n141);
   U189 : OAI22_X1 port map( A1 => n144, A2 => n112, B1 => n145, B2 => n111, ZN
                           => O_1_port);
   U190 : INV_X1 port map( A => A_ns(0), ZN => n111);
   U191 : INV_X1 port map( A => A_s(0), ZN => n112);
   U192 : OAI221_X1 port map( B1 => n3, B2 => n146, C1 => n2, C2 => n147, A => 
                           n148, ZN => O_19_port);
   U193 : AOI22_X1 port map( A1 => A_ns(18), A2 => n7, B1 => A_s(18), B2 => n8,
                           ZN => n148);
   U194 : INV_X1 port map( A => A_s(17), ZN => n147);
   U195 : INV_X1 port map( A => A_ns(17), ZN => n146);
   U196 : OAI221_X1 port map( B1 => n3, B2 => n149, C1 => n2, C2 => n150, A => 
                           n151, ZN => O_18_port);
   U197 : AOI22_X1 port map( A1 => A_ns(17), A2 => n7, B1 => A_s(17), B2 => n8,
                           ZN => n151);
   U198 : INV_X1 port map( A => A_s(16), ZN => n150);
   U199 : INV_X1 port map( A => A_ns(16), ZN => n149);
   U200 : OAI221_X1 port map( B1 => n3, B2 => n152, C1 => n2, C2 => n153, A => 
                           n154, ZN => O_17_port);
   U201 : AOI22_X1 port map( A1 => A_ns(16), A2 => n7, B1 => A_s(16), B2 => n8,
                           ZN => n154);
   U202 : INV_X1 port map( A => A_s(15), ZN => n153);
   U203 : INV_X1 port map( A => A_ns(15), ZN => n152);
   U204 : OAI221_X1 port map( B1 => n3, B2 => n155, C1 => n2, C2 => n156, A => 
                           n157, ZN => O_16_port);
   U205 : AOI22_X1 port map( A1 => A_ns(15), A2 => n7, B1 => A_s(15), B2 => n8,
                           ZN => n157);
   U206 : INV_X1 port map( A => A_s(14), ZN => n156);
   U207 : INV_X1 port map( A => A_ns(14), ZN => n155);
   U208 : OAI221_X1 port map( B1 => n3, B2 => n158, C1 => n2, C2 => n159, A => 
                           n160, ZN => O_15_port);
   U209 : AOI22_X1 port map( A1 => A_ns(14), A2 => n7, B1 => A_s(14), B2 => n8,
                           ZN => n160);
   U210 : INV_X1 port map( A => A_s(13), ZN => n159);
   U211 : INV_X1 port map( A => A_ns(13), ZN => n158);
   U212 : OAI221_X1 port map( B1 => n3, B2 => n161, C1 => n2, C2 => n162, A => 
                           n163, ZN => O_14_port);
   U213 : AOI22_X1 port map( A1 => A_ns(13), A2 => n7, B1 => A_s(13), B2 => n8,
                           ZN => n163);
   U214 : INV_X1 port map( A => A_s(12), ZN => n162);
   U215 : INV_X1 port map( A => A_ns(12), ZN => n161);
   U216 : OAI221_X1 port map( B1 => n3, B2 => n164, C1 => n2, C2 => n165, A => 
                           n166, ZN => O_13_port);
   U217 : AOI22_X1 port map( A1 => A_ns(12), A2 => n7, B1 => A_s(12), B2 => n8,
                           ZN => n166);
   U218 : INV_X1 port map( A => A_s(11), ZN => n165);
   U219 : INV_X1 port map( A => A_ns(11), ZN => n164);
   U220 : OAI221_X1 port map( B1 => n3, B2 => n167, C1 => n2, C2 => n168, A => 
                           n169, ZN => O_12_port);
   U221 : AOI22_X1 port map( A1 => A_ns(11), A2 => n7, B1 => A_s(11), B2 => n8,
                           ZN => n169);
   U222 : INV_X1 port map( A => A_s(10), ZN => n168);
   U223 : INV_X1 port map( A => A_ns(10), ZN => n167);
   U224 : OAI221_X1 port map( B1 => n3, B2 => n170, C1 => n2, C2 => n171, A => 
                           n172, ZN => O_11_port);
   U225 : AOI22_X1 port map( A1 => A_ns(10), A2 => n7, B1 => A_s(10), B2 => n8,
                           ZN => n172);
   U226 : INV_X1 port map( A => A_s(9), ZN => n171);
   U227 : INV_X1 port map( A => A_ns(9), ZN => n170);
   U228 : OAI221_X1 port map( B1 => n173, B2 => n3, C1 => n174, C2 => n2, A => 
                           n175, ZN => O_10_port);
   U229 : AOI22_X1 port map( A1 => A_ns(9), A2 => n7, B1 => A_s(9), B2 => n8, 
                           ZN => n175);
   U230 : NAND2_X1 port map( A1 => n176, A2 => n144, ZN => n145);
   U231 : NAND2_X1 port map( A1 => n176, A2 => n177, ZN => n144);
   U232 : XOR2_X1 port map( A => B(23), B => B(24), Z => n176);
   U233 : INV_X1 port map( A => A_s(8), ZN => n174);
   U234 : INV_X1 port map( A => B(25), ZN => n177);
   U235 : INV_X1 port map( A => A_ns(8), ZN => n173);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT56_i22 is

   port( A_s, A_ns, B : in std_logic_vector (55 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (55 downto 0));

end BOOTHENC_NBIT56_i22;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT56_i22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_55_port, O_54_port, O_53_port, O_52_port, O_51_port,
      O_50_port, O_49_port, O_48_port, O_47_port, O_46_port, O_45_port, 
      O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, O_39_port, 
      O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, 
      O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, 
      O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, 
      O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, 
      O_14_port, O_13_port, O_12_port, O_11_port, O_9_port, O_8_port, O_7_port,
      O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, n1, n2, n3, n4, n5, n6,
      n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, 
      n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36
      , n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, 
      n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65
      , n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, 
      n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94
      , n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107
      , n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
      n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, 
      n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, 
      n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, 
      n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, 
      n168, n169, n170, n171, O_1_port, O_10_port : std_logic;

begin
   O <= ( O_55_port, O_54_port, O_53_port, O_52_port, O_51_port, O_50_port, 
      O_49_port, O_48_port, O_47_port, O_46_port, O_45_port, O_44_port, 
      O_43_port, O_42_port, O_41_port, O_40_port, O_39_port, O_38_port, 
      O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, 
      O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, 
      O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, 
      O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, 
      O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, O_7_port,
      O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port
      );
   A_so <= ( A_s(53), A_s(52), A_s(51), A_s(50), A_s(49), A_s(48), A_s(47), 
      A_s(46), A_s(45), A_s(44), A_s(43), A_s(42), A_s(41), A_s(40), A_s(39), 
      A_s(38), A_s(37), A_s(36), A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), 
      A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), 
      A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), 
      A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), 
      A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, 
      X_Logic0_port );
   A_nso <= ( A_ns(53), A_ns(52), A_ns(51), A_ns(50), A_ns(49), A_ns(48), 
      A_ns(47), A_ns(46), A_ns(45), A_ns(44), A_ns(43), A_ns(42), A_ns(41), 
      A_ns(40), A_ns(39), A_ns(38), A_ns(37), A_ns(36), A_ns(35), A_ns(34), 
      A_ns(33), A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), A_ns(27), 
      A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), A_ns(20), 
      A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), A_ns(13), 
      A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5)
      , A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, 
      X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : AND3_X1 port map( A1 => B(22), A2 => n171, A3 => B(21), ZN => n1);
   U3 : INV_X4 port map( A => n1, ZN => n2);
   U4 : INV_X4 port map( A => n3, ZN => n12);
   U5 : INV_X4 port map( A => n5, ZN => n11);
   U6 : OR3_X4 port map( A1 => B(21), A2 => B(22), A3 => n171, ZN => n7);
   U7 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n5, B2 => n6, ZN => 
                           O_1_port);
   U8 : OAI221_X1 port map( B1 => n7, B2 => n8, C1 => n2, C2 => n9, A => n10, 
                           ZN => O_10_port);
   U9 : AOI22_X1 port map( A1 => A_ns(9), A2 => n11, B1 => A_s(9), B2 => n12, 
                           ZN => n10);
   U10 : INV_X1 port map( A => A_s(8), ZN => n9);
   U11 : INV_X1 port map( A => A_ns(8), ZN => n8);
   U12 : OAI221_X1 port map( B1 => n7, B2 => n13, C1 => n2, C2 => n14, A => n15
                           , ZN => O_9_port);
   U13 : AOI22_X1 port map( A1 => A_ns(8), A2 => n11, B1 => A_s(8), B2 => n12, 
                           ZN => n15);
   U14 : INV_X1 port map( A => A_s(7), ZN => n14);
   U15 : INV_X1 port map( A => A_ns(7), ZN => n13);
   U16 : OAI221_X1 port map( B1 => n7, B2 => n16, C1 => n2, C2 => n17, A => n18
                           , ZN => O_8_port);
   U17 : AOI22_X1 port map( A1 => A_ns(7), A2 => n11, B1 => A_s(7), B2 => n12, 
                           ZN => n18);
   U18 : INV_X1 port map( A => A_s(6), ZN => n17);
   U19 : INV_X1 port map( A => A_ns(6), ZN => n16);
   U20 : OAI221_X1 port map( B1 => n7, B2 => n19, C1 => n2, C2 => n20, A => n21
                           , ZN => O_7_port);
   U21 : AOI22_X1 port map( A1 => A_ns(6), A2 => n11, B1 => A_s(6), B2 => n12, 
                           ZN => n21);
   U22 : INV_X1 port map( A => A_s(5), ZN => n20);
   U23 : INV_X1 port map( A => A_ns(5), ZN => n19);
   U24 : OAI221_X1 port map( B1 => n7, B2 => n22, C1 => n2, C2 => n23, A => n24
                           , ZN => O_6_port);
   U25 : AOI22_X1 port map( A1 => A_ns(5), A2 => n11, B1 => A_s(5), B2 => n12, 
                           ZN => n24);
   U26 : INV_X1 port map( A => A_s(4), ZN => n23);
   U27 : INV_X1 port map( A => A_ns(4), ZN => n22);
   U28 : OAI221_X1 port map( B1 => n7, B2 => n25, C1 => n2, C2 => n26, A => n27
                           , ZN => O_5_port);
   U29 : AOI22_X1 port map( A1 => A_ns(4), A2 => n11, B1 => A_s(4), B2 => n12, 
                           ZN => n27);
   U30 : INV_X1 port map( A => A_s(3), ZN => n26);
   U31 : INV_X1 port map( A => A_ns(3), ZN => n25);
   U32 : OAI221_X1 port map( B1 => n7, B2 => n28, C1 => n2, C2 => n29, A => n30
                           , ZN => O_55_port);
   U33 : AOI22_X1 port map( A1 => A_ns(54), A2 => n11, B1 => A_s(54), B2 => n12
                           , ZN => n30);
   U34 : INV_X1 port map( A => A_s(53), ZN => n29);
   U35 : INV_X1 port map( A => A_ns(53), ZN => n28);
   U36 : OAI221_X1 port map( B1 => n7, B2 => n31, C1 => n2, C2 => n32, A => n33
                           , ZN => O_54_port);
   U37 : AOI22_X1 port map( A1 => A_ns(53), A2 => n11, B1 => A_s(53), B2 => n12
                           , ZN => n33);
   U38 : INV_X1 port map( A => A_s(52), ZN => n32);
   U39 : INV_X1 port map( A => A_ns(52), ZN => n31);
   U40 : OAI221_X1 port map( B1 => n7, B2 => n34, C1 => n2, C2 => n35, A => n36
                           , ZN => O_53_port);
   U41 : AOI22_X1 port map( A1 => A_ns(52), A2 => n11, B1 => A_s(52), B2 => n12
                           , ZN => n36);
   U42 : INV_X1 port map( A => A_s(51), ZN => n35);
   U43 : INV_X1 port map( A => A_ns(51), ZN => n34);
   U44 : OAI221_X1 port map( B1 => n7, B2 => n37, C1 => n2, C2 => n38, A => n39
                           , ZN => O_52_port);
   U45 : AOI22_X1 port map( A1 => A_ns(51), A2 => n11, B1 => A_s(51), B2 => n12
                           , ZN => n39);
   U46 : INV_X1 port map( A => A_s(50), ZN => n38);
   U47 : INV_X1 port map( A => A_ns(50), ZN => n37);
   U48 : OAI221_X1 port map( B1 => n7, B2 => n40, C1 => n2, C2 => n41, A => n42
                           , ZN => O_51_port);
   U49 : AOI22_X1 port map( A1 => A_ns(50), A2 => n11, B1 => A_s(50), B2 => n12
                           , ZN => n42);
   U50 : INV_X1 port map( A => A_s(49), ZN => n41);
   U51 : INV_X1 port map( A => A_ns(49), ZN => n40);
   U52 : OAI221_X1 port map( B1 => n7, B2 => n43, C1 => n2, C2 => n44, A => n45
                           , ZN => O_50_port);
   U53 : AOI22_X1 port map( A1 => A_ns(49), A2 => n11, B1 => A_s(49), B2 => n12
                           , ZN => n45);
   U54 : INV_X1 port map( A => A_s(48), ZN => n44);
   U55 : INV_X1 port map( A => A_ns(48), ZN => n43);
   U56 : OAI221_X1 port map( B1 => n7, B2 => n46, C1 => n2, C2 => n47, A => n48
                           , ZN => O_4_port);
   U57 : AOI22_X1 port map( A1 => A_ns(3), A2 => n11, B1 => A_s(3), B2 => n12, 
                           ZN => n48);
   U58 : INV_X1 port map( A => A_s(2), ZN => n47);
   U59 : INV_X1 port map( A => A_ns(2), ZN => n46);
   U60 : OAI221_X1 port map( B1 => n7, B2 => n49, C1 => n2, C2 => n50, A => n51
                           , ZN => O_49_port);
   U61 : AOI22_X1 port map( A1 => A_ns(48), A2 => n11, B1 => A_s(48), B2 => n12
                           , ZN => n51);
   U62 : INV_X1 port map( A => A_s(47), ZN => n50);
   U63 : INV_X1 port map( A => A_ns(47), ZN => n49);
   U64 : OAI221_X1 port map( B1 => n7, B2 => n52, C1 => n2, C2 => n53, A => n54
                           , ZN => O_48_port);
   U65 : AOI22_X1 port map( A1 => A_ns(47), A2 => n11, B1 => A_s(47), B2 => n12
                           , ZN => n54);
   U66 : INV_X1 port map( A => A_s(46), ZN => n53);
   U67 : INV_X1 port map( A => A_ns(46), ZN => n52);
   U68 : OAI221_X1 port map( B1 => n7, B2 => n55, C1 => n2, C2 => n56, A => n57
                           , ZN => O_47_port);
   U69 : AOI22_X1 port map( A1 => A_ns(46), A2 => n11, B1 => A_s(46), B2 => n12
                           , ZN => n57);
   U70 : INV_X1 port map( A => A_s(45), ZN => n56);
   U71 : INV_X1 port map( A => A_ns(45), ZN => n55);
   U72 : OAI221_X1 port map( B1 => n7, B2 => n58, C1 => n2, C2 => n59, A => n60
                           , ZN => O_46_port);
   U73 : AOI22_X1 port map( A1 => A_ns(45), A2 => n11, B1 => A_s(45), B2 => n12
                           , ZN => n60);
   U74 : INV_X1 port map( A => A_s(44), ZN => n59);
   U75 : INV_X1 port map( A => A_ns(44), ZN => n58);
   U76 : OAI221_X1 port map( B1 => n7, B2 => n61, C1 => n2, C2 => n62, A => n63
                           , ZN => O_45_port);
   U77 : AOI22_X1 port map( A1 => A_ns(44), A2 => n11, B1 => A_s(44), B2 => n12
                           , ZN => n63);
   U78 : INV_X1 port map( A => A_s(43), ZN => n62);
   U79 : INV_X1 port map( A => A_ns(43), ZN => n61);
   U80 : OAI221_X1 port map( B1 => n7, B2 => n64, C1 => n2, C2 => n65, A => n66
                           , ZN => O_44_port);
   U81 : AOI22_X1 port map( A1 => A_ns(43), A2 => n11, B1 => A_s(43), B2 => n12
                           , ZN => n66);
   U82 : INV_X1 port map( A => A_s(42), ZN => n65);
   U83 : INV_X1 port map( A => A_ns(42), ZN => n64);
   U84 : OAI221_X1 port map( B1 => n7, B2 => n67, C1 => n2, C2 => n68, A => n69
                           , ZN => O_43_port);
   U85 : AOI22_X1 port map( A1 => A_ns(42), A2 => n11, B1 => A_s(42), B2 => n12
                           , ZN => n69);
   U86 : INV_X1 port map( A => A_s(41), ZN => n68);
   U87 : INV_X1 port map( A => A_ns(41), ZN => n67);
   U88 : OAI221_X1 port map( B1 => n7, B2 => n70, C1 => n2, C2 => n71, A => n72
                           , ZN => O_42_port);
   U89 : AOI22_X1 port map( A1 => A_ns(41), A2 => n11, B1 => A_s(41), B2 => n12
                           , ZN => n72);
   U90 : INV_X1 port map( A => A_s(40), ZN => n71);
   U91 : INV_X1 port map( A => A_ns(40), ZN => n70);
   U92 : OAI221_X1 port map( B1 => n7, B2 => n73, C1 => n2, C2 => n74, A => n75
                           , ZN => O_41_port);
   U93 : AOI22_X1 port map( A1 => A_ns(40), A2 => n11, B1 => A_s(40), B2 => n12
                           , ZN => n75);
   U94 : INV_X1 port map( A => A_s(39), ZN => n74);
   U95 : INV_X1 port map( A => A_ns(39), ZN => n73);
   U96 : OAI221_X1 port map( B1 => n7, B2 => n76, C1 => n2, C2 => n77, A => n78
                           , ZN => O_40_port);
   U97 : AOI22_X1 port map( A1 => A_ns(39), A2 => n11, B1 => A_s(39), B2 => n12
                           , ZN => n78);
   U98 : INV_X1 port map( A => A_s(38), ZN => n77);
   U99 : INV_X1 port map( A => A_ns(38), ZN => n76);
   U100 : OAI221_X1 port map( B1 => n7, B2 => n79, C1 => n2, C2 => n80, A => 
                           n81, ZN => O_3_port);
   U101 : AOI22_X1 port map( A1 => A_ns(2), A2 => n11, B1 => A_s(2), B2 => n12,
                           ZN => n81);
   U102 : INV_X1 port map( A => A_s(1), ZN => n80);
   U103 : INV_X1 port map( A => A_ns(1), ZN => n79);
   U104 : OAI221_X1 port map( B1 => n7, B2 => n82, C1 => n2, C2 => n83, A => 
                           n84, ZN => O_39_port);
   U105 : AOI22_X1 port map( A1 => A_ns(38), A2 => n11, B1 => A_s(38), B2 => 
                           n12, ZN => n84);
   U106 : INV_X1 port map( A => A_s(37), ZN => n83);
   U107 : INV_X1 port map( A => A_ns(37), ZN => n82);
   U108 : OAI221_X1 port map( B1 => n7, B2 => n85, C1 => n2, C2 => n86, A => 
                           n87, ZN => O_38_port);
   U109 : AOI22_X1 port map( A1 => A_ns(37), A2 => n11, B1 => A_s(37), B2 => 
                           n12, ZN => n87);
   U110 : INV_X1 port map( A => A_s(36), ZN => n86);
   U111 : INV_X1 port map( A => A_ns(36), ZN => n85);
   U112 : OAI221_X1 port map( B1 => n7, B2 => n88, C1 => n2, C2 => n89, A => 
                           n90, ZN => O_37_port);
   U113 : AOI22_X1 port map( A1 => A_ns(36), A2 => n11, B1 => A_s(36), B2 => 
                           n12, ZN => n90);
   U114 : INV_X1 port map( A => A_s(35), ZN => n89);
   U115 : INV_X1 port map( A => A_ns(35), ZN => n88);
   U116 : OAI221_X1 port map( B1 => n7, B2 => n91, C1 => n2, C2 => n92, A => 
                           n93, ZN => O_36_port);
   U117 : AOI22_X1 port map( A1 => A_ns(35), A2 => n11, B1 => A_s(35), B2 => 
                           n12, ZN => n93);
   U118 : INV_X1 port map( A => A_s(34), ZN => n92);
   U119 : INV_X1 port map( A => A_ns(34), ZN => n91);
   U120 : OAI221_X1 port map( B1 => n7, B2 => n94, C1 => n2, C2 => n95, A => 
                           n96, ZN => O_35_port);
   U121 : AOI22_X1 port map( A1 => A_ns(34), A2 => n11, B1 => A_s(34), B2 => 
                           n12, ZN => n96);
   U122 : INV_X1 port map( A => A_s(33), ZN => n95);
   U123 : INV_X1 port map( A => A_ns(33), ZN => n94);
   U124 : OAI221_X1 port map( B1 => n7, B2 => n97, C1 => n2, C2 => n98, A => 
                           n99, ZN => O_34_port);
   U125 : AOI22_X1 port map( A1 => A_ns(33), A2 => n11, B1 => A_s(33), B2 => 
                           n12, ZN => n99);
   U126 : INV_X1 port map( A => A_s(32), ZN => n98);
   U127 : INV_X1 port map( A => A_ns(32), ZN => n97);
   U128 : OAI221_X1 port map( B1 => n7, B2 => n100, C1 => n2, C2 => n101, A => 
                           n102, ZN => O_33_port);
   U129 : AOI22_X1 port map( A1 => A_ns(32), A2 => n11, B1 => A_s(32), B2 => 
                           n12, ZN => n102);
   U130 : INV_X1 port map( A => A_s(31), ZN => n101);
   U131 : INV_X1 port map( A => A_ns(31), ZN => n100);
   U132 : OAI221_X1 port map( B1 => n7, B2 => n103, C1 => n2, C2 => n104, A => 
                           n105, ZN => O_32_port);
   U133 : AOI22_X1 port map( A1 => A_ns(31), A2 => n11, B1 => A_s(31), B2 => 
                           n12, ZN => n105);
   U134 : INV_X1 port map( A => A_s(30), ZN => n104);
   U135 : INV_X1 port map( A => A_ns(30), ZN => n103);
   U136 : OAI221_X1 port map( B1 => n7, B2 => n106, C1 => n2, C2 => n107, A => 
                           n108, ZN => O_31_port);
   U137 : AOI22_X1 port map( A1 => A_ns(30), A2 => n11, B1 => A_s(30), B2 => 
                           n12, ZN => n108);
   U138 : INV_X1 port map( A => A_s(29), ZN => n107);
   U139 : INV_X1 port map( A => A_ns(29), ZN => n106);
   U140 : OAI221_X1 port map( B1 => n7, B2 => n109, C1 => n2, C2 => n110, A => 
                           n111, ZN => O_30_port);
   U141 : AOI22_X1 port map( A1 => A_ns(29), A2 => n11, B1 => A_s(29), B2 => 
                           n12, ZN => n111);
   U142 : INV_X1 port map( A => A_s(28), ZN => n110);
   U143 : INV_X1 port map( A => A_ns(28), ZN => n109);
   U144 : OAI221_X1 port map( B1 => n6, B2 => n7, C1 => n4, C2 => n2, A => n112
                           , ZN => O_2_port);
   U145 : AOI22_X1 port map( A1 => A_ns(1), A2 => n11, B1 => A_s(1), B2 => n12,
                           ZN => n112);
   U146 : INV_X1 port map( A => A_s(0), ZN => n4);
   U147 : INV_X1 port map( A => A_ns(0), ZN => n6);
   U148 : OAI221_X1 port map( B1 => n7, B2 => n113, C1 => n2, C2 => n114, A => 
                           n115, ZN => O_29_port);
   U149 : AOI22_X1 port map( A1 => A_ns(28), A2 => n11, B1 => A_s(28), B2 => 
                           n12, ZN => n115);
   U150 : INV_X1 port map( A => A_s(27), ZN => n114);
   U151 : INV_X1 port map( A => A_ns(27), ZN => n113);
   U152 : OAI221_X1 port map( B1 => n7, B2 => n116, C1 => n2, C2 => n117, A => 
                           n118, ZN => O_28_port);
   U153 : AOI22_X1 port map( A1 => A_ns(27), A2 => n11, B1 => A_s(27), B2 => 
                           n12, ZN => n118);
   U154 : INV_X1 port map( A => A_s(26), ZN => n117);
   U155 : INV_X1 port map( A => A_ns(26), ZN => n116);
   U156 : OAI221_X1 port map( B1 => n7, B2 => n119, C1 => n2, C2 => n120, A => 
                           n121, ZN => O_27_port);
   U157 : AOI22_X1 port map( A1 => A_ns(26), A2 => n11, B1 => A_s(26), B2 => 
                           n12, ZN => n121);
   U158 : INV_X1 port map( A => A_s(25), ZN => n120);
   U159 : INV_X1 port map( A => A_ns(25), ZN => n119);
   U160 : OAI221_X1 port map( B1 => n7, B2 => n122, C1 => n2, C2 => n123, A => 
                           n124, ZN => O_26_port);
   U161 : AOI22_X1 port map( A1 => A_ns(25), A2 => n11, B1 => A_s(25), B2 => 
                           n12, ZN => n124);
   U162 : INV_X1 port map( A => A_s(24), ZN => n123);
   U163 : INV_X1 port map( A => A_ns(24), ZN => n122);
   U164 : OAI221_X1 port map( B1 => n7, B2 => n125, C1 => n2, C2 => n126, A => 
                           n127, ZN => O_25_port);
   U165 : AOI22_X1 port map( A1 => A_ns(24), A2 => n11, B1 => A_s(24), B2 => 
                           n12, ZN => n127);
   U166 : INV_X1 port map( A => A_s(23), ZN => n126);
   U167 : INV_X1 port map( A => A_ns(23), ZN => n125);
   U168 : OAI221_X1 port map( B1 => n7, B2 => n128, C1 => n2, C2 => n129, A => 
                           n130, ZN => O_24_port);
   U169 : AOI22_X1 port map( A1 => A_ns(23), A2 => n11, B1 => A_s(23), B2 => 
                           n12, ZN => n130);
   U170 : INV_X1 port map( A => A_s(22), ZN => n129);
   U171 : INV_X1 port map( A => A_ns(22), ZN => n128);
   U172 : OAI221_X1 port map( B1 => n7, B2 => n131, C1 => n2, C2 => n132, A => 
                           n133, ZN => O_23_port);
   U173 : AOI22_X1 port map( A1 => A_ns(22), A2 => n11, B1 => A_s(22), B2 => 
                           n12, ZN => n133);
   U174 : INV_X1 port map( A => A_s(21), ZN => n132);
   U175 : INV_X1 port map( A => A_ns(21), ZN => n131);
   U176 : OAI221_X1 port map( B1 => n7, B2 => n134, C1 => n2, C2 => n135, A => 
                           n136, ZN => O_22_port);
   U177 : AOI22_X1 port map( A1 => A_ns(21), A2 => n11, B1 => A_s(21), B2 => 
                           n12, ZN => n136);
   U178 : INV_X1 port map( A => A_s(20), ZN => n135);
   U179 : INV_X1 port map( A => A_ns(20), ZN => n134);
   U180 : OAI221_X1 port map( B1 => n7, B2 => n137, C1 => n2, C2 => n138, A => 
                           n139, ZN => O_21_port);
   U181 : AOI22_X1 port map( A1 => A_ns(20), A2 => n11, B1 => A_s(20), B2 => 
                           n12, ZN => n139);
   U182 : INV_X1 port map( A => A_s(19), ZN => n138);
   U183 : INV_X1 port map( A => A_ns(19), ZN => n137);
   U184 : OAI221_X1 port map( B1 => n7, B2 => n140, C1 => n2, C2 => n141, A => 
                           n142, ZN => O_20_port);
   U185 : AOI22_X1 port map( A1 => A_ns(19), A2 => n11, B1 => A_s(19), B2 => 
                           n12, ZN => n142);
   U186 : INV_X1 port map( A => A_s(18), ZN => n141);
   U187 : INV_X1 port map( A => A_ns(18), ZN => n140);
   U188 : OAI221_X1 port map( B1 => n7, B2 => n143, C1 => n2, C2 => n144, A => 
                           n145, ZN => O_19_port);
   U189 : AOI22_X1 port map( A1 => A_ns(18), A2 => n11, B1 => A_s(18), B2 => 
                           n12, ZN => n145);
   U190 : INV_X1 port map( A => A_s(17), ZN => n144);
   U191 : INV_X1 port map( A => A_ns(17), ZN => n143);
   U192 : OAI221_X1 port map( B1 => n7, B2 => n146, C1 => n2, C2 => n147, A => 
                           n148, ZN => O_18_port);
   U193 : AOI22_X1 port map( A1 => A_ns(17), A2 => n11, B1 => A_s(17), B2 => 
                           n12, ZN => n148);
   U194 : INV_X1 port map( A => A_s(16), ZN => n147);
   U195 : INV_X1 port map( A => A_ns(16), ZN => n146);
   U196 : OAI221_X1 port map( B1 => n7, B2 => n149, C1 => n2, C2 => n150, A => 
                           n151, ZN => O_17_port);
   U197 : AOI22_X1 port map( A1 => A_ns(16), A2 => n11, B1 => A_s(16), B2 => 
                           n12, ZN => n151);
   U198 : INV_X1 port map( A => A_s(15), ZN => n150);
   U199 : INV_X1 port map( A => A_ns(15), ZN => n149);
   U200 : OAI221_X1 port map( B1 => n7, B2 => n152, C1 => n2, C2 => n153, A => 
                           n154, ZN => O_16_port);
   U201 : AOI22_X1 port map( A1 => A_ns(15), A2 => n11, B1 => A_s(15), B2 => 
                           n12, ZN => n154);
   U202 : INV_X1 port map( A => A_s(14), ZN => n153);
   U203 : INV_X1 port map( A => A_ns(14), ZN => n152);
   U204 : OAI221_X1 port map( B1 => n7, B2 => n155, C1 => n2, C2 => n156, A => 
                           n157, ZN => O_15_port);
   U205 : AOI22_X1 port map( A1 => A_ns(14), A2 => n11, B1 => A_s(14), B2 => 
                           n12, ZN => n157);
   U206 : INV_X1 port map( A => A_s(13), ZN => n156);
   U207 : INV_X1 port map( A => A_ns(13), ZN => n155);
   U208 : OAI221_X1 port map( B1 => n7, B2 => n158, C1 => n2, C2 => n159, A => 
                           n160, ZN => O_14_port);
   U209 : AOI22_X1 port map( A1 => A_ns(13), A2 => n11, B1 => A_s(13), B2 => 
                           n12, ZN => n160);
   U210 : INV_X1 port map( A => A_s(12), ZN => n159);
   U211 : INV_X1 port map( A => A_ns(12), ZN => n158);
   U212 : OAI221_X1 port map( B1 => n7, B2 => n161, C1 => n2, C2 => n162, A => 
                           n163, ZN => O_13_port);
   U213 : AOI22_X1 port map( A1 => A_ns(12), A2 => n11, B1 => A_s(12), B2 => 
                           n12, ZN => n163);
   U214 : INV_X1 port map( A => A_s(11), ZN => n162);
   U215 : INV_X1 port map( A => A_ns(11), ZN => n161);
   U216 : OAI221_X1 port map( B1 => n7, B2 => n164, C1 => n2, C2 => n165, A => 
                           n166, ZN => O_12_port);
   U217 : AOI22_X1 port map( A1 => A_ns(11), A2 => n11, B1 => A_s(11), B2 => 
                           n12, ZN => n166);
   U218 : INV_X1 port map( A => A_s(10), ZN => n165);
   U219 : INV_X1 port map( A => A_ns(10), ZN => n164);
   U220 : OAI221_X1 port map( B1 => n7, B2 => n167, C1 => n2, C2 => n168, A => 
                           n169, ZN => O_11_port);
   U221 : AOI22_X1 port map( A1 => A_ns(10), A2 => n11, B1 => A_s(10), B2 => 
                           n12, ZN => n169);
   U222 : NAND2_X1 port map( A1 => n170, A2 => n3, ZN => n5);
   U223 : NAND2_X1 port map( A1 => n170, A2 => n171, ZN => n3);
   U224 : XOR2_X1 port map( A => B(21), B => B(22), Z => n170);
   U225 : INV_X1 port map( A => A_s(9), ZN => n168);
   U226 : INV_X1 port map( A => A_ns(9), ZN => n167);
   U227 : INV_X1 port map( A => B(23), ZN => n171);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT54_i20 is

   port( A_s, A_ns, B : in std_logic_vector (53 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (53 downto 0));

end BOOTHENC_NBIT54_i20;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT54_i20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, O_53_port, O_52_port, O_51_port, O_50_port, O_49_port,
      O_48_port, O_47_port, O_46_port, O_45_port, O_44_port, O_43_port, 
      O_42_port, O_41_port, O_40_port, O_39_port, O_38_port, O_37_port, 
      O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, 
      O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, 
      O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, 
      O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, 
      O_12_port, O_11_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, 
      O_4_port, O_3_port, O_2_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, 
      n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83
      , n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
      n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, O_1_port, O_10_port
      : std_logic;

begin
   O <= ( O_53_port, O_52_port, O_51_port, O_50_port, O_49_port, O_48_port, 
      O_47_port, O_46_port, O_45_port, O_44_port, O_43_port, O_42_port, 
      O_41_port, O_40_port, O_39_port, O_38_port, O_37_port, O_36_port, 
      O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, 
      O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, 
      O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, 
      O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, 
      O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, 
      O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(51), A_s(50), A_s(49), A_s(48), A_s(47), A_s(46), A_s(45), 
      A_s(44), A_s(43), A_s(42), A_s(41), A_s(40), A_s(39), A_s(38), A_s(37), 
      A_s(36), A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), 
      A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), 
      A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), 
      A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4)
      , A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(51), A_ns(50), A_ns(49), A_ns(48), A_ns(47), A_ns(46), 
      A_ns(45), A_ns(44), A_ns(43), A_ns(42), A_ns(41), A_ns(40), A_ns(39), 
      A_ns(38), A_ns(37), A_ns(36), A_ns(35), A_ns(34), A_ns(33), A_ns(32), 
      A_ns(31), A_ns(30), A_ns(29), A_ns(28), A_ns(27), A_ns(26), A_ns(25), 
      A_ns(24), A_ns(23), A_ns(22), A_ns(21), A_ns(20), A_ns(19), A_ns(18), 
      A_ns(17), A_ns(16), A_ns(15), A_ns(14), A_ns(13), A_ns(12), A_ns(11), 
      A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), 
      A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : AND3_X1 port map( A1 => B(20), A2 => n166, A3 => B(19), ZN => n1);
   U3 : INV_X1 port map( A => n1, ZN => n2);
   U4 : INV_X1 port map( A => n1, ZN => n3);
   U5 : INV_X4 port map( A => n4, ZN => n13);
   U6 : INV_X4 port map( A => n6, ZN => n12);
   U7 : OR3_X4 port map( A1 => B(19), A2 => B(20), A3 => n166, ZN => n8);
   U8 : OAI22_X1 port map( A1 => n4, A2 => n5, B1 => n6, B2 => n7, ZN => 
                           O_1_port);
   U9 : OAI221_X1 port map( B1 => n8, B2 => n9, C1 => n3, C2 => n10, A => n11, 
                           ZN => O_10_port);
   U10 : AOI22_X1 port map( A1 => A_ns(9), A2 => n12, B1 => A_s(9), B2 => n13, 
                           ZN => n11);
   U11 : INV_X1 port map( A => A_s(8), ZN => n10);
   U12 : INV_X1 port map( A => A_ns(8), ZN => n9);
   U13 : OAI221_X1 port map( B1 => n8, B2 => n14, C1 => n2, C2 => n15, A => n16
                           , ZN => O_9_port);
   U14 : AOI22_X1 port map( A1 => A_ns(8), A2 => n12, B1 => A_s(8), B2 => n13, 
                           ZN => n16);
   U15 : INV_X1 port map( A => A_s(7), ZN => n15);
   U16 : INV_X1 port map( A => A_ns(7), ZN => n14);
   U17 : OAI221_X1 port map( B1 => n8, B2 => n17, C1 => n3, C2 => n18, A => n19
                           , ZN => O_8_port);
   U18 : AOI22_X1 port map( A1 => A_ns(7), A2 => n12, B1 => A_s(7), B2 => n13, 
                           ZN => n19);
   U19 : INV_X1 port map( A => A_s(6), ZN => n18);
   U20 : INV_X1 port map( A => A_ns(6), ZN => n17);
   U21 : OAI221_X1 port map( B1 => n8, B2 => n20, C1 => n2, C2 => n21, A => n22
                           , ZN => O_7_port);
   U22 : AOI22_X1 port map( A1 => A_ns(6), A2 => n12, B1 => A_s(6), B2 => n13, 
                           ZN => n22);
   U23 : INV_X1 port map( A => A_s(5), ZN => n21);
   U24 : INV_X1 port map( A => A_ns(5), ZN => n20);
   U25 : OAI221_X1 port map( B1 => n8, B2 => n23, C1 => n3, C2 => n24, A => n25
                           , ZN => O_6_port);
   U26 : AOI22_X1 port map( A1 => A_ns(5), A2 => n12, B1 => A_s(5), B2 => n13, 
                           ZN => n25);
   U27 : INV_X1 port map( A => A_s(4), ZN => n24);
   U28 : INV_X1 port map( A => A_ns(4), ZN => n23);
   U29 : OAI221_X1 port map( B1 => n8, B2 => n26, C1 => n2, C2 => n27, A => n28
                           , ZN => O_5_port);
   U30 : AOI22_X1 port map( A1 => A_ns(4), A2 => n12, B1 => A_s(4), B2 => n13, 
                           ZN => n28);
   U31 : INV_X1 port map( A => A_s(3), ZN => n27);
   U32 : INV_X1 port map( A => A_ns(3), ZN => n26);
   U33 : OAI221_X1 port map( B1 => n8, B2 => n29, C1 => n3, C2 => n30, A => n31
                           , ZN => O_53_port);
   U34 : AOI22_X1 port map( A1 => A_ns(52), A2 => n12, B1 => A_s(52), B2 => n13
                           , ZN => n31);
   U35 : INV_X1 port map( A => A_s(51), ZN => n30);
   U36 : INV_X1 port map( A => A_ns(51), ZN => n29);
   U37 : OAI221_X1 port map( B1 => n8, B2 => n32, C1 => n2, C2 => n33, A => n34
                           , ZN => O_52_port);
   U38 : AOI22_X1 port map( A1 => A_ns(51), A2 => n12, B1 => A_s(51), B2 => n13
                           , ZN => n34);
   U39 : INV_X1 port map( A => A_s(50), ZN => n33);
   U40 : INV_X1 port map( A => A_ns(50), ZN => n32);
   U41 : OAI221_X1 port map( B1 => n8, B2 => n35, C1 => n3, C2 => n36, A => n37
                           , ZN => O_51_port);
   U42 : AOI22_X1 port map( A1 => A_ns(50), A2 => n12, B1 => A_s(50), B2 => n13
                           , ZN => n37);
   U43 : INV_X1 port map( A => A_s(49), ZN => n36);
   U44 : INV_X1 port map( A => A_ns(49), ZN => n35);
   U45 : OAI221_X1 port map( B1 => n8, B2 => n38, C1 => n2, C2 => n39, A => n40
                           , ZN => O_50_port);
   U46 : AOI22_X1 port map( A1 => A_ns(49), A2 => n12, B1 => A_s(49), B2 => n13
                           , ZN => n40);
   U47 : INV_X1 port map( A => A_s(48), ZN => n39);
   U48 : INV_X1 port map( A => A_ns(48), ZN => n38);
   U49 : OAI221_X1 port map( B1 => n8, B2 => n41, C1 => n3, C2 => n42, A => n43
                           , ZN => O_4_port);
   U50 : AOI22_X1 port map( A1 => A_ns(3), A2 => n12, B1 => A_s(3), B2 => n13, 
                           ZN => n43);
   U51 : INV_X1 port map( A => A_s(2), ZN => n42);
   U52 : INV_X1 port map( A => A_ns(2), ZN => n41);
   U53 : OAI221_X1 port map( B1 => n8, B2 => n44, C1 => n2, C2 => n45, A => n46
                           , ZN => O_49_port);
   U54 : AOI22_X1 port map( A1 => A_ns(48), A2 => n12, B1 => A_s(48), B2 => n13
                           , ZN => n46);
   U55 : INV_X1 port map( A => A_s(47), ZN => n45);
   U56 : INV_X1 port map( A => A_ns(47), ZN => n44);
   U57 : OAI221_X1 port map( B1 => n8, B2 => n47, C1 => n3, C2 => n48, A => n49
                           , ZN => O_48_port);
   U58 : AOI22_X1 port map( A1 => A_ns(47), A2 => n12, B1 => A_s(47), B2 => n13
                           , ZN => n49);
   U59 : INV_X1 port map( A => A_s(46), ZN => n48);
   U60 : INV_X1 port map( A => A_ns(46), ZN => n47);
   U61 : OAI221_X1 port map( B1 => n8, B2 => n50, C1 => n2, C2 => n51, A => n52
                           , ZN => O_47_port);
   U62 : AOI22_X1 port map( A1 => A_ns(46), A2 => n12, B1 => A_s(46), B2 => n13
                           , ZN => n52);
   U63 : INV_X1 port map( A => A_s(45), ZN => n51);
   U64 : INV_X1 port map( A => A_ns(45), ZN => n50);
   U65 : OAI221_X1 port map( B1 => n8, B2 => n53, C1 => n3, C2 => n54, A => n55
                           , ZN => O_46_port);
   U66 : AOI22_X1 port map( A1 => A_ns(45), A2 => n12, B1 => A_s(45), B2 => n13
                           , ZN => n55);
   U67 : INV_X1 port map( A => A_s(44), ZN => n54);
   U68 : INV_X1 port map( A => A_ns(44), ZN => n53);
   U69 : OAI221_X1 port map( B1 => n8, B2 => n56, C1 => n2, C2 => n57, A => n58
                           , ZN => O_45_port);
   U70 : AOI22_X1 port map( A1 => A_ns(44), A2 => n12, B1 => A_s(44), B2 => n13
                           , ZN => n58);
   U71 : INV_X1 port map( A => A_s(43), ZN => n57);
   U72 : INV_X1 port map( A => A_ns(43), ZN => n56);
   U73 : OAI221_X1 port map( B1 => n8, B2 => n59, C1 => n3, C2 => n60, A => n61
                           , ZN => O_44_port);
   U74 : AOI22_X1 port map( A1 => A_ns(43), A2 => n12, B1 => A_s(43), B2 => n13
                           , ZN => n61);
   U75 : INV_X1 port map( A => A_s(42), ZN => n60);
   U76 : INV_X1 port map( A => A_ns(42), ZN => n59);
   U77 : OAI221_X1 port map( B1 => n8, B2 => n62, C1 => n2, C2 => n63, A => n64
                           , ZN => O_43_port);
   U78 : AOI22_X1 port map( A1 => A_ns(42), A2 => n12, B1 => A_s(42), B2 => n13
                           , ZN => n64);
   U79 : INV_X1 port map( A => A_s(41), ZN => n63);
   U80 : INV_X1 port map( A => A_ns(41), ZN => n62);
   U81 : OAI221_X1 port map( B1 => n8, B2 => n65, C1 => n3, C2 => n66, A => n67
                           , ZN => O_42_port);
   U82 : AOI22_X1 port map( A1 => A_ns(41), A2 => n12, B1 => A_s(41), B2 => n13
                           , ZN => n67);
   U83 : INV_X1 port map( A => A_s(40), ZN => n66);
   U84 : INV_X1 port map( A => A_ns(40), ZN => n65);
   U85 : OAI221_X1 port map( B1 => n8, B2 => n68, C1 => n2, C2 => n69, A => n70
                           , ZN => O_41_port);
   U86 : AOI22_X1 port map( A1 => A_ns(40), A2 => n12, B1 => A_s(40), B2 => n13
                           , ZN => n70);
   U87 : INV_X1 port map( A => A_s(39), ZN => n69);
   U88 : INV_X1 port map( A => A_ns(39), ZN => n68);
   U89 : OAI221_X1 port map( B1 => n8, B2 => n71, C1 => n3, C2 => n72, A => n73
                           , ZN => O_40_port);
   U90 : AOI22_X1 port map( A1 => A_ns(39), A2 => n12, B1 => A_s(39), B2 => n13
                           , ZN => n73);
   U91 : INV_X1 port map( A => A_s(38), ZN => n72);
   U92 : INV_X1 port map( A => A_ns(38), ZN => n71);
   U93 : OAI221_X1 port map( B1 => n8, B2 => n74, C1 => n2, C2 => n75, A => n76
                           , ZN => O_3_port);
   U94 : AOI22_X1 port map( A1 => A_ns(2), A2 => n12, B1 => A_s(2), B2 => n13, 
                           ZN => n76);
   U95 : INV_X1 port map( A => A_s(1), ZN => n75);
   U96 : INV_X1 port map( A => A_ns(1), ZN => n74);
   U97 : OAI221_X1 port map( B1 => n8, B2 => n77, C1 => n3, C2 => n78, A => n79
                           , ZN => O_39_port);
   U98 : AOI22_X1 port map( A1 => A_ns(38), A2 => n12, B1 => A_s(38), B2 => n13
                           , ZN => n79);
   U99 : INV_X1 port map( A => A_s(37), ZN => n78);
   U100 : INV_X1 port map( A => A_ns(37), ZN => n77);
   U101 : OAI221_X1 port map( B1 => n8, B2 => n80, C1 => n2, C2 => n81, A => 
                           n82, ZN => O_38_port);
   U102 : AOI22_X1 port map( A1 => A_ns(37), A2 => n12, B1 => A_s(37), B2 => 
                           n13, ZN => n82);
   U103 : INV_X1 port map( A => A_s(36), ZN => n81);
   U104 : INV_X1 port map( A => A_ns(36), ZN => n80);
   U105 : OAI221_X1 port map( B1 => n8, B2 => n83, C1 => n3, C2 => n84, A => 
                           n85, ZN => O_37_port);
   U106 : AOI22_X1 port map( A1 => A_ns(36), A2 => n12, B1 => A_s(36), B2 => 
                           n13, ZN => n85);
   U107 : INV_X1 port map( A => A_s(35), ZN => n84);
   U108 : INV_X1 port map( A => A_ns(35), ZN => n83);
   U109 : OAI221_X1 port map( B1 => n8, B2 => n86, C1 => n2, C2 => n87, A => 
                           n88, ZN => O_36_port);
   U110 : AOI22_X1 port map( A1 => A_ns(35), A2 => n12, B1 => A_s(35), B2 => 
                           n13, ZN => n88);
   U111 : INV_X1 port map( A => A_s(34), ZN => n87);
   U112 : INV_X1 port map( A => A_ns(34), ZN => n86);
   U113 : OAI221_X1 port map( B1 => n8, B2 => n89, C1 => n3, C2 => n90, A => 
                           n91, ZN => O_35_port);
   U114 : AOI22_X1 port map( A1 => A_ns(34), A2 => n12, B1 => A_s(34), B2 => 
                           n13, ZN => n91);
   U115 : INV_X1 port map( A => A_s(33), ZN => n90);
   U116 : INV_X1 port map( A => A_ns(33), ZN => n89);
   U117 : OAI221_X1 port map( B1 => n8, B2 => n92, C1 => n2, C2 => n93, A => 
                           n94, ZN => O_34_port);
   U118 : AOI22_X1 port map( A1 => A_ns(33), A2 => n12, B1 => A_s(33), B2 => 
                           n13, ZN => n94);
   U119 : INV_X1 port map( A => A_s(32), ZN => n93);
   U120 : INV_X1 port map( A => A_ns(32), ZN => n92);
   U121 : OAI221_X1 port map( B1 => n8, B2 => n95, C1 => n3, C2 => n96, A => 
                           n97, ZN => O_33_port);
   U122 : AOI22_X1 port map( A1 => A_ns(32), A2 => n12, B1 => A_s(32), B2 => 
                           n13, ZN => n97);
   U123 : INV_X1 port map( A => A_s(31), ZN => n96);
   U124 : INV_X1 port map( A => A_ns(31), ZN => n95);
   U125 : OAI221_X1 port map( B1 => n8, B2 => n98, C1 => n2, C2 => n99, A => 
                           n100, ZN => O_32_port);
   U126 : AOI22_X1 port map( A1 => A_ns(31), A2 => n12, B1 => A_s(31), B2 => 
                           n13, ZN => n100);
   U127 : INV_X1 port map( A => A_s(30), ZN => n99);
   U128 : INV_X1 port map( A => A_ns(30), ZN => n98);
   U129 : OAI221_X1 port map( B1 => n8, B2 => n101, C1 => n3, C2 => n102, A => 
                           n103, ZN => O_31_port);
   U130 : AOI22_X1 port map( A1 => A_ns(30), A2 => n12, B1 => A_s(30), B2 => 
                           n13, ZN => n103);
   U131 : INV_X1 port map( A => A_s(29), ZN => n102);
   U132 : INV_X1 port map( A => A_ns(29), ZN => n101);
   U133 : OAI221_X1 port map( B1 => n8, B2 => n104, C1 => n2, C2 => n105, A => 
                           n106, ZN => O_30_port);
   U134 : AOI22_X1 port map( A1 => A_ns(29), A2 => n12, B1 => A_s(29), B2 => 
                           n13, ZN => n106);
   U135 : INV_X1 port map( A => A_s(28), ZN => n105);
   U136 : INV_X1 port map( A => A_ns(28), ZN => n104);
   U137 : OAI221_X1 port map( B1 => n7, B2 => n8, C1 => n5, C2 => n2, A => n107
                           , ZN => O_2_port);
   U138 : AOI22_X1 port map( A1 => A_ns(1), A2 => n12, B1 => A_s(1), B2 => n13,
                           ZN => n107);
   U139 : INV_X1 port map( A => A_s(0), ZN => n5);
   U140 : INV_X1 port map( A => A_ns(0), ZN => n7);
   U141 : OAI221_X1 port map( B1 => n8, B2 => n108, C1 => n3, C2 => n109, A => 
                           n110, ZN => O_29_port);
   U142 : AOI22_X1 port map( A1 => A_ns(28), A2 => n12, B1 => A_s(28), B2 => 
                           n13, ZN => n110);
   U143 : INV_X1 port map( A => A_s(27), ZN => n109);
   U144 : INV_X1 port map( A => A_ns(27), ZN => n108);
   U145 : OAI221_X1 port map( B1 => n8, B2 => n111, C1 => n2, C2 => n112, A => 
                           n113, ZN => O_28_port);
   U146 : AOI22_X1 port map( A1 => A_ns(27), A2 => n12, B1 => A_s(27), B2 => 
                           n13, ZN => n113);
   U147 : INV_X1 port map( A => A_s(26), ZN => n112);
   U148 : INV_X1 port map( A => A_ns(26), ZN => n111);
   U149 : OAI221_X1 port map( B1 => n8, B2 => n114, C1 => n3, C2 => n115, A => 
                           n116, ZN => O_27_port);
   U150 : AOI22_X1 port map( A1 => A_ns(26), A2 => n12, B1 => A_s(26), B2 => 
                           n13, ZN => n116);
   U151 : INV_X1 port map( A => A_s(25), ZN => n115);
   U152 : INV_X1 port map( A => A_ns(25), ZN => n114);
   U153 : OAI221_X1 port map( B1 => n8, B2 => n117, C1 => n2, C2 => n118, A => 
                           n119, ZN => O_26_port);
   U154 : AOI22_X1 port map( A1 => A_ns(25), A2 => n12, B1 => A_s(25), B2 => 
                           n13, ZN => n119);
   U155 : INV_X1 port map( A => A_s(24), ZN => n118);
   U156 : INV_X1 port map( A => A_ns(24), ZN => n117);
   U157 : OAI221_X1 port map( B1 => n8, B2 => n120, C1 => n3, C2 => n121, A => 
                           n122, ZN => O_25_port);
   U158 : AOI22_X1 port map( A1 => A_ns(24), A2 => n12, B1 => A_s(24), B2 => 
                           n13, ZN => n122);
   U159 : INV_X1 port map( A => A_s(23), ZN => n121);
   U160 : INV_X1 port map( A => A_ns(23), ZN => n120);
   U161 : OAI221_X1 port map( B1 => n8, B2 => n123, C1 => n2, C2 => n124, A => 
                           n125, ZN => O_24_port);
   U162 : AOI22_X1 port map( A1 => A_ns(23), A2 => n12, B1 => A_s(23), B2 => 
                           n13, ZN => n125);
   U163 : INV_X1 port map( A => A_s(22), ZN => n124);
   U164 : INV_X1 port map( A => A_ns(22), ZN => n123);
   U165 : OAI221_X1 port map( B1 => n8, B2 => n126, C1 => n3, C2 => n127, A => 
                           n128, ZN => O_23_port);
   U166 : AOI22_X1 port map( A1 => A_ns(22), A2 => n12, B1 => A_s(22), B2 => 
                           n13, ZN => n128);
   U167 : INV_X1 port map( A => A_s(21), ZN => n127);
   U168 : INV_X1 port map( A => A_ns(21), ZN => n126);
   U169 : OAI221_X1 port map( B1 => n8, B2 => n129, C1 => n2, C2 => n130, A => 
                           n131, ZN => O_22_port);
   U170 : AOI22_X1 port map( A1 => A_ns(21), A2 => n12, B1 => A_s(21), B2 => 
                           n13, ZN => n131);
   U171 : INV_X1 port map( A => A_s(20), ZN => n130);
   U172 : INV_X1 port map( A => A_ns(20), ZN => n129);
   U173 : OAI221_X1 port map( B1 => n8, B2 => n132, C1 => n3, C2 => n133, A => 
                           n134, ZN => O_21_port);
   U174 : AOI22_X1 port map( A1 => A_ns(20), A2 => n12, B1 => A_s(20), B2 => 
                           n13, ZN => n134);
   U175 : INV_X1 port map( A => A_s(19), ZN => n133);
   U176 : INV_X1 port map( A => A_ns(19), ZN => n132);
   U177 : OAI221_X1 port map( B1 => n8, B2 => n135, C1 => n2, C2 => n136, A => 
                           n137, ZN => O_20_port);
   U178 : AOI22_X1 port map( A1 => A_ns(19), A2 => n12, B1 => A_s(19), B2 => 
                           n13, ZN => n137);
   U179 : INV_X1 port map( A => A_s(18), ZN => n136);
   U180 : INV_X1 port map( A => A_ns(18), ZN => n135);
   U181 : OAI221_X1 port map( B1 => n8, B2 => n138, C1 => n3, C2 => n139, A => 
                           n140, ZN => O_19_port);
   U182 : AOI22_X1 port map( A1 => A_ns(18), A2 => n12, B1 => A_s(18), B2 => 
                           n13, ZN => n140);
   U183 : INV_X1 port map( A => A_s(17), ZN => n139);
   U184 : INV_X1 port map( A => A_ns(17), ZN => n138);
   U185 : OAI221_X1 port map( B1 => n8, B2 => n141, C1 => n2, C2 => n142, A => 
                           n143, ZN => O_18_port);
   U186 : AOI22_X1 port map( A1 => A_ns(17), A2 => n12, B1 => A_s(17), B2 => 
                           n13, ZN => n143);
   U187 : INV_X1 port map( A => A_s(16), ZN => n142);
   U188 : INV_X1 port map( A => A_ns(16), ZN => n141);
   U189 : OAI221_X1 port map( B1 => n8, B2 => n144, C1 => n3, C2 => n145, A => 
                           n146, ZN => O_17_port);
   U190 : AOI22_X1 port map( A1 => A_ns(16), A2 => n12, B1 => A_s(16), B2 => 
                           n13, ZN => n146);
   U191 : INV_X1 port map( A => A_s(15), ZN => n145);
   U192 : INV_X1 port map( A => A_ns(15), ZN => n144);
   U193 : OAI221_X1 port map( B1 => n8, B2 => n147, C1 => n2, C2 => n148, A => 
                           n149, ZN => O_16_port);
   U194 : AOI22_X1 port map( A1 => A_ns(15), A2 => n12, B1 => A_s(15), B2 => 
                           n13, ZN => n149);
   U195 : INV_X1 port map( A => A_s(14), ZN => n148);
   U196 : INV_X1 port map( A => A_ns(14), ZN => n147);
   U197 : OAI221_X1 port map( B1 => n8, B2 => n150, C1 => n3, C2 => n151, A => 
                           n152, ZN => O_15_port);
   U198 : AOI22_X1 port map( A1 => A_ns(14), A2 => n12, B1 => A_s(14), B2 => 
                           n13, ZN => n152);
   U199 : INV_X1 port map( A => A_s(13), ZN => n151);
   U200 : INV_X1 port map( A => A_ns(13), ZN => n150);
   U201 : OAI221_X1 port map( B1 => n8, B2 => n153, C1 => n2, C2 => n154, A => 
                           n155, ZN => O_14_port);
   U202 : AOI22_X1 port map( A1 => A_ns(13), A2 => n12, B1 => A_s(13), B2 => 
                           n13, ZN => n155);
   U203 : INV_X1 port map( A => A_s(12), ZN => n154);
   U204 : INV_X1 port map( A => A_ns(12), ZN => n153);
   U205 : OAI221_X1 port map( B1 => n8, B2 => n156, C1 => n3, C2 => n157, A => 
                           n158, ZN => O_13_port);
   U206 : AOI22_X1 port map( A1 => A_ns(12), A2 => n12, B1 => A_s(12), B2 => 
                           n13, ZN => n158);
   U207 : INV_X1 port map( A => A_s(11), ZN => n157);
   U208 : INV_X1 port map( A => A_ns(11), ZN => n156);
   U209 : OAI221_X1 port map( B1 => n8, B2 => n159, C1 => n2, C2 => n160, A => 
                           n161, ZN => O_12_port);
   U210 : AOI22_X1 port map( A1 => A_ns(11), A2 => n12, B1 => A_s(11), B2 => 
                           n13, ZN => n161);
   U211 : INV_X1 port map( A => A_s(10), ZN => n160);
   U212 : INV_X1 port map( A => A_ns(10), ZN => n159);
   U213 : OAI221_X1 port map( B1 => n8, B2 => n162, C1 => n3, C2 => n163, A => 
                           n164, ZN => O_11_port);
   U214 : AOI22_X1 port map( A1 => A_ns(10), A2 => n12, B1 => A_s(10), B2 => 
                           n13, ZN => n164);
   U215 : NAND2_X1 port map( A1 => n165, A2 => n4, ZN => n6);
   U216 : NAND2_X1 port map( A1 => n165, A2 => n166, ZN => n4);
   U217 : XOR2_X1 port map( A => B(19), B => B(20), Z => n165);
   U218 : INV_X1 port map( A => A_s(9), ZN => n163);
   U219 : INV_X1 port map( A => A_ns(9), ZN => n162);
   U220 : INV_X1 port map( A => B(21), ZN => n166);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT52_i18 is

   port( A_s, A_ns, B : in std_logic_vector (51 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (51 downto 0));

end BOOTHENC_NBIT52_i18;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT52_i18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
      O_49_port, O_50_port, O_51_port, O_48_port, O_47_port, O_46_port, 
      O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, 
      O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_1_port, O_2_port, O_3_port, O_4_port, 
      O_5_port, O_6_port, O_7_port, O_8_port, O_9_port, O_10_port, O_11_port, 
      O_12_port, O_13_port, O_14_port, O_15_port, O_16_port, O_17_port, 
      O_18_port : std_logic;

begin
   O <= ( O_51_port, O_50_port, O_49_port, O_48_port, O_47_port, O_46_port, 
      O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, 
      O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, 
      O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, 
      O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(49), A_s(48), A_s(47), A_s(46), A_s(45), A_s(44), A_s(43), 
      A_s(42), A_s(41), A_s(40), A_s(39), A_s(38), A_s(37), A_s(36), A_s(35), 
      A_s(34), A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), 
      A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), 
      A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), 
      A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), 
      A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(49), A_ns(48), A_ns(47), A_ns(46), A_ns(45), A_ns(44), 
      A_ns(43), A_ns(42), A_ns(41), A_ns(40), A_ns(39), A_ns(38), A_ns(37), 
      A_ns(36), A_ns(35), A_ns(34), A_ns(33), A_ns(32), A_ns(31), A_ns(30), 
      A_ns(29), A_ns(28), A_ns(27), A_ns(26), A_ns(25), A_ns(24), A_ns(23), 
      A_ns(22), A_ns(21), A_ns(20), A_ns(19), A_ns(18), A_ns(17), A_ns(16), 
      A_ns(15), A_ns(14), A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), 
      A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), 
      A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : AND3_X1 port map( A1 => B(17), A2 => n159, A3 => B(18), ZN => n1);
   U3 : INV_X2 port map( A => n1, ZN => n2);
   U4 : OR3_X4 port map( A1 => B(17), A2 => B(18), A3 => n159, ZN => n3);
   U5 : INV_X4 port map( A => n107, ZN => n7);
   U6 : INV_X2 port map( A => n105, ZN => n8);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n2, C2 => n5, A => n6, ZN
                           => O_49_port);
   U8 : AOI22_X1 port map( A1 => A_ns(48), A2 => n7, B1 => A_s(48), B2 => n8, 
                           ZN => n6);
   U9 : INV_X1 port map( A => A_s(47), ZN => n5);
   U10 : INV_X1 port map( A => A_ns(47), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n2, C2 => n10, A => n11,
                           ZN => O_50_port);
   U12 : AOI22_X1 port map( A1 => A_ns(49), A2 => n7, B1 => A_s(49), B2 => n8, 
                           ZN => n11);
   U13 : INV_X1 port map( A => A_s(48), ZN => n10);
   U14 : INV_X1 port map( A => A_ns(48), ZN => n9);
   U15 : OAI221_X1 port map( B1 => n3, B2 => n12, C1 => n2, C2 => n13, A => n14
                           , ZN => O_51_port);
   U16 : AOI22_X1 port map( A1 => A_ns(50), A2 => n7, B1 => A_s(50), B2 => n8, 
                           ZN => n14);
   U17 : INV_X1 port map( A => A_s(49), ZN => n13);
   U18 : INV_X1 port map( A => A_ns(49), ZN => n12);
   U19 : OAI221_X1 port map( B1 => n3, B2 => n15, C1 => n2, C2 => n16, A => n17
                           , ZN => O_48_port);
   U20 : AOI22_X1 port map( A1 => n7, A2 => A_ns(47), B1 => n8, B2 => A_s(47), 
                           ZN => n17);
   U21 : INV_X1 port map( A => A_s(46), ZN => n16);
   U22 : INV_X1 port map( A => A_ns(46), ZN => n15);
   U23 : OAI221_X1 port map( B1 => n3, B2 => n18, C1 => n2, C2 => n19, A => n20
                           , ZN => O_47_port);
   U24 : AOI22_X1 port map( A1 => A_ns(46), A2 => n7, B1 => A_s(46), B2 => n8, 
                           ZN => n20);
   U25 : INV_X1 port map( A => A_s(45), ZN => n19);
   U26 : INV_X1 port map( A => A_ns(45), ZN => n18);
   U27 : OAI221_X1 port map( B1 => n3, B2 => n21, C1 => n2, C2 => n22, A => n23
                           , ZN => O_46_port);
   U28 : AOI22_X1 port map( A1 => A_ns(45), A2 => n7, B1 => A_s(45), B2 => n8, 
                           ZN => n23);
   U29 : INV_X1 port map( A => A_s(44), ZN => n22);
   U30 : INV_X1 port map( A => A_ns(44), ZN => n21);
   U31 : OAI221_X1 port map( B1 => n3, B2 => n24, C1 => n2, C2 => n25, A => n26
                           , ZN => O_45_port);
   U32 : AOI22_X1 port map( A1 => A_ns(44), A2 => n7, B1 => A_s(44), B2 => n8, 
                           ZN => n26);
   U33 : INV_X1 port map( A => A_s(43), ZN => n25);
   U34 : INV_X1 port map( A => A_ns(43), ZN => n24);
   U35 : OAI221_X1 port map( B1 => n3, B2 => n27, C1 => n2, C2 => n28, A => n29
                           , ZN => O_44_port);
   U36 : AOI22_X1 port map( A1 => A_ns(43), A2 => n7, B1 => A_s(43), B2 => n8, 
                           ZN => n29);
   U37 : INV_X1 port map( A => A_s(42), ZN => n28);
   U38 : INV_X1 port map( A => A_ns(42), ZN => n27);
   U39 : OAI221_X1 port map( B1 => n3, B2 => n30, C1 => n2, C2 => n31, A => n32
                           , ZN => O_43_port);
   U40 : AOI22_X1 port map( A1 => A_ns(42), A2 => n7, B1 => A_s(42), B2 => n8, 
                           ZN => n32);
   U41 : INV_X1 port map( A => A_s(41), ZN => n31);
   U42 : INV_X1 port map( A => A_ns(41), ZN => n30);
   U43 : OAI221_X1 port map( B1 => n3, B2 => n33, C1 => n2, C2 => n34, A => n35
                           , ZN => O_42_port);
   U44 : AOI22_X1 port map( A1 => A_ns(41), A2 => n7, B1 => A_s(41), B2 => n8, 
                           ZN => n35);
   U45 : INV_X1 port map( A => A_s(40), ZN => n34);
   U46 : INV_X1 port map( A => A_ns(40), ZN => n33);
   U47 : OAI221_X1 port map( B1 => n3, B2 => n36, C1 => n2, C2 => n37, A => n38
                           , ZN => O_41_port);
   U48 : AOI22_X1 port map( A1 => A_ns(40), A2 => n7, B1 => A_s(40), B2 => n8, 
                           ZN => n38);
   U49 : INV_X1 port map( A => A_s(39), ZN => n37);
   U50 : INV_X1 port map( A => A_ns(39), ZN => n36);
   U51 : OAI221_X1 port map( B1 => n3, B2 => n39, C1 => n2, C2 => n40, A => n41
                           , ZN => O_40_port);
   U52 : AOI22_X1 port map( A1 => A_ns(39), A2 => n7, B1 => A_s(39), B2 => n8, 
                           ZN => n41);
   U53 : INV_X1 port map( A => A_s(38), ZN => n40);
   U54 : INV_X1 port map( A => A_ns(38), ZN => n39);
   U55 : OAI221_X1 port map( B1 => n3, B2 => n42, C1 => n2, C2 => n43, A => n44
                           , ZN => O_39_port);
   U56 : AOI22_X1 port map( A1 => A_ns(38), A2 => n7, B1 => A_s(38), B2 => n8, 
                           ZN => n44);
   U57 : INV_X1 port map( A => A_s(37), ZN => n43);
   U58 : INV_X1 port map( A => A_ns(37), ZN => n42);
   U59 : OAI221_X1 port map( B1 => n3, B2 => n45, C1 => n2, C2 => n46, A => n47
                           , ZN => O_38_port);
   U60 : AOI22_X1 port map( A1 => A_ns(37), A2 => n7, B1 => A_s(37), B2 => n8, 
                           ZN => n47);
   U61 : INV_X1 port map( A => A_s(36), ZN => n46);
   U62 : INV_X1 port map( A => A_ns(36), ZN => n45);
   U63 : OAI221_X1 port map( B1 => n3, B2 => n48, C1 => n2, C2 => n49, A => n50
                           , ZN => O_37_port);
   U64 : AOI22_X1 port map( A1 => A_ns(36), A2 => n7, B1 => A_s(36), B2 => n8, 
                           ZN => n50);
   U65 : INV_X1 port map( A => A_s(35), ZN => n49);
   U66 : INV_X1 port map( A => A_ns(35), ZN => n48);
   U67 : OAI221_X1 port map( B1 => n3, B2 => n51, C1 => n2, C2 => n52, A => n53
                           , ZN => O_36_port);
   U68 : AOI22_X1 port map( A1 => A_ns(35), A2 => n7, B1 => A_s(35), B2 => n8, 
                           ZN => n53);
   U69 : INV_X1 port map( A => A_s(34), ZN => n52);
   U70 : INV_X1 port map( A => A_ns(34), ZN => n51);
   U71 : OAI221_X1 port map( B1 => n3, B2 => n54, C1 => n2, C2 => n55, A => n56
                           , ZN => O_35_port);
   U72 : AOI22_X1 port map( A1 => A_ns(34), A2 => n7, B1 => A_s(34), B2 => n8, 
                           ZN => n56);
   U73 : INV_X1 port map( A => A_s(33), ZN => n55);
   U74 : INV_X1 port map( A => A_ns(33), ZN => n54);
   U75 : OAI221_X1 port map( B1 => n3, B2 => n57, C1 => n2, C2 => n58, A => n59
                           , ZN => O_34_port);
   U76 : AOI22_X1 port map( A1 => A_ns(33), A2 => n7, B1 => A_s(33), B2 => n8, 
                           ZN => n59);
   U77 : INV_X1 port map( A => A_s(32), ZN => n58);
   U78 : INV_X1 port map( A => A_ns(32), ZN => n57);
   U79 : OAI221_X1 port map( B1 => n3, B2 => n60, C1 => n2, C2 => n61, A => n62
                           , ZN => O_33_port);
   U80 : AOI22_X1 port map( A1 => A_ns(32), A2 => n7, B1 => A_s(32), B2 => n8, 
                           ZN => n62);
   U81 : INV_X1 port map( A => A_s(31), ZN => n61);
   U82 : INV_X1 port map( A => A_ns(31), ZN => n60);
   U83 : OAI221_X1 port map( B1 => n3, B2 => n63, C1 => n2, C2 => n64, A => n65
                           , ZN => O_32_port);
   U84 : AOI22_X1 port map( A1 => A_ns(31), A2 => n7, B1 => A_s(31), B2 => n8, 
                           ZN => n65);
   U85 : INV_X1 port map( A => A_s(30), ZN => n64);
   U86 : INV_X1 port map( A => A_ns(30), ZN => n63);
   U87 : OAI221_X1 port map( B1 => n3, B2 => n66, C1 => n2, C2 => n67, A => n68
                           , ZN => O_31_port);
   U88 : AOI22_X1 port map( A1 => A_ns(30), A2 => n7, B1 => A_s(30), B2 => n8, 
                           ZN => n68);
   U89 : INV_X1 port map( A => A_s(29), ZN => n67);
   U90 : INV_X1 port map( A => A_ns(29), ZN => n66);
   U91 : OAI221_X1 port map( B1 => n3, B2 => n69, C1 => n2, C2 => n70, A => n71
                           , ZN => O_30_port);
   U92 : AOI22_X1 port map( A1 => A_ns(29), A2 => n7, B1 => A_s(29), B2 => n8, 
                           ZN => n71);
   U93 : INV_X1 port map( A => A_s(28), ZN => n70);
   U94 : INV_X1 port map( A => A_ns(28), ZN => n69);
   U95 : OAI221_X1 port map( B1 => n3, B2 => n72, C1 => n2, C2 => n73, A => n74
                           , ZN => O_29_port);
   U96 : AOI22_X1 port map( A1 => A_ns(28), A2 => n7, B1 => A_s(28), B2 => n8, 
                           ZN => n74);
   U97 : INV_X1 port map( A => A_s(27), ZN => n73);
   U98 : INV_X1 port map( A => A_ns(27), ZN => n72);
   U99 : OAI221_X1 port map( B1 => n3, B2 => n75, C1 => n2, C2 => n76, A => n77
                           , ZN => O_28_port);
   U100 : AOI22_X1 port map( A1 => A_ns(27), A2 => n7, B1 => A_s(27), B2 => n8,
                           ZN => n77);
   U101 : INV_X1 port map( A => A_s(26), ZN => n76);
   U102 : INV_X1 port map( A => A_ns(26), ZN => n75);
   U103 : OAI221_X1 port map( B1 => n3, B2 => n78, C1 => n2, C2 => n79, A => 
                           n80, ZN => O_27_port);
   U104 : AOI22_X1 port map( A1 => A_ns(26), A2 => n7, B1 => A_s(26), B2 => n8,
                           ZN => n80);
   U105 : INV_X1 port map( A => A_s(25), ZN => n79);
   U106 : INV_X1 port map( A => A_ns(25), ZN => n78);
   U107 : OAI221_X1 port map( B1 => n3, B2 => n81, C1 => n2, C2 => n82, A => 
                           n83, ZN => O_26_port);
   U108 : AOI22_X1 port map( A1 => A_ns(25), A2 => n7, B1 => A_s(25), B2 => n8,
                           ZN => n83);
   U109 : INV_X1 port map( A => A_s(24), ZN => n82);
   U110 : INV_X1 port map( A => A_ns(24), ZN => n81);
   U111 : OAI221_X1 port map( B1 => n3, B2 => n84, C1 => n2, C2 => n85, A => 
                           n86, ZN => O_25_port);
   U112 : AOI22_X1 port map( A1 => A_ns(24), A2 => n7, B1 => A_s(24), B2 => n8,
                           ZN => n86);
   U113 : INV_X1 port map( A => A_s(23), ZN => n85);
   U114 : INV_X1 port map( A => A_ns(23), ZN => n84);
   U115 : OAI221_X1 port map( B1 => n3, B2 => n87, C1 => n2, C2 => n88, A => 
                           n89, ZN => O_24_port);
   U116 : AOI22_X1 port map( A1 => A_ns(23), A2 => n7, B1 => A_s(23), B2 => n8,
                           ZN => n89);
   U117 : INV_X1 port map( A => A_s(22), ZN => n88);
   U118 : INV_X1 port map( A => A_ns(22), ZN => n87);
   U119 : OAI221_X1 port map( B1 => n3, B2 => n90, C1 => n2, C2 => n91, A => 
                           n92, ZN => O_23_port);
   U120 : AOI22_X1 port map( A1 => A_ns(22), A2 => n7, B1 => A_s(22), B2 => n8,
                           ZN => n92);
   U121 : INV_X1 port map( A => A_s(21), ZN => n91);
   U122 : INV_X1 port map( A => A_ns(21), ZN => n90);
   U123 : OAI221_X1 port map( B1 => n3, B2 => n93, C1 => n2, C2 => n94, A => 
                           n95, ZN => O_22_port);
   U124 : AOI22_X1 port map( A1 => A_ns(21), A2 => n7, B1 => A_s(21), B2 => n8,
                           ZN => n95);
   U125 : INV_X1 port map( A => A_s(20), ZN => n94);
   U126 : INV_X1 port map( A => A_ns(20), ZN => n93);
   U127 : OAI221_X1 port map( B1 => n3, B2 => n96, C1 => n2, C2 => n97, A => 
                           n98, ZN => O_21_port);
   U128 : AOI22_X1 port map( A1 => A_ns(20), A2 => n7, B1 => A_s(20), B2 => n8,
                           ZN => n98);
   U129 : INV_X1 port map( A => A_s(19), ZN => n97);
   U130 : INV_X1 port map( A => A_ns(19), ZN => n96);
   U131 : OAI221_X1 port map( B1 => n3, B2 => n99, C1 => n2, C2 => n100, A => 
                           n101, ZN => O_20_port);
   U132 : AOI22_X1 port map( A1 => A_ns(19), A2 => n7, B1 => A_s(19), B2 => n8,
                           ZN => n101);
   U133 : INV_X1 port map( A => A_s(18), ZN => n100);
   U134 : INV_X1 port map( A => A_ns(18), ZN => n99);
   U135 : OAI221_X1 port map( B1 => n3, B2 => n102, C1 => n2, C2 => n103, A => 
                           n104, ZN => O_19_port);
   U136 : AOI22_X1 port map( A1 => A_ns(18), A2 => n7, B1 => A_s(18), B2 => n8,
                           ZN => n104);
   U137 : INV_X1 port map( A => A_s(17), ZN => n103);
   U138 : INV_X1 port map( A => A_ns(17), ZN => n102);
   U139 : OAI22_X1 port map( A1 => n105, A2 => n106, B1 => n107, B2 => n108, ZN
                           => O_1_port);
   U140 : OAI221_X1 port map( B1 => n3, B2 => n108, C1 => n2, C2 => n106, A => 
                           n109, ZN => O_2_port);
   U141 : AOI22_X1 port map( A1 => A_ns(1), A2 => n7, B1 => A_s(1), B2 => n8, 
                           ZN => n109);
   U142 : INV_X1 port map( A => A_s(0), ZN => n106);
   U143 : INV_X1 port map( A => A_ns(0), ZN => n108);
   U144 : OAI221_X1 port map( B1 => n3, B2 => n110, C1 => n2, C2 => n111, A => 
                           n112, ZN => O_3_port);
   U145 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n112);
   U146 : INV_X1 port map( A => A_s(1), ZN => n111);
   U147 : INV_X1 port map( A => A_ns(1), ZN => n110);
   U148 : OAI221_X1 port map( B1 => n3, B2 => n113, C1 => n2, C2 => n114, A => 
                           n115, ZN => O_4_port);
   U149 : AOI22_X1 port map( A1 => A_ns(3), A2 => n7, B1 => A_s(3), B2 => n8, 
                           ZN => n115);
   U150 : INV_X1 port map( A => A_s(2), ZN => n114);
   U151 : INV_X1 port map( A => A_ns(2), ZN => n113);
   U152 : OAI221_X1 port map( B1 => n3, B2 => n116, C1 => n2, C2 => n117, A => 
                           n118, ZN => O_5_port);
   U153 : AOI22_X1 port map( A1 => A_ns(4), A2 => n7, B1 => A_s(4), B2 => n8, 
                           ZN => n118);
   U154 : INV_X1 port map( A => A_s(3), ZN => n117);
   U155 : INV_X1 port map( A => A_ns(3), ZN => n116);
   U156 : OAI221_X1 port map( B1 => n3, B2 => n119, C1 => n2, C2 => n120, A => 
                           n121, ZN => O_6_port);
   U157 : AOI22_X1 port map( A1 => A_ns(5), A2 => n7, B1 => A_s(5), B2 => n8, 
                           ZN => n121);
   U158 : INV_X1 port map( A => A_s(4), ZN => n120);
   U159 : INV_X1 port map( A => A_ns(4), ZN => n119);
   U160 : OAI221_X1 port map( B1 => n3, B2 => n122, C1 => n2, C2 => n123, A => 
                           n124, ZN => O_7_port);
   U161 : AOI22_X1 port map( A1 => A_ns(6), A2 => n7, B1 => A_s(6), B2 => n8, 
                           ZN => n124);
   U162 : INV_X1 port map( A => A_s(5), ZN => n123);
   U163 : INV_X1 port map( A => A_ns(5), ZN => n122);
   U164 : OAI221_X1 port map( B1 => n3, B2 => n125, C1 => n2, C2 => n126, A => 
                           n127, ZN => O_8_port);
   U165 : AOI22_X1 port map( A1 => A_ns(7), A2 => n7, B1 => A_s(7), B2 => n8, 
                           ZN => n127);
   U166 : INV_X1 port map( A => A_s(6), ZN => n126);
   U167 : INV_X1 port map( A => A_ns(6), ZN => n125);
   U168 : OAI221_X1 port map( B1 => n3, B2 => n128, C1 => n2, C2 => n129, A => 
                           n130, ZN => O_9_port);
   U169 : AOI22_X1 port map( A1 => A_ns(8), A2 => n7, B1 => A_s(8), B2 => n8, 
                           ZN => n130);
   U170 : INV_X1 port map( A => A_s(7), ZN => n129);
   U171 : INV_X1 port map( A => A_ns(7), ZN => n128);
   U172 : OAI221_X1 port map( B1 => n3, B2 => n131, C1 => n2, C2 => n132, A => 
                           n133, ZN => O_10_port);
   U173 : AOI22_X1 port map( A1 => A_ns(9), A2 => n7, B1 => A_s(9), B2 => n8, 
                           ZN => n133);
   U174 : INV_X1 port map( A => A_s(8), ZN => n132);
   U175 : INV_X1 port map( A => A_ns(8), ZN => n131);
   U176 : OAI221_X1 port map( B1 => n3, B2 => n134, C1 => n2, C2 => n135, A => 
                           n136, ZN => O_11_port);
   U177 : AOI22_X1 port map( A1 => A_ns(10), A2 => n7, B1 => A_s(10), B2 => n8,
                           ZN => n136);
   U178 : INV_X1 port map( A => A_s(9), ZN => n135);
   U179 : INV_X1 port map( A => A_ns(9), ZN => n134);
   U180 : OAI221_X1 port map( B1 => n3, B2 => n137, C1 => n2, C2 => n138, A => 
                           n139, ZN => O_12_port);
   U181 : AOI22_X1 port map( A1 => A_ns(11), A2 => n7, B1 => A_s(11), B2 => n8,
                           ZN => n139);
   U182 : INV_X1 port map( A => A_s(10), ZN => n138);
   U183 : INV_X1 port map( A => A_ns(10), ZN => n137);
   U184 : OAI221_X1 port map( B1 => n3, B2 => n140, C1 => n2, C2 => n141, A => 
                           n142, ZN => O_13_port);
   U185 : AOI22_X1 port map( A1 => A_ns(12), A2 => n7, B1 => A_s(12), B2 => n8,
                           ZN => n142);
   U186 : INV_X1 port map( A => A_s(11), ZN => n141);
   U187 : INV_X1 port map( A => A_ns(11), ZN => n140);
   U188 : OAI221_X1 port map( B1 => n3, B2 => n143, C1 => n2, C2 => n144, A => 
                           n145, ZN => O_14_port);
   U189 : AOI22_X1 port map( A1 => A_ns(13), A2 => n7, B1 => A_s(13), B2 => n8,
                           ZN => n145);
   U190 : INV_X1 port map( A => A_s(12), ZN => n144);
   U191 : INV_X1 port map( A => A_ns(12), ZN => n143);
   U192 : OAI221_X1 port map( B1 => n3, B2 => n146, C1 => n2, C2 => n147, A => 
                           n148, ZN => O_15_port);
   U193 : AOI22_X1 port map( A1 => A_ns(14), A2 => n7, B1 => A_s(14), B2 => n8,
                           ZN => n148);
   U194 : INV_X1 port map( A => A_s(13), ZN => n147);
   U195 : INV_X1 port map( A => A_ns(13), ZN => n146);
   U196 : OAI221_X1 port map( B1 => n3, B2 => n149, C1 => n2, C2 => n150, A => 
                           n151, ZN => O_16_port);
   U197 : AOI22_X1 port map( A1 => A_ns(15), A2 => n7, B1 => A_s(15), B2 => n8,
                           ZN => n151);
   U198 : INV_X1 port map( A => A_s(14), ZN => n150);
   U199 : INV_X1 port map( A => A_ns(14), ZN => n149);
   U200 : OAI221_X1 port map( B1 => n3, B2 => n152, C1 => n2, C2 => n153, A => 
                           n154, ZN => O_17_port);
   U201 : AOI22_X1 port map( A1 => A_ns(16), A2 => n7, B1 => A_s(16), B2 => n8,
                           ZN => n154);
   U202 : INV_X1 port map( A => A_s(15), ZN => n153);
   U203 : INV_X1 port map( A => A_ns(15), ZN => n152);
   U204 : OAI221_X1 port map( B1 => n3, B2 => n155, C1 => n2, C2 => n156, A => 
                           n157, ZN => O_18_port);
   U205 : AOI22_X1 port map( A1 => A_ns(17), A2 => n7, B1 => A_s(17), B2 => n8,
                           ZN => n157);
   U206 : NAND2_X1 port map( A1 => n158, A2 => n105, ZN => n107);
   U207 : NAND2_X1 port map( A1 => n158, A2 => n159, ZN => n105);
   U208 : XOR2_X1 port map( A => B(18), B => B(17), Z => n158);
   U209 : INV_X1 port map( A => A_s(16), ZN => n156);
   U210 : INV_X1 port map( A => A_ns(16), ZN => n155);
   U211 : INV_X1 port map( A => B(19), ZN => n159);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT50_i16 is

   port( A_s, A_ns, B : in std_logic_vector (49 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (49 downto 0));

end BOOTHENC_NBIT50_i16;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT50_i16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, O_47_port, O_48_port, O_49_port, O_46_port,
      O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, 
      O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_1_port, O_2_port
      , O_3_port, O_4_port, O_5_port, O_6_port, O_7_port, O_8_port, O_9_port, 
      O_10_port, O_11_port, O_12_port, O_13_port, O_14_port, O_15_port, 
      O_16_port : std_logic;

begin
   O <= ( O_49_port, O_48_port, O_47_port, O_46_port, O_45_port, O_44_port, 
      O_43_port, O_42_port, O_41_port, O_40_port, O_39_port, O_38_port, 
      O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, 
      O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, 
      O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, 
      O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, 
      O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, O_7_port,
      O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port
      );
   A_so <= ( A_s(47), A_s(46), A_s(45), A_s(44), A_s(43), A_s(42), A_s(41), 
      A_s(40), A_s(39), A_s(38), A_s(37), A_s(36), A_s(35), A_s(34), A_s(33), 
      A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), A_s(25), 
      A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), A_s(17), 
      A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), 
      A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), 
      X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(47), A_ns(46), A_ns(45), A_ns(44), A_ns(43), A_ns(42), 
      A_ns(41), A_ns(40), A_ns(39), A_ns(38), A_ns(37), A_ns(36), A_ns(35), 
      A_ns(34), A_ns(33), A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), 
      A_ns(27), A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), 
      A_ns(20), A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), 
      A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), 
      A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), 
      X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : NAND3_X2 port map( A1 => B(15), A2 => n152, A3 => B(16), ZN => n3);
   U3 : INV_X2 port map( A => n104, ZN => n7);
   U4 : OR3_X2 port map( A1 => B(15), A2 => B(16), A3 => n152, ZN => n1);
   U5 : INV_X2 port map( A => n106, ZN => n6);
   U6 : OAI221_X1 port map( B1 => n1, B2 => n2, C1 => n3, C2 => n4, A => n5, ZN
                           => O_47_port);
   U7 : AOI22_X1 port map( A1 => A_ns(46), A2 => n6, B1 => A_s(46), B2 => n7, 
                           ZN => n5);
   U8 : INV_X1 port map( A => A_s(45), ZN => n4);
   U9 : INV_X1 port map( A => A_ns(45), ZN => n2);
   U10 : OAI221_X1 port map( B1 => n1, B2 => n8, C1 => n3, C2 => n9, A => n10, 
                           ZN => O_48_port);
   U11 : AOI22_X1 port map( A1 => A_ns(47), A2 => n6, B1 => A_s(47), B2 => n7, 
                           ZN => n10);
   U12 : INV_X1 port map( A => A_s(46), ZN => n9);
   U13 : INV_X1 port map( A => A_ns(46), ZN => n8);
   U14 : OAI221_X1 port map( B1 => n1, B2 => n11, C1 => n3, C2 => n12, A => n13
                           , ZN => O_49_port);
   U15 : AOI22_X1 port map( A1 => A_ns(48), A2 => n6, B1 => A_s(48), B2 => n7, 
                           ZN => n13);
   U16 : INV_X1 port map( A => A_s(47), ZN => n12);
   U17 : INV_X1 port map( A => A_ns(47), ZN => n11);
   U18 : OAI221_X1 port map( B1 => n1, B2 => n14, C1 => n3, C2 => n15, A => n16
                           , ZN => O_46_port);
   U19 : AOI22_X1 port map( A1 => n6, A2 => A_ns(45), B1 => n7, B2 => A_s(45), 
                           ZN => n16);
   U20 : INV_X1 port map( A => A_s(44), ZN => n15);
   U21 : INV_X1 port map( A => A_ns(44), ZN => n14);
   U22 : OAI221_X1 port map( B1 => n1, B2 => n17, C1 => n3, C2 => n18, A => n19
                           , ZN => O_45_port);
   U23 : AOI22_X1 port map( A1 => A_ns(44), A2 => n6, B1 => A_s(44), B2 => n7, 
                           ZN => n19);
   U24 : INV_X1 port map( A => A_s(43), ZN => n18);
   U25 : INV_X1 port map( A => A_ns(43), ZN => n17);
   U26 : OAI221_X1 port map( B1 => n1, B2 => n20, C1 => n3, C2 => n21, A => n22
                           , ZN => O_44_port);
   U27 : AOI22_X1 port map( A1 => A_ns(43), A2 => n6, B1 => A_s(43), B2 => n7, 
                           ZN => n22);
   U28 : INV_X1 port map( A => A_s(42), ZN => n21);
   U29 : INV_X1 port map( A => A_ns(42), ZN => n20);
   U30 : OAI221_X1 port map( B1 => n1, B2 => n23, C1 => n3, C2 => n24, A => n25
                           , ZN => O_43_port);
   U31 : AOI22_X1 port map( A1 => A_ns(42), A2 => n6, B1 => A_s(42), B2 => n7, 
                           ZN => n25);
   U32 : INV_X1 port map( A => A_s(41), ZN => n24);
   U33 : INV_X1 port map( A => A_ns(41), ZN => n23);
   U34 : OAI221_X1 port map( B1 => n1, B2 => n26, C1 => n3, C2 => n27, A => n28
                           , ZN => O_42_port);
   U35 : AOI22_X1 port map( A1 => A_ns(41), A2 => n6, B1 => A_s(41), B2 => n7, 
                           ZN => n28);
   U36 : INV_X1 port map( A => A_s(40), ZN => n27);
   U37 : INV_X1 port map( A => A_ns(40), ZN => n26);
   U38 : OAI221_X1 port map( B1 => n1, B2 => n29, C1 => n3, C2 => n30, A => n31
                           , ZN => O_41_port);
   U39 : AOI22_X1 port map( A1 => A_ns(40), A2 => n6, B1 => A_s(40), B2 => n7, 
                           ZN => n31);
   U40 : INV_X1 port map( A => A_s(39), ZN => n30);
   U41 : INV_X1 port map( A => A_ns(39), ZN => n29);
   U42 : OAI221_X1 port map( B1 => n1, B2 => n32, C1 => n3, C2 => n33, A => n34
                           , ZN => O_40_port);
   U43 : AOI22_X1 port map( A1 => A_ns(39), A2 => n6, B1 => A_s(39), B2 => n7, 
                           ZN => n34);
   U44 : INV_X1 port map( A => A_s(38), ZN => n33);
   U45 : INV_X1 port map( A => A_ns(38), ZN => n32);
   U46 : OAI221_X1 port map( B1 => n1, B2 => n35, C1 => n3, C2 => n36, A => n37
                           , ZN => O_39_port);
   U47 : AOI22_X1 port map( A1 => A_ns(38), A2 => n6, B1 => A_s(38), B2 => n7, 
                           ZN => n37);
   U48 : INV_X1 port map( A => A_s(37), ZN => n36);
   U49 : INV_X1 port map( A => A_ns(37), ZN => n35);
   U50 : OAI221_X1 port map( B1 => n1, B2 => n38, C1 => n3, C2 => n39, A => n40
                           , ZN => O_38_port);
   U51 : AOI22_X1 port map( A1 => A_ns(37), A2 => n6, B1 => A_s(37), B2 => n7, 
                           ZN => n40);
   U52 : INV_X1 port map( A => A_s(36), ZN => n39);
   U53 : INV_X1 port map( A => A_ns(36), ZN => n38);
   U54 : OAI221_X1 port map( B1 => n1, B2 => n41, C1 => n3, C2 => n42, A => n43
                           , ZN => O_37_port);
   U55 : AOI22_X1 port map( A1 => A_ns(36), A2 => n6, B1 => A_s(36), B2 => n7, 
                           ZN => n43);
   U56 : INV_X1 port map( A => A_s(35), ZN => n42);
   U57 : INV_X1 port map( A => A_ns(35), ZN => n41);
   U58 : OAI221_X1 port map( B1 => n1, B2 => n44, C1 => n3, C2 => n45, A => n46
                           , ZN => O_36_port);
   U59 : AOI22_X1 port map( A1 => A_ns(35), A2 => n6, B1 => A_s(35), B2 => n7, 
                           ZN => n46);
   U60 : INV_X1 port map( A => A_s(34), ZN => n45);
   U61 : INV_X1 port map( A => A_ns(34), ZN => n44);
   U62 : OAI221_X1 port map( B1 => n1, B2 => n47, C1 => n3, C2 => n48, A => n49
                           , ZN => O_35_port);
   U63 : AOI22_X1 port map( A1 => A_ns(34), A2 => n6, B1 => A_s(34), B2 => n7, 
                           ZN => n49);
   U64 : INV_X1 port map( A => A_s(33), ZN => n48);
   U65 : INV_X1 port map( A => A_ns(33), ZN => n47);
   U66 : OAI221_X1 port map( B1 => n1, B2 => n50, C1 => n3, C2 => n51, A => n52
                           , ZN => O_34_port);
   U67 : AOI22_X1 port map( A1 => A_ns(33), A2 => n6, B1 => A_s(33), B2 => n7, 
                           ZN => n52);
   U68 : INV_X1 port map( A => A_s(32), ZN => n51);
   U69 : INV_X1 port map( A => A_ns(32), ZN => n50);
   U70 : OAI221_X1 port map( B1 => n1, B2 => n53, C1 => n3, C2 => n54, A => n55
                           , ZN => O_33_port);
   U71 : AOI22_X1 port map( A1 => A_ns(32), A2 => n6, B1 => A_s(32), B2 => n7, 
                           ZN => n55);
   U72 : INV_X1 port map( A => A_s(31), ZN => n54);
   U73 : INV_X1 port map( A => A_ns(31), ZN => n53);
   U74 : OAI221_X1 port map( B1 => n1, B2 => n56, C1 => n3, C2 => n57, A => n58
                           , ZN => O_32_port);
   U75 : AOI22_X1 port map( A1 => A_ns(31), A2 => n6, B1 => A_s(31), B2 => n7, 
                           ZN => n58);
   U76 : INV_X1 port map( A => A_s(30), ZN => n57);
   U77 : INV_X1 port map( A => A_ns(30), ZN => n56);
   U78 : OAI221_X1 port map( B1 => n1, B2 => n59, C1 => n3, C2 => n60, A => n61
                           , ZN => O_31_port);
   U79 : AOI22_X1 port map( A1 => A_ns(30), A2 => n6, B1 => A_s(30), B2 => n7, 
                           ZN => n61);
   U80 : INV_X1 port map( A => A_s(29), ZN => n60);
   U81 : INV_X1 port map( A => A_ns(29), ZN => n59);
   U82 : OAI221_X1 port map( B1 => n1, B2 => n62, C1 => n3, C2 => n63, A => n64
                           , ZN => O_30_port);
   U83 : AOI22_X1 port map( A1 => A_ns(29), A2 => n6, B1 => A_s(29), B2 => n7, 
                           ZN => n64);
   U84 : INV_X1 port map( A => A_s(28), ZN => n63);
   U85 : INV_X1 port map( A => A_ns(28), ZN => n62);
   U86 : OAI221_X1 port map( B1 => n1, B2 => n65, C1 => n3, C2 => n66, A => n67
                           , ZN => O_29_port);
   U87 : AOI22_X1 port map( A1 => A_ns(28), A2 => n6, B1 => A_s(28), B2 => n7, 
                           ZN => n67);
   U88 : INV_X1 port map( A => A_s(27), ZN => n66);
   U89 : INV_X1 port map( A => A_ns(27), ZN => n65);
   U90 : OAI221_X1 port map( B1 => n1, B2 => n68, C1 => n3, C2 => n69, A => n70
                           , ZN => O_28_port);
   U91 : AOI22_X1 port map( A1 => A_ns(27), A2 => n6, B1 => A_s(27), B2 => n7, 
                           ZN => n70);
   U92 : INV_X1 port map( A => A_s(26), ZN => n69);
   U93 : INV_X1 port map( A => A_ns(26), ZN => n68);
   U94 : OAI221_X1 port map( B1 => n1, B2 => n71, C1 => n3, C2 => n72, A => n73
                           , ZN => O_27_port);
   U95 : AOI22_X1 port map( A1 => A_ns(26), A2 => n6, B1 => A_s(26), B2 => n7, 
                           ZN => n73);
   U96 : INV_X1 port map( A => A_s(25), ZN => n72);
   U97 : INV_X1 port map( A => A_ns(25), ZN => n71);
   U98 : OAI221_X1 port map( B1 => n1, B2 => n74, C1 => n3, C2 => n75, A => n76
                           , ZN => O_26_port);
   U99 : AOI22_X1 port map( A1 => A_ns(25), A2 => n6, B1 => A_s(25), B2 => n7, 
                           ZN => n76);
   U100 : INV_X1 port map( A => A_s(24), ZN => n75);
   U101 : INV_X1 port map( A => A_ns(24), ZN => n74);
   U102 : OAI221_X1 port map( B1 => n1, B2 => n77, C1 => n3, C2 => n78, A => 
                           n79, ZN => O_25_port);
   U103 : AOI22_X1 port map( A1 => A_ns(24), A2 => n6, B1 => A_s(24), B2 => n7,
                           ZN => n79);
   U104 : INV_X1 port map( A => A_s(23), ZN => n78);
   U105 : INV_X1 port map( A => A_ns(23), ZN => n77);
   U106 : OAI221_X1 port map( B1 => n1, B2 => n80, C1 => n3, C2 => n81, A => 
                           n82, ZN => O_24_port);
   U107 : AOI22_X1 port map( A1 => A_ns(23), A2 => n6, B1 => A_s(23), B2 => n7,
                           ZN => n82);
   U108 : INV_X1 port map( A => A_s(22), ZN => n81);
   U109 : INV_X1 port map( A => A_ns(22), ZN => n80);
   U110 : OAI221_X1 port map( B1 => n1, B2 => n83, C1 => n3, C2 => n84, A => 
                           n85, ZN => O_23_port);
   U111 : AOI22_X1 port map( A1 => A_ns(22), A2 => n6, B1 => A_s(22), B2 => n7,
                           ZN => n85);
   U112 : INV_X1 port map( A => A_s(21), ZN => n84);
   U113 : INV_X1 port map( A => A_ns(21), ZN => n83);
   U114 : OAI221_X1 port map( B1 => n1, B2 => n86, C1 => n3, C2 => n87, A => 
                           n88, ZN => O_22_port);
   U115 : AOI22_X1 port map( A1 => A_ns(21), A2 => n6, B1 => A_s(21), B2 => n7,
                           ZN => n88);
   U116 : INV_X1 port map( A => A_s(20), ZN => n87);
   U117 : INV_X1 port map( A => A_ns(20), ZN => n86);
   U118 : OAI221_X1 port map( B1 => n1, B2 => n89, C1 => n3, C2 => n90, A => 
                           n91, ZN => O_21_port);
   U119 : AOI22_X1 port map( A1 => A_ns(20), A2 => n6, B1 => A_s(20), B2 => n7,
                           ZN => n91);
   U120 : INV_X1 port map( A => A_s(19), ZN => n90);
   U121 : INV_X1 port map( A => A_ns(19), ZN => n89);
   U122 : OAI221_X1 port map( B1 => n1, B2 => n92, C1 => n3, C2 => n93, A => 
                           n94, ZN => O_20_port);
   U123 : AOI22_X1 port map( A1 => A_ns(19), A2 => n6, B1 => A_s(19), B2 => n7,
                           ZN => n94);
   U124 : INV_X1 port map( A => A_s(18), ZN => n93);
   U125 : INV_X1 port map( A => A_ns(18), ZN => n92);
   U126 : OAI221_X1 port map( B1 => n1, B2 => n95, C1 => n3, C2 => n96, A => 
                           n97, ZN => O_19_port);
   U127 : AOI22_X1 port map( A1 => A_ns(18), A2 => n6, B1 => A_s(18), B2 => n7,
                           ZN => n97);
   U128 : INV_X1 port map( A => A_s(17), ZN => n96);
   U129 : INV_X1 port map( A => A_ns(17), ZN => n95);
   U130 : OAI221_X1 port map( B1 => n1, B2 => n98, C1 => n3, C2 => n99, A => 
                           n100, ZN => O_18_port);
   U131 : AOI22_X1 port map( A1 => A_ns(17), A2 => n6, B1 => A_s(17), B2 => n7,
                           ZN => n100);
   U132 : INV_X1 port map( A => A_s(16), ZN => n99);
   U133 : INV_X1 port map( A => A_ns(16), ZN => n98);
   U134 : OAI221_X1 port map( B1 => n1, B2 => n101, C1 => n3, C2 => n102, A => 
                           n103, ZN => O_17_port);
   U135 : AOI22_X1 port map( A1 => A_ns(16), A2 => n6, B1 => A_s(16), B2 => n7,
                           ZN => n103);
   U136 : INV_X1 port map( A => A_s(15), ZN => n102);
   U137 : INV_X1 port map( A => A_ns(15), ZN => n101);
   U138 : OAI22_X1 port map( A1 => n104, A2 => n105, B1 => n106, B2 => n107, ZN
                           => O_1_port);
   U139 : OAI221_X1 port map( B1 => n1, B2 => n107, C1 => n3, C2 => n105, A => 
                           n108, ZN => O_2_port);
   U140 : AOI22_X1 port map( A1 => A_ns(1), A2 => n6, B1 => A_s(1), B2 => n7, 
                           ZN => n108);
   U141 : INV_X1 port map( A => A_s(0), ZN => n105);
   U142 : INV_X1 port map( A => A_ns(0), ZN => n107);
   U143 : OAI221_X1 port map( B1 => n1, B2 => n109, C1 => n3, C2 => n110, A => 
                           n111, ZN => O_3_port);
   U144 : AOI22_X1 port map( A1 => A_ns(2), A2 => n6, B1 => A_s(2), B2 => n7, 
                           ZN => n111);
   U145 : INV_X1 port map( A => A_s(1), ZN => n110);
   U146 : INV_X1 port map( A => A_ns(1), ZN => n109);
   U147 : OAI221_X1 port map( B1 => n1, B2 => n112, C1 => n3, C2 => n113, A => 
                           n114, ZN => O_4_port);
   U148 : AOI22_X1 port map( A1 => A_ns(3), A2 => n6, B1 => A_s(3), B2 => n7, 
                           ZN => n114);
   U149 : INV_X1 port map( A => A_s(2), ZN => n113);
   U150 : INV_X1 port map( A => A_ns(2), ZN => n112);
   U151 : OAI221_X1 port map( B1 => n1, B2 => n115, C1 => n3, C2 => n116, A => 
                           n117, ZN => O_5_port);
   U152 : AOI22_X1 port map( A1 => A_ns(4), A2 => n6, B1 => A_s(4), B2 => n7, 
                           ZN => n117);
   U153 : INV_X1 port map( A => A_s(3), ZN => n116);
   U154 : INV_X1 port map( A => A_ns(3), ZN => n115);
   U155 : OAI221_X1 port map( B1 => n1, B2 => n118, C1 => n3, C2 => n119, A => 
                           n120, ZN => O_6_port);
   U156 : AOI22_X1 port map( A1 => A_ns(5), A2 => n6, B1 => A_s(5), B2 => n7, 
                           ZN => n120);
   U157 : INV_X1 port map( A => A_s(4), ZN => n119);
   U158 : INV_X1 port map( A => A_ns(4), ZN => n118);
   U159 : OAI221_X1 port map( B1 => n1, B2 => n121, C1 => n3, C2 => n122, A => 
                           n123, ZN => O_7_port);
   U160 : AOI22_X1 port map( A1 => A_ns(6), A2 => n6, B1 => A_s(6), B2 => n7, 
                           ZN => n123);
   U161 : INV_X1 port map( A => A_s(5), ZN => n122);
   U162 : INV_X1 port map( A => A_ns(5), ZN => n121);
   U163 : OAI221_X1 port map( B1 => n1, B2 => n124, C1 => n3, C2 => n125, A => 
                           n126, ZN => O_8_port);
   U164 : AOI22_X1 port map( A1 => A_ns(7), A2 => n6, B1 => A_s(7), B2 => n7, 
                           ZN => n126);
   U165 : INV_X1 port map( A => A_s(6), ZN => n125);
   U166 : INV_X1 port map( A => A_ns(6), ZN => n124);
   U167 : OAI221_X1 port map( B1 => n1, B2 => n127, C1 => n3, C2 => n128, A => 
                           n129, ZN => O_9_port);
   U168 : AOI22_X1 port map( A1 => A_ns(8), A2 => n6, B1 => A_s(8), B2 => n7, 
                           ZN => n129);
   U169 : INV_X1 port map( A => A_s(7), ZN => n128);
   U170 : INV_X1 port map( A => A_ns(7), ZN => n127);
   U171 : OAI221_X1 port map( B1 => n1, B2 => n130, C1 => n3, C2 => n131, A => 
                           n132, ZN => O_10_port);
   U172 : AOI22_X1 port map( A1 => A_ns(9), A2 => n6, B1 => A_s(9), B2 => n7, 
                           ZN => n132);
   U173 : INV_X1 port map( A => A_s(8), ZN => n131);
   U174 : INV_X1 port map( A => A_ns(8), ZN => n130);
   U175 : OAI221_X1 port map( B1 => n1, B2 => n133, C1 => n3, C2 => n134, A => 
                           n135, ZN => O_11_port);
   U176 : AOI22_X1 port map( A1 => A_ns(10), A2 => n6, B1 => A_s(10), B2 => n7,
                           ZN => n135);
   U177 : INV_X1 port map( A => A_s(9), ZN => n134);
   U178 : INV_X1 port map( A => A_ns(9), ZN => n133);
   U179 : OAI221_X1 port map( B1 => n1, B2 => n136, C1 => n3, C2 => n137, A => 
                           n138, ZN => O_12_port);
   U180 : AOI22_X1 port map( A1 => A_ns(11), A2 => n6, B1 => A_s(11), B2 => n7,
                           ZN => n138);
   U181 : INV_X1 port map( A => A_s(10), ZN => n137);
   U182 : INV_X1 port map( A => A_ns(10), ZN => n136);
   U183 : OAI221_X1 port map( B1 => n1, B2 => n139, C1 => n3, C2 => n140, A => 
                           n141, ZN => O_13_port);
   U184 : AOI22_X1 port map( A1 => A_ns(12), A2 => n6, B1 => A_s(12), B2 => n7,
                           ZN => n141);
   U185 : INV_X1 port map( A => A_s(11), ZN => n140);
   U186 : INV_X1 port map( A => A_ns(11), ZN => n139);
   U187 : OAI221_X1 port map( B1 => n1, B2 => n142, C1 => n3, C2 => n143, A => 
                           n144, ZN => O_14_port);
   U188 : AOI22_X1 port map( A1 => A_ns(13), A2 => n6, B1 => A_s(13), B2 => n7,
                           ZN => n144);
   U189 : INV_X1 port map( A => A_s(12), ZN => n143);
   U190 : INV_X1 port map( A => A_ns(12), ZN => n142);
   U191 : OAI221_X1 port map( B1 => n1, B2 => n145, C1 => n3, C2 => n146, A => 
                           n147, ZN => O_15_port);
   U192 : AOI22_X1 port map( A1 => A_ns(14), A2 => n6, B1 => A_s(14), B2 => n7,
                           ZN => n147);
   U193 : INV_X1 port map( A => A_s(13), ZN => n146);
   U194 : INV_X1 port map( A => A_ns(13), ZN => n145);
   U195 : OAI221_X1 port map( B1 => n1, B2 => n148, C1 => n3, C2 => n149, A => 
                           n150, ZN => O_16_port);
   U196 : AOI22_X1 port map( A1 => A_ns(15), A2 => n6, B1 => A_s(15), B2 => n7,
                           ZN => n150);
   U197 : NAND2_X1 port map( A1 => n151, A2 => n104, ZN => n106);
   U198 : NAND2_X1 port map( A1 => n151, A2 => n152, ZN => n104);
   U199 : XOR2_X1 port map( A => B(16), B => B(15), Z => n151);
   U200 : INV_X1 port map( A => A_s(14), ZN => n149);
   U201 : INV_X1 port map( A => A_ns(14), ZN => n148);
   U202 : INV_X1 port map( A => B(17), ZN => n152);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT48_i14 is

   port( A_s, A_ns, B : in std_logic_vector (47 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (47 downto 0));

end BOOTHENC_NBIT48_i14;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT48_i14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, O_45_port, O_46_port, O_47_port, O_44_port, 
      O_43_port, O_42_port, O_41_port, O_40_port, O_39_port, O_38_port, 
      O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, 
      O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, 
      O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, 
      O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, O_1_port, O_2_port
      , O_3_port, O_4_port, O_5_port, O_6_port, O_7_port, O_8_port, O_9_port, 
      O_10_port, O_11_port, O_12_port, O_13_port, O_14_port : std_logic;

begin
   O <= ( O_47_port, O_46_port, O_45_port, O_44_port, O_43_port, O_42_port, 
      O_41_port, O_40_port, O_39_port, O_38_port, O_37_port, O_36_port, 
      O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, 
      O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, 
      O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, 
      O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, 
      O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, 
      O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(45), A_s(44), A_s(43), A_s(42), A_s(41), A_s(40), A_s(39), 
      A_s(38), A_s(37), A_s(36), A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), 
      A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), 
      A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), 
      A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), 
      A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, 
      X_Logic0_port );
   A_nso <= ( A_ns(45), A_ns(44), A_ns(43), A_ns(42), A_ns(41), A_ns(40), 
      A_ns(39), A_ns(38), A_ns(37), A_ns(36), A_ns(35), A_ns(34), A_ns(33), 
      A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), A_ns(27), A_ns(26), 
      A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), A_ns(20), A_ns(19), 
      A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), A_ns(13), A_ns(12), 
      A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4),
      A_ns(3), A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : OR3_X1 port map( A1 => B(13), A2 => B(14), A3 => n138, ZN => n1);
   U3 : INV_X2 port map( A => n1, ZN => n2);
   U4 : NAND2_X2 port map( A1 => n139, A2 => n5, ZN => n3);
   U5 : INV_X2 port map( A => n12, ZN => n8);
   U6 : NAND2_X2 port map( A1 => n139, A2 => n138, ZN => n5);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n5, C2 => n6, A => n7, ZN
                           => O_45_port);
   U8 : AOI22_X1 port map( A1 => A_ns(43), A2 => n2, B1 => A_s(43), B2 => n8, 
                           ZN => n7);
   U9 : INV_X1 port map( A => A_s(44), ZN => n6);
   U10 : INV_X1 port map( A => A_ns(44), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n5, C2 => n10, A => n11,
                           ZN => O_46_port);
   U12 : AOI22_X1 port map( A1 => A_ns(44), A2 => n2, B1 => A_s(44), B2 => n8, 
                           ZN => n11);
   U13 : OAI221_X1 port map( B1 => n1, B2 => n9, C1 => n12, C2 => n10, A => n13
                           , ZN => O_47_port);
   U14 : AOI22_X1 port map( A1 => A_ns(46), A2 => n14, B1 => A_s(46), B2 => n15
                           , ZN => n13);
   U15 : INV_X1 port map( A => A_s(45), ZN => n10);
   U16 : INV_X1 port map( A => A_ns(45), ZN => n9);
   U17 : OAI221_X1 port map( B1 => n1, B2 => n16, C1 => n12, C2 => n17, A => 
                           n18, ZN => O_44_port);
   U18 : AOI22_X1 port map( A1 => n14, A2 => A_ns(43), B1 => n15, B2 => A_s(43)
                           , ZN => n18);
   U19 : OAI221_X1 port map( B1 => n3, B2 => n16, C1 => n5, C2 => n17, A => n19
                           , ZN => O_43_port);
   U20 : AOI22_X1 port map( A1 => A_ns(41), A2 => n2, B1 => A_s(41), B2 => n8, 
                           ZN => n19);
   U21 : INV_X1 port map( A => A_s(42), ZN => n17);
   U22 : INV_X1 port map( A => A_ns(42), ZN => n16);
   U23 : OAI221_X1 port map( B1 => n3, B2 => n20, C1 => n5, C2 => n21, A => n22
                           , ZN => O_42_port);
   U24 : AOI22_X1 port map( A1 => A_ns(40), A2 => n2, B1 => A_s(40), B2 => n8, 
                           ZN => n22);
   U25 : INV_X1 port map( A => A_s(41), ZN => n21);
   U26 : INV_X1 port map( A => A_ns(41), ZN => n20);
   U27 : OAI221_X1 port map( B1 => n3, B2 => n23, C1 => n5, C2 => n24, A => n25
                           , ZN => O_41_port);
   U28 : AOI22_X1 port map( A1 => A_ns(39), A2 => n2, B1 => A_s(39), B2 => n8, 
                           ZN => n25);
   U29 : INV_X1 port map( A => A_s(40), ZN => n24);
   U30 : INV_X1 port map( A => A_ns(40), ZN => n23);
   U31 : OAI221_X1 port map( B1 => n3, B2 => n26, C1 => n5, C2 => n27, A => n28
                           , ZN => O_40_port);
   U32 : AOI22_X1 port map( A1 => A_ns(38), A2 => n2, B1 => A_s(38), B2 => n8, 
                           ZN => n28);
   U33 : INV_X1 port map( A => A_s(39), ZN => n27);
   U34 : INV_X1 port map( A => A_ns(39), ZN => n26);
   U35 : OAI221_X1 port map( B1 => n3, B2 => n29, C1 => n5, C2 => n30, A => n31
                           , ZN => O_39_port);
   U36 : AOI22_X1 port map( A1 => A_ns(37), A2 => n2, B1 => A_s(37), B2 => n8, 
                           ZN => n31);
   U37 : INV_X1 port map( A => A_s(38), ZN => n30);
   U38 : INV_X1 port map( A => A_ns(38), ZN => n29);
   U39 : OAI221_X1 port map( B1 => n3, B2 => n32, C1 => n5, C2 => n33, A => n34
                           , ZN => O_38_port);
   U40 : AOI22_X1 port map( A1 => A_ns(36), A2 => n2, B1 => A_s(36), B2 => n8, 
                           ZN => n34);
   U41 : INV_X1 port map( A => A_s(37), ZN => n33);
   U42 : INV_X1 port map( A => A_ns(37), ZN => n32);
   U43 : OAI221_X1 port map( B1 => n3, B2 => n35, C1 => n5, C2 => n36, A => n37
                           , ZN => O_37_port);
   U44 : AOI22_X1 port map( A1 => A_ns(35), A2 => n2, B1 => A_s(35), B2 => n8, 
                           ZN => n37);
   U45 : INV_X1 port map( A => A_s(36), ZN => n36);
   U46 : INV_X1 port map( A => A_ns(36), ZN => n35);
   U47 : OAI221_X1 port map( B1 => n3, B2 => n38, C1 => n5, C2 => n39, A => n40
                           , ZN => O_36_port);
   U48 : AOI22_X1 port map( A1 => A_ns(34), A2 => n2, B1 => A_s(34), B2 => n8, 
                           ZN => n40);
   U49 : INV_X1 port map( A => A_s(35), ZN => n39);
   U50 : INV_X1 port map( A => A_ns(35), ZN => n38);
   U51 : OAI221_X1 port map( B1 => n3, B2 => n41, C1 => n5, C2 => n42, A => n43
                           , ZN => O_35_port);
   U52 : AOI22_X1 port map( A1 => A_ns(33), A2 => n2, B1 => A_s(33), B2 => n8, 
                           ZN => n43);
   U53 : INV_X1 port map( A => A_s(34), ZN => n42);
   U54 : INV_X1 port map( A => A_ns(34), ZN => n41);
   U55 : OAI221_X1 port map( B1 => n3, B2 => n44, C1 => n5, C2 => n45, A => n46
                           , ZN => O_34_port);
   U56 : AOI22_X1 port map( A1 => A_ns(32), A2 => n2, B1 => A_s(32), B2 => n8, 
                           ZN => n46);
   U57 : INV_X1 port map( A => A_s(33), ZN => n45);
   U58 : INV_X1 port map( A => A_ns(33), ZN => n44);
   U59 : OAI221_X1 port map( B1 => n3, B2 => n47, C1 => n5, C2 => n48, A => n49
                           , ZN => O_33_port);
   U60 : AOI22_X1 port map( A1 => A_ns(31), A2 => n2, B1 => A_s(31), B2 => n8, 
                           ZN => n49);
   U61 : INV_X1 port map( A => A_s(32), ZN => n48);
   U62 : INV_X1 port map( A => A_ns(32), ZN => n47);
   U63 : OAI221_X1 port map( B1 => n3, B2 => n50, C1 => n5, C2 => n51, A => n52
                           , ZN => O_32_port);
   U64 : AOI22_X1 port map( A1 => A_ns(30), A2 => n2, B1 => A_s(30), B2 => n8, 
                           ZN => n52);
   U65 : INV_X1 port map( A => A_s(31), ZN => n51);
   U66 : INV_X1 port map( A => A_ns(31), ZN => n50);
   U67 : OAI221_X1 port map( B1 => n3, B2 => n53, C1 => n5, C2 => n54, A => n55
                           , ZN => O_31_port);
   U68 : AOI22_X1 port map( A1 => A_ns(29), A2 => n2, B1 => A_s(29), B2 => n8, 
                           ZN => n55);
   U69 : INV_X1 port map( A => A_s(30), ZN => n54);
   U70 : INV_X1 port map( A => A_ns(30), ZN => n53);
   U71 : OAI221_X1 port map( B1 => n3, B2 => n56, C1 => n5, C2 => n57, A => n58
                           , ZN => O_30_port);
   U72 : AOI22_X1 port map( A1 => A_ns(28), A2 => n2, B1 => A_s(28), B2 => n8, 
                           ZN => n58);
   U73 : INV_X1 port map( A => A_s(29), ZN => n57);
   U74 : INV_X1 port map( A => A_ns(29), ZN => n56);
   U75 : OAI221_X1 port map( B1 => n3, B2 => n59, C1 => n5, C2 => n60, A => n61
                           , ZN => O_29_port);
   U76 : AOI22_X1 port map( A1 => A_ns(27), A2 => n2, B1 => A_s(27), B2 => n8, 
                           ZN => n61);
   U77 : INV_X1 port map( A => A_s(28), ZN => n60);
   U78 : INV_X1 port map( A => A_ns(28), ZN => n59);
   U79 : OAI221_X1 port map( B1 => n3, B2 => n62, C1 => n5, C2 => n63, A => n64
                           , ZN => O_28_port);
   U80 : AOI22_X1 port map( A1 => A_ns(26), A2 => n2, B1 => A_s(26), B2 => n8, 
                           ZN => n64);
   U81 : INV_X1 port map( A => A_s(27), ZN => n63);
   U82 : INV_X1 port map( A => A_ns(27), ZN => n62);
   U83 : OAI221_X1 port map( B1 => n3, B2 => n65, C1 => n5, C2 => n66, A => n67
                           , ZN => O_27_port);
   U84 : AOI22_X1 port map( A1 => A_ns(25), A2 => n2, B1 => A_s(25), B2 => n8, 
                           ZN => n67);
   U85 : INV_X1 port map( A => A_s(26), ZN => n66);
   U86 : INV_X1 port map( A => A_ns(26), ZN => n65);
   U87 : OAI221_X1 port map( B1 => n3, B2 => n68, C1 => n5, C2 => n69, A => n70
                           , ZN => O_26_port);
   U88 : AOI22_X1 port map( A1 => A_ns(24), A2 => n2, B1 => A_s(24), B2 => n8, 
                           ZN => n70);
   U89 : INV_X1 port map( A => A_s(25), ZN => n69);
   U90 : INV_X1 port map( A => A_ns(25), ZN => n68);
   U91 : OAI221_X1 port map( B1 => n3, B2 => n71, C1 => n5, C2 => n72, A => n73
                           , ZN => O_25_port);
   U92 : AOI22_X1 port map( A1 => A_ns(23), A2 => n2, B1 => A_s(23), B2 => n8, 
                           ZN => n73);
   U93 : INV_X1 port map( A => A_s(24), ZN => n72);
   U94 : INV_X1 port map( A => A_ns(24), ZN => n71);
   U95 : OAI221_X1 port map( B1 => n3, B2 => n74, C1 => n5, C2 => n75, A => n76
                           , ZN => O_24_port);
   U96 : AOI22_X1 port map( A1 => A_ns(22), A2 => n2, B1 => A_s(22), B2 => n8, 
                           ZN => n76);
   U97 : INV_X1 port map( A => A_s(23), ZN => n75);
   U98 : INV_X1 port map( A => A_ns(23), ZN => n74);
   U99 : OAI221_X1 port map( B1 => n3, B2 => n77, C1 => n5, C2 => n78, A => n79
                           , ZN => O_23_port);
   U100 : AOI22_X1 port map( A1 => A_ns(21), A2 => n2, B1 => A_s(21), B2 => n8,
                           ZN => n79);
   U101 : INV_X1 port map( A => A_s(22), ZN => n78);
   U102 : INV_X1 port map( A => A_ns(22), ZN => n77);
   U103 : OAI221_X1 port map( B1 => n3, B2 => n80, C1 => n5, C2 => n81, A => 
                           n82, ZN => O_22_port);
   U104 : AOI22_X1 port map( A1 => A_ns(20), A2 => n2, B1 => A_s(20), B2 => n8,
                           ZN => n82);
   U105 : INV_X1 port map( A => A_s(21), ZN => n81);
   U106 : INV_X1 port map( A => A_ns(21), ZN => n80);
   U107 : OAI221_X1 port map( B1 => n3, B2 => n83, C1 => n5, C2 => n84, A => 
                           n85, ZN => O_21_port);
   U108 : AOI22_X1 port map( A1 => A_ns(19), A2 => n2, B1 => A_s(19), B2 => n8,
                           ZN => n85);
   U109 : INV_X1 port map( A => A_s(20), ZN => n84);
   U110 : INV_X1 port map( A => A_ns(20), ZN => n83);
   U111 : OAI221_X1 port map( B1 => n3, B2 => n86, C1 => n5, C2 => n87, A => 
                           n88, ZN => O_20_port);
   U112 : AOI22_X1 port map( A1 => A_ns(18), A2 => n2, B1 => A_s(18), B2 => n8,
                           ZN => n88);
   U113 : INV_X1 port map( A => A_s(19), ZN => n87);
   U114 : INV_X1 port map( A => A_ns(19), ZN => n86);
   U115 : OAI221_X1 port map( B1 => n3, B2 => n89, C1 => n5, C2 => n90, A => 
                           n91, ZN => O_19_port);
   U116 : AOI22_X1 port map( A1 => A_ns(17), A2 => n2, B1 => A_s(17), B2 => n8,
                           ZN => n91);
   U117 : INV_X1 port map( A => A_s(18), ZN => n90);
   U118 : INV_X1 port map( A => A_ns(18), ZN => n89);
   U119 : OAI221_X1 port map( B1 => n3, B2 => n92, C1 => n5, C2 => n93, A => 
                           n94, ZN => O_18_port);
   U120 : AOI22_X1 port map( A1 => A_ns(16), A2 => n2, B1 => A_s(16), B2 => n8,
                           ZN => n94);
   U121 : INV_X1 port map( A => A_s(17), ZN => n93);
   U122 : INV_X1 port map( A => A_ns(17), ZN => n92);
   U123 : OAI221_X1 port map( B1 => n3, B2 => n95, C1 => n5, C2 => n96, A => 
                           n97, ZN => O_17_port);
   U124 : AOI22_X1 port map( A1 => A_ns(15), A2 => n2, B1 => A_s(15), B2 => n8,
                           ZN => n97);
   U125 : INV_X1 port map( A => A_s(16), ZN => n96);
   U126 : INV_X1 port map( A => A_ns(16), ZN => n95);
   U127 : OAI221_X1 port map( B1 => n3, B2 => n98, C1 => n5, C2 => n99, A => 
                           n100, ZN => O_16_port);
   U128 : AOI22_X1 port map( A1 => A_ns(14), A2 => n2, B1 => A_s(14), B2 => n8,
                           ZN => n100);
   U129 : INV_X1 port map( A => A_s(15), ZN => n99);
   U130 : INV_X1 port map( A => A_ns(15), ZN => n98);
   U131 : OAI221_X1 port map( B1 => n3, B2 => n101, C1 => n5, C2 => n102, A => 
                           n103, ZN => O_15_port);
   U132 : AOI22_X1 port map( A1 => A_ns(13), A2 => n2, B1 => A_s(13), B2 => n8,
                           ZN => n103);
   U133 : INV_X1 port map( A => A_s(14), ZN => n102);
   U134 : INV_X1 port map( A => A_ns(14), ZN => n101);
   U135 : INV_X1 port map( A => n104, ZN => O_1_port);
   U136 : AOI22_X1 port map( A1 => n15, A2 => A_s(0), B1 => n14, B2 => A_ns(0),
                           ZN => n104);
   U137 : OAI221_X1 port map( B1 => n3, B2 => n105, C1 => n5, C2 => n106, A => 
                           n107, ZN => O_2_port);
   U138 : AOI22_X1 port map( A1 => A_ns(0), A2 => n2, B1 => A_s(0), B2 => n8, 
                           ZN => n107);
   U139 : INV_X1 port map( A => n108, ZN => O_3_port);
   U140 : AOI221_X1 port map( B1 => n14, B2 => A_ns(2), C1 => n15, C2 => A_s(2)
                           , A => n109, ZN => n108);
   U141 : OAI22_X1 port map( A1 => n105, A2 => n1, B1 => n106, B2 => n12, ZN =>
                           n109);
   U142 : INV_X1 port map( A => A_s(1), ZN => n106);
   U143 : INV_X1 port map( A => A_ns(1), ZN => n105);
   U144 : OAI221_X1 port map( B1 => n3, B2 => n110, C1 => n5, C2 => n111, A => 
                           n112, ZN => O_4_port);
   U145 : AOI22_X1 port map( A1 => A_ns(2), A2 => n2, B1 => A_s(2), B2 => n8, 
                           ZN => n112);
   U146 : INV_X1 port map( A => n113, ZN => O_5_port);
   U147 : AOI221_X1 port map( B1 => n14, B2 => A_ns(4), C1 => n15, C2 => A_s(4)
                           , A => n114, ZN => n113);
   U148 : OAI22_X1 port map( A1 => n110, A2 => n1, B1 => n111, B2 => n12, ZN =>
                           n114);
   U149 : INV_X1 port map( A => A_s(3), ZN => n111);
   U150 : INV_X1 port map( A => A_ns(3), ZN => n110);
   U151 : OAI221_X1 port map( B1 => n3, B2 => n115, C1 => n5, C2 => n116, A => 
                           n117, ZN => O_6_port);
   U152 : AOI22_X1 port map( A1 => A_ns(4), A2 => n2, B1 => A_s(4), B2 => n8, 
                           ZN => n117);
   U153 : INV_X1 port map( A => n118, ZN => O_7_port);
   U154 : AOI221_X1 port map( B1 => n14, B2 => A_ns(6), C1 => n15, C2 => A_s(6)
                           , A => n119, ZN => n118);
   U155 : OAI22_X1 port map( A1 => n115, A2 => n1, B1 => n116, B2 => n12, ZN =>
                           n119);
   U156 : INV_X1 port map( A => A_s(5), ZN => n116);
   U157 : INV_X1 port map( A => A_ns(5), ZN => n115);
   U158 : OAI221_X1 port map( B1 => n3, B2 => n120, C1 => n5, C2 => n121, A => 
                           n122, ZN => O_8_port);
   U159 : AOI22_X1 port map( A1 => A_ns(6), A2 => n2, B1 => A_s(6), B2 => n8, 
                           ZN => n122);
   U160 : INV_X1 port map( A => n123, ZN => O_9_port);
   U161 : AOI221_X1 port map( B1 => n14, B2 => A_ns(8), C1 => n15, C2 => A_s(8)
                           , A => n124, ZN => n123);
   U162 : OAI22_X1 port map( A1 => n120, A2 => n1, B1 => n121, B2 => n12, ZN =>
                           n124);
   U163 : INV_X1 port map( A => A_s(7), ZN => n121);
   U164 : INV_X1 port map( A => A_ns(7), ZN => n120);
   U165 : OAI221_X1 port map( B1 => n3, B2 => n125, C1 => n5, C2 => n126, A => 
                           n127, ZN => O_10_port);
   U166 : AOI22_X1 port map( A1 => A_ns(8), A2 => n2, B1 => A_s(8), B2 => n8, 
                           ZN => n127);
   U167 : INV_X1 port map( A => n128, ZN => O_11_port);
   U168 : AOI221_X1 port map( B1 => n14, B2 => A_ns(10), C1 => n15, C2 => 
                           A_s(10), A => n129, ZN => n128);
   U169 : OAI22_X1 port map( A1 => n125, A2 => n1, B1 => n126, B2 => n12, ZN =>
                           n129);
   U170 : INV_X1 port map( A => A_s(9), ZN => n126);
   U171 : INV_X1 port map( A => A_ns(9), ZN => n125);
   U172 : OAI221_X1 port map( B1 => n3, B2 => n130, C1 => n5, C2 => n131, A => 
                           n132, ZN => O_12_port);
   U173 : AOI22_X1 port map( A1 => A_ns(10), A2 => n2, B1 => A_s(10), B2 => n8,
                           ZN => n132);
   U174 : INV_X1 port map( A => n133, ZN => O_13_port);
   U175 : AOI221_X1 port map( B1 => n14, B2 => A_ns(12), C1 => n15, C2 => 
                           A_s(12), A => n134, ZN => n133);
   U176 : OAI22_X1 port map( A1 => n130, A2 => n1, B1 => n131, B2 => n12, ZN =>
                           n134);
   U177 : INV_X1 port map( A => A_s(11), ZN => n131);
   U178 : INV_X1 port map( A => A_ns(11), ZN => n130);
   U179 : INV_X1 port map( A => n5, ZN => n15);
   U180 : INV_X1 port map( A => n3, ZN => n14);
   U181 : OAI221_X1 port map( B1 => n3, B2 => n135, C1 => n5, C2 => n136, A => 
                           n137, ZN => O_14_port);
   U182 : AOI22_X1 port map( A1 => A_ns(12), A2 => n2, B1 => A_s(12), B2 => n8,
                           ZN => n137);
   U183 : NAND3_X1 port map( A1 => B(13), A2 => n138, A3 => B(14), ZN => n12);
   U184 : INV_X1 port map( A => A_s(13), ZN => n136);
   U185 : INV_X1 port map( A => A_ns(13), ZN => n135);
   U186 : INV_X1 port map( A => B(15), ZN => n138);
   U187 : XOR2_X1 port map( A => B(14), B => B(13), Z => n139);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT46_i12 is

   port( A_s, A_ns, B : in std_logic_vector (45 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (45 downto 0));

end BOOTHENC_NBIT46_i12;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT46_i12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, 
      O_43_port, O_44_port, O_45_port, O_42_port, O_41_port, O_40_port, 
      O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, 
      O_15_port, O_14_port, O_13_port, O_1_port, O_2_port, O_3_port, O_4_port, 
      O_5_port, O_6_port, O_7_port, O_8_port, O_9_port, O_10_port, O_11_port, 
      O_12_port : std_logic;

begin
   O <= ( O_45_port, O_44_port, O_43_port, O_42_port, O_41_port, O_40_port, 
      O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, 
      O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, 
      O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(43), A_s(42), A_s(41), A_s(40), A_s(39), A_s(38), A_s(37), 
      A_s(36), A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), 
      A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), 
      A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), 
      A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4)
      , A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(43), A_ns(42), A_ns(41), A_ns(40), A_ns(39), A_ns(38), 
      A_ns(37), A_ns(36), A_ns(35), A_ns(34), A_ns(33), A_ns(32), A_ns(31), 
      A_ns(30), A_ns(29), A_ns(28), A_ns(27), A_ns(26), A_ns(25), A_ns(24), 
      A_ns(23), A_ns(22), A_ns(21), A_ns(20), A_ns(19), A_ns(18), A_ns(17), 
      A_ns(16), A_ns(15), A_ns(14), A_ns(13), A_ns(12), A_ns(11), A_ns(10), 
      A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), 
      A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : OR3_X1 port map( A1 => B(11), A2 => B(12), A3 => n133, ZN => n1);
   U3 : INV_X2 port map( A => n1, ZN => n2);
   U4 : NAND2_X2 port map( A1 => n134, A2 => n5, ZN => n3);
   U5 : INV_X2 port map( A => n12, ZN => n8);
   U6 : NAND2_X2 port map( A1 => n134, A2 => n133, ZN => n5);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n5, C2 => n6, A => n7, ZN
                           => O_43_port);
   U8 : AOI22_X1 port map( A1 => A_ns(41), A2 => n2, B1 => A_s(41), B2 => n8, 
                           ZN => n7);
   U9 : INV_X1 port map( A => A_s(42), ZN => n6);
   U10 : INV_X1 port map( A => A_ns(42), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n5, C2 => n10, A => n11,
                           ZN => O_44_port);
   U12 : AOI22_X1 port map( A1 => A_ns(42), A2 => n2, B1 => A_s(42), B2 => n8, 
                           ZN => n11);
   U13 : OAI221_X1 port map( B1 => n1, B2 => n9, C1 => n12, C2 => n10, A => n13
                           , ZN => O_45_port);
   U14 : AOI22_X1 port map( A1 => A_ns(44), A2 => n14, B1 => A_s(44), B2 => n15
                           , ZN => n13);
   U15 : INV_X1 port map( A => A_s(43), ZN => n10);
   U16 : INV_X1 port map( A => A_ns(43), ZN => n9);
   U17 : OAI221_X1 port map( B1 => n1, B2 => n16, C1 => n12, C2 => n17, A => 
                           n18, ZN => O_42_port);
   U18 : AOI22_X1 port map( A1 => n14, A2 => A_ns(41), B1 => n15, B2 => A_s(41)
                           , ZN => n18);
   U19 : OAI221_X1 port map( B1 => n3, B2 => n16, C1 => n5, C2 => n17, A => n19
                           , ZN => O_41_port);
   U20 : AOI22_X1 port map( A1 => A_ns(39), A2 => n2, B1 => A_s(39), B2 => n8, 
                           ZN => n19);
   U21 : INV_X1 port map( A => A_s(40), ZN => n17);
   U22 : INV_X1 port map( A => A_ns(40), ZN => n16);
   U23 : OAI221_X1 port map( B1 => n3, B2 => n20, C1 => n5, C2 => n21, A => n22
                           , ZN => O_40_port);
   U24 : AOI22_X1 port map( A1 => A_ns(38), A2 => n2, B1 => A_s(38), B2 => n8, 
                           ZN => n22);
   U25 : INV_X1 port map( A => A_s(39), ZN => n21);
   U26 : INV_X1 port map( A => A_ns(39), ZN => n20);
   U27 : OAI221_X1 port map( B1 => n3, B2 => n23, C1 => n5, C2 => n24, A => n25
                           , ZN => O_39_port);
   U28 : AOI22_X1 port map( A1 => A_ns(37), A2 => n2, B1 => A_s(37), B2 => n8, 
                           ZN => n25);
   U29 : INV_X1 port map( A => A_s(38), ZN => n24);
   U30 : INV_X1 port map( A => A_ns(38), ZN => n23);
   U31 : OAI221_X1 port map( B1 => n3, B2 => n26, C1 => n5, C2 => n27, A => n28
                           , ZN => O_38_port);
   U32 : AOI22_X1 port map( A1 => A_ns(36), A2 => n2, B1 => A_s(36), B2 => n8, 
                           ZN => n28);
   U33 : INV_X1 port map( A => A_s(37), ZN => n27);
   U34 : INV_X1 port map( A => A_ns(37), ZN => n26);
   U35 : OAI221_X1 port map( B1 => n3, B2 => n29, C1 => n5, C2 => n30, A => n31
                           , ZN => O_37_port);
   U36 : AOI22_X1 port map( A1 => A_ns(35), A2 => n2, B1 => A_s(35), B2 => n8, 
                           ZN => n31);
   U37 : INV_X1 port map( A => A_s(36), ZN => n30);
   U38 : INV_X1 port map( A => A_ns(36), ZN => n29);
   U39 : OAI221_X1 port map( B1 => n3, B2 => n32, C1 => n5, C2 => n33, A => n34
                           , ZN => O_36_port);
   U40 : AOI22_X1 port map( A1 => A_ns(34), A2 => n2, B1 => A_s(34), B2 => n8, 
                           ZN => n34);
   U41 : INV_X1 port map( A => A_s(35), ZN => n33);
   U42 : INV_X1 port map( A => A_ns(35), ZN => n32);
   U43 : OAI221_X1 port map( B1 => n3, B2 => n35, C1 => n5, C2 => n36, A => n37
                           , ZN => O_35_port);
   U44 : AOI22_X1 port map( A1 => A_ns(33), A2 => n2, B1 => A_s(33), B2 => n8, 
                           ZN => n37);
   U45 : INV_X1 port map( A => A_s(34), ZN => n36);
   U46 : INV_X1 port map( A => A_ns(34), ZN => n35);
   U47 : OAI221_X1 port map( B1 => n3, B2 => n38, C1 => n5, C2 => n39, A => n40
                           , ZN => O_34_port);
   U48 : AOI22_X1 port map( A1 => A_ns(32), A2 => n2, B1 => A_s(32), B2 => n8, 
                           ZN => n40);
   U49 : INV_X1 port map( A => A_s(33), ZN => n39);
   U50 : INV_X1 port map( A => A_ns(33), ZN => n38);
   U51 : OAI221_X1 port map( B1 => n3, B2 => n41, C1 => n5, C2 => n42, A => n43
                           , ZN => O_33_port);
   U52 : AOI22_X1 port map( A1 => A_ns(31), A2 => n2, B1 => A_s(31), B2 => n8, 
                           ZN => n43);
   U53 : INV_X1 port map( A => A_s(32), ZN => n42);
   U54 : INV_X1 port map( A => A_ns(32), ZN => n41);
   U55 : OAI221_X1 port map( B1 => n3, B2 => n44, C1 => n5, C2 => n45, A => n46
                           , ZN => O_32_port);
   U56 : AOI22_X1 port map( A1 => A_ns(30), A2 => n2, B1 => A_s(30), B2 => n8, 
                           ZN => n46);
   U57 : INV_X1 port map( A => A_s(31), ZN => n45);
   U58 : INV_X1 port map( A => A_ns(31), ZN => n44);
   U59 : OAI221_X1 port map( B1 => n3, B2 => n47, C1 => n5, C2 => n48, A => n49
                           , ZN => O_31_port);
   U60 : AOI22_X1 port map( A1 => A_ns(29), A2 => n2, B1 => A_s(29), B2 => n8, 
                           ZN => n49);
   U61 : INV_X1 port map( A => A_s(30), ZN => n48);
   U62 : INV_X1 port map( A => A_ns(30), ZN => n47);
   U63 : OAI221_X1 port map( B1 => n3, B2 => n50, C1 => n5, C2 => n51, A => n52
                           , ZN => O_30_port);
   U64 : AOI22_X1 port map( A1 => A_ns(28), A2 => n2, B1 => A_s(28), B2 => n8, 
                           ZN => n52);
   U65 : INV_X1 port map( A => A_s(29), ZN => n51);
   U66 : INV_X1 port map( A => A_ns(29), ZN => n50);
   U67 : OAI221_X1 port map( B1 => n3, B2 => n53, C1 => n5, C2 => n54, A => n55
                           , ZN => O_29_port);
   U68 : AOI22_X1 port map( A1 => A_ns(27), A2 => n2, B1 => A_s(27), B2 => n8, 
                           ZN => n55);
   U69 : INV_X1 port map( A => A_s(28), ZN => n54);
   U70 : INV_X1 port map( A => A_ns(28), ZN => n53);
   U71 : OAI221_X1 port map( B1 => n3, B2 => n56, C1 => n5, C2 => n57, A => n58
                           , ZN => O_28_port);
   U72 : AOI22_X1 port map( A1 => A_ns(26), A2 => n2, B1 => A_s(26), B2 => n8, 
                           ZN => n58);
   U73 : INV_X1 port map( A => A_s(27), ZN => n57);
   U74 : INV_X1 port map( A => A_ns(27), ZN => n56);
   U75 : OAI221_X1 port map( B1 => n3, B2 => n59, C1 => n5, C2 => n60, A => n61
                           , ZN => O_27_port);
   U76 : AOI22_X1 port map( A1 => A_ns(25), A2 => n2, B1 => A_s(25), B2 => n8, 
                           ZN => n61);
   U77 : INV_X1 port map( A => A_s(26), ZN => n60);
   U78 : INV_X1 port map( A => A_ns(26), ZN => n59);
   U79 : OAI221_X1 port map( B1 => n3, B2 => n62, C1 => n5, C2 => n63, A => n64
                           , ZN => O_26_port);
   U80 : AOI22_X1 port map( A1 => A_ns(24), A2 => n2, B1 => A_s(24), B2 => n8, 
                           ZN => n64);
   U81 : INV_X1 port map( A => A_s(25), ZN => n63);
   U82 : INV_X1 port map( A => A_ns(25), ZN => n62);
   U83 : OAI221_X1 port map( B1 => n3, B2 => n65, C1 => n5, C2 => n66, A => n67
                           , ZN => O_25_port);
   U84 : AOI22_X1 port map( A1 => A_ns(23), A2 => n2, B1 => A_s(23), B2 => n8, 
                           ZN => n67);
   U85 : INV_X1 port map( A => A_s(24), ZN => n66);
   U86 : INV_X1 port map( A => A_ns(24), ZN => n65);
   U87 : OAI221_X1 port map( B1 => n3, B2 => n68, C1 => n5, C2 => n69, A => n70
                           , ZN => O_24_port);
   U88 : AOI22_X1 port map( A1 => A_ns(22), A2 => n2, B1 => A_s(22), B2 => n8, 
                           ZN => n70);
   U89 : INV_X1 port map( A => A_s(23), ZN => n69);
   U90 : INV_X1 port map( A => A_ns(23), ZN => n68);
   U91 : OAI221_X1 port map( B1 => n3, B2 => n71, C1 => n5, C2 => n72, A => n73
                           , ZN => O_23_port);
   U92 : AOI22_X1 port map( A1 => A_ns(21), A2 => n2, B1 => A_s(21), B2 => n8, 
                           ZN => n73);
   U93 : INV_X1 port map( A => A_s(22), ZN => n72);
   U94 : INV_X1 port map( A => A_ns(22), ZN => n71);
   U95 : OAI221_X1 port map( B1 => n3, B2 => n74, C1 => n5, C2 => n75, A => n76
                           , ZN => O_22_port);
   U96 : AOI22_X1 port map( A1 => A_ns(20), A2 => n2, B1 => A_s(20), B2 => n8, 
                           ZN => n76);
   U97 : INV_X1 port map( A => A_s(21), ZN => n75);
   U98 : INV_X1 port map( A => A_ns(21), ZN => n74);
   U99 : OAI221_X1 port map( B1 => n3, B2 => n77, C1 => n5, C2 => n78, A => n79
                           , ZN => O_21_port);
   U100 : AOI22_X1 port map( A1 => A_ns(19), A2 => n2, B1 => A_s(19), B2 => n8,
                           ZN => n79);
   U101 : INV_X1 port map( A => A_s(20), ZN => n78);
   U102 : INV_X1 port map( A => A_ns(20), ZN => n77);
   U103 : OAI221_X1 port map( B1 => n3, B2 => n80, C1 => n5, C2 => n81, A => 
                           n82, ZN => O_20_port);
   U104 : AOI22_X1 port map( A1 => A_ns(18), A2 => n2, B1 => A_s(18), B2 => n8,
                           ZN => n82);
   U105 : INV_X1 port map( A => A_s(19), ZN => n81);
   U106 : INV_X1 port map( A => A_ns(19), ZN => n80);
   U107 : OAI221_X1 port map( B1 => n3, B2 => n83, C1 => n5, C2 => n84, A => 
                           n85, ZN => O_19_port);
   U108 : AOI22_X1 port map( A1 => A_ns(17), A2 => n2, B1 => A_s(17), B2 => n8,
                           ZN => n85);
   U109 : INV_X1 port map( A => A_s(18), ZN => n84);
   U110 : INV_X1 port map( A => A_ns(18), ZN => n83);
   U111 : OAI221_X1 port map( B1 => n3, B2 => n86, C1 => n5, C2 => n87, A => 
                           n88, ZN => O_18_port);
   U112 : AOI22_X1 port map( A1 => A_ns(16), A2 => n2, B1 => A_s(16), B2 => n8,
                           ZN => n88);
   U113 : INV_X1 port map( A => A_s(17), ZN => n87);
   U114 : INV_X1 port map( A => A_ns(17), ZN => n86);
   U115 : OAI221_X1 port map( B1 => n3, B2 => n89, C1 => n5, C2 => n90, A => 
                           n91, ZN => O_17_port);
   U116 : AOI22_X1 port map( A1 => A_ns(15), A2 => n2, B1 => A_s(15), B2 => n8,
                           ZN => n91);
   U117 : INV_X1 port map( A => A_s(16), ZN => n90);
   U118 : INV_X1 port map( A => A_ns(16), ZN => n89);
   U119 : OAI221_X1 port map( B1 => n3, B2 => n92, C1 => n5, C2 => n93, A => 
                           n94, ZN => O_16_port);
   U120 : AOI22_X1 port map( A1 => A_ns(14), A2 => n2, B1 => A_s(14), B2 => n8,
                           ZN => n94);
   U121 : INV_X1 port map( A => A_s(15), ZN => n93);
   U122 : INV_X1 port map( A => A_ns(15), ZN => n92);
   U123 : OAI221_X1 port map( B1 => n3, B2 => n95, C1 => n5, C2 => n96, A => 
                           n97, ZN => O_15_port);
   U124 : AOI22_X1 port map( A1 => A_ns(13), A2 => n2, B1 => A_s(13), B2 => n8,
                           ZN => n97);
   U125 : INV_X1 port map( A => A_s(14), ZN => n96);
   U126 : INV_X1 port map( A => A_ns(14), ZN => n95);
   U127 : OAI221_X1 port map( B1 => n3, B2 => n98, C1 => n5, C2 => n99, A => 
                           n100, ZN => O_14_port);
   U128 : AOI22_X1 port map( A1 => A_ns(12), A2 => n2, B1 => A_s(12), B2 => n8,
                           ZN => n100);
   U129 : INV_X1 port map( A => A_s(13), ZN => n99);
   U130 : INV_X1 port map( A => A_ns(13), ZN => n98);
   U131 : OAI221_X1 port map( B1 => n3, B2 => n101, C1 => n5, C2 => n102, A => 
                           n103, ZN => O_13_port);
   U132 : AOI22_X1 port map( A1 => A_ns(11), A2 => n2, B1 => A_s(11), B2 => n8,
                           ZN => n103);
   U133 : INV_X1 port map( A => A_s(12), ZN => n102);
   U134 : INV_X1 port map( A => A_ns(12), ZN => n101);
   U135 : INV_X1 port map( A => n104, ZN => O_1_port);
   U136 : AOI22_X1 port map( A1 => n15, A2 => A_s(0), B1 => n14, B2 => A_ns(0),
                           ZN => n104);
   U137 : OAI221_X1 port map( B1 => n3, B2 => n105, C1 => n5, C2 => n106, A => 
                           n107, ZN => O_2_port);
   U138 : AOI22_X1 port map( A1 => A_ns(0), A2 => n2, B1 => A_s(0), B2 => n8, 
                           ZN => n107);
   U139 : INV_X1 port map( A => n108, ZN => O_3_port);
   U140 : AOI221_X1 port map( B1 => n14, B2 => A_ns(2), C1 => n15, C2 => A_s(2)
                           , A => n109, ZN => n108);
   U141 : OAI22_X1 port map( A1 => n105, A2 => n1, B1 => n106, B2 => n12, ZN =>
                           n109);
   U142 : INV_X1 port map( A => A_s(1), ZN => n106);
   U143 : INV_X1 port map( A => A_ns(1), ZN => n105);
   U144 : OAI221_X1 port map( B1 => n3, B2 => n110, C1 => n5, C2 => n111, A => 
                           n112, ZN => O_4_port);
   U145 : AOI22_X1 port map( A1 => A_ns(2), A2 => n2, B1 => A_s(2), B2 => n8, 
                           ZN => n112);
   U146 : INV_X1 port map( A => n113, ZN => O_5_port);
   U147 : AOI221_X1 port map( B1 => n14, B2 => A_ns(4), C1 => n15, C2 => A_s(4)
                           , A => n114, ZN => n113);
   U148 : OAI22_X1 port map( A1 => n110, A2 => n1, B1 => n111, B2 => n12, ZN =>
                           n114);
   U149 : INV_X1 port map( A => A_s(3), ZN => n111);
   U150 : INV_X1 port map( A => A_ns(3), ZN => n110);
   U151 : OAI221_X1 port map( B1 => n3, B2 => n115, C1 => n5, C2 => n116, A => 
                           n117, ZN => O_6_port);
   U152 : AOI22_X1 port map( A1 => A_ns(4), A2 => n2, B1 => A_s(4), B2 => n8, 
                           ZN => n117);
   U153 : INV_X1 port map( A => n118, ZN => O_7_port);
   U154 : AOI221_X1 port map( B1 => n14, B2 => A_ns(6), C1 => n15, C2 => A_s(6)
                           , A => n119, ZN => n118);
   U155 : OAI22_X1 port map( A1 => n115, A2 => n1, B1 => n116, B2 => n12, ZN =>
                           n119);
   U156 : INV_X1 port map( A => A_s(5), ZN => n116);
   U157 : INV_X1 port map( A => A_ns(5), ZN => n115);
   U158 : OAI221_X1 port map( B1 => n3, B2 => n120, C1 => n5, C2 => n121, A => 
                           n122, ZN => O_8_port);
   U159 : AOI22_X1 port map( A1 => A_ns(6), A2 => n2, B1 => A_s(6), B2 => n8, 
                           ZN => n122);
   U160 : INV_X1 port map( A => n123, ZN => O_9_port);
   U161 : AOI221_X1 port map( B1 => n14, B2 => A_ns(8), C1 => n15, C2 => A_s(8)
                           , A => n124, ZN => n123);
   U162 : OAI22_X1 port map( A1 => n120, A2 => n1, B1 => n121, B2 => n12, ZN =>
                           n124);
   U163 : INV_X1 port map( A => A_s(7), ZN => n121);
   U164 : INV_X1 port map( A => A_ns(7), ZN => n120);
   U165 : OAI221_X1 port map( B1 => n3, B2 => n125, C1 => n5, C2 => n126, A => 
                           n127, ZN => O_10_port);
   U166 : AOI22_X1 port map( A1 => A_ns(8), A2 => n2, B1 => A_s(8), B2 => n8, 
                           ZN => n127);
   U167 : INV_X1 port map( A => n128, ZN => O_11_port);
   U168 : AOI221_X1 port map( B1 => n14, B2 => A_ns(10), C1 => n15, C2 => 
                           A_s(10), A => n129, ZN => n128);
   U169 : OAI22_X1 port map( A1 => n125, A2 => n1, B1 => n126, B2 => n12, ZN =>
                           n129);
   U170 : INV_X1 port map( A => A_s(9), ZN => n126);
   U171 : INV_X1 port map( A => A_ns(9), ZN => n125);
   U172 : INV_X1 port map( A => n5, ZN => n15);
   U173 : INV_X1 port map( A => n3, ZN => n14);
   U174 : OAI221_X1 port map( B1 => n3, B2 => n130, C1 => n5, C2 => n131, A => 
                           n132, ZN => O_12_port);
   U175 : AOI22_X1 port map( A1 => A_ns(10), A2 => n2, B1 => A_s(10), B2 => n8,
                           ZN => n132);
   U176 : NAND3_X1 port map( A1 => B(11), A2 => n133, A3 => B(12), ZN => n12);
   U177 : INV_X1 port map( A => A_s(11), ZN => n131);
   U178 : INV_X1 port map( A => A_ns(11), ZN => n130);
   U179 : INV_X1 port map( A => B(13), ZN => n133);
   U180 : XOR2_X1 port map( A => B(12), B => B(11), Z => n134);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT44_i10 is

   port( A_s, A_ns, B : in std_logic_vector (43 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (43 downto 0));

end BOOTHENC_NBIT44_i10;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT44_i10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, O_41_port, O_42_port, 
      O_43_port, O_40_port, O_39_port, O_38_port, O_37_port, O_36_port, 
      O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, 
      O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, 
      O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, 
      O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, 
      O_11_port, O_1_port, O_2_port, O_3_port, O_4_port, O_5_port, O_6_port, 
      O_7_port, O_8_port, O_9_port, O_10_port : std_logic;

begin
   O <= ( O_43_port, O_42_port, O_41_port, O_40_port, O_39_port, O_38_port, 
      O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, 
      O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, 
      O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, 
      O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, 
      O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, O_7_port,
      O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port
      );
   A_so <= ( A_s(41), A_s(40), A_s(39), A_s(38), A_s(37), A_s(36), A_s(35), 
      A_s(34), A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), 
      A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), 
      A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), 
      A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), 
      A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(41), A_ns(40), A_ns(39), A_ns(38), A_ns(37), A_ns(36), 
      A_ns(35), A_ns(34), A_ns(33), A_ns(32), A_ns(31), A_ns(30), A_ns(29), 
      A_ns(28), A_ns(27), A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), 
      A_ns(21), A_ns(20), A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), 
      A_ns(14), A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), 
      A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), 
      X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : OR3_X1 port map( A1 => B(10), A2 => B(9), A3 => n130, ZN => n1);
   U3 : INV_X2 port map( A => n1, ZN => n2);
   U4 : NAND2_X2 port map( A1 => n131, A2 => n5, ZN => n3);
   U5 : INV_X2 port map( A => n12, ZN => n8);
   U6 : NAND2_X2 port map( A1 => n131, A2 => n130, ZN => n5);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n5, C2 => n6, A => n7, ZN
                           => O_41_port);
   U8 : AOI22_X1 port map( A1 => A_ns(39), A2 => n2, B1 => A_s(39), B2 => n8, 
                           ZN => n7);
   U9 : INV_X1 port map( A => A_s(40), ZN => n6);
   U10 : INV_X1 port map( A => A_ns(40), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n5, C2 => n10, A => n11,
                           ZN => O_42_port);
   U12 : AOI22_X1 port map( A1 => A_ns(40), A2 => n2, B1 => A_s(40), B2 => n8, 
                           ZN => n11);
   U13 : OAI221_X1 port map( B1 => n1, B2 => n9, C1 => n12, C2 => n10, A => n13
                           , ZN => O_43_port);
   U14 : AOI22_X1 port map( A1 => A_ns(42), A2 => n14, B1 => A_s(42), B2 => n15
                           , ZN => n13);
   U15 : INV_X1 port map( A => A_s(41), ZN => n10);
   U16 : INV_X1 port map( A => A_ns(41), ZN => n9);
   U17 : OAI221_X1 port map( B1 => n16, B2 => n3, C1 => n17, C2 => n5, A => n18
                           , ZN => O_40_port);
   U18 : AOI22_X1 port map( A1 => A_ns(38), A2 => n2, B1 => A_s(38), B2 => n8, 
                           ZN => n18);
   U19 : INV_X1 port map( A => A_s(39), ZN => n17);
   U20 : INV_X1 port map( A => A_ns(39), ZN => n16);
   U21 : OAI221_X1 port map( B1 => n3, B2 => n19, C1 => n5, C2 => n20, A => n21
                           , ZN => O_39_port);
   U22 : AOI22_X1 port map( A1 => A_ns(37), A2 => n2, B1 => A_s(37), B2 => n8, 
                           ZN => n21);
   U23 : INV_X1 port map( A => A_s(38), ZN => n20);
   U24 : INV_X1 port map( A => A_ns(38), ZN => n19);
   U25 : OAI221_X1 port map( B1 => n3, B2 => n22, C1 => n5, C2 => n23, A => n24
                           , ZN => O_38_port);
   U26 : AOI22_X1 port map( A1 => A_ns(36), A2 => n2, B1 => A_s(36), B2 => n8, 
                           ZN => n24);
   U27 : INV_X1 port map( A => A_s(37), ZN => n23);
   U28 : INV_X1 port map( A => A_ns(37), ZN => n22);
   U29 : OAI221_X1 port map( B1 => n3, B2 => n25, C1 => n5, C2 => n26, A => n27
                           , ZN => O_37_port);
   U30 : AOI22_X1 port map( A1 => A_ns(35), A2 => n2, B1 => A_s(35), B2 => n8, 
                           ZN => n27);
   U31 : INV_X1 port map( A => A_s(36), ZN => n26);
   U32 : INV_X1 port map( A => A_ns(36), ZN => n25);
   U33 : OAI221_X1 port map( B1 => n3, B2 => n28, C1 => n5, C2 => n29, A => n30
                           , ZN => O_36_port);
   U34 : AOI22_X1 port map( A1 => A_ns(34), A2 => n2, B1 => A_s(34), B2 => n8, 
                           ZN => n30);
   U35 : INV_X1 port map( A => A_s(35), ZN => n29);
   U36 : INV_X1 port map( A => A_ns(35), ZN => n28);
   U37 : OAI221_X1 port map( B1 => n3, B2 => n31, C1 => n5, C2 => n32, A => n33
                           , ZN => O_35_port);
   U38 : AOI22_X1 port map( A1 => A_ns(33), A2 => n2, B1 => A_s(33), B2 => n8, 
                           ZN => n33);
   U39 : INV_X1 port map( A => A_s(34), ZN => n32);
   U40 : INV_X1 port map( A => A_ns(34), ZN => n31);
   U41 : OAI221_X1 port map( B1 => n3, B2 => n34, C1 => n5, C2 => n35, A => n36
                           , ZN => O_34_port);
   U42 : AOI22_X1 port map( A1 => A_ns(32), A2 => n2, B1 => A_s(32), B2 => n8, 
                           ZN => n36);
   U43 : INV_X1 port map( A => A_s(33), ZN => n35);
   U44 : INV_X1 port map( A => A_ns(33), ZN => n34);
   U45 : OAI221_X1 port map( B1 => n3, B2 => n37, C1 => n5, C2 => n38, A => n39
                           , ZN => O_33_port);
   U46 : AOI22_X1 port map( A1 => A_ns(31), A2 => n2, B1 => A_s(31), B2 => n8, 
                           ZN => n39);
   U47 : INV_X1 port map( A => A_s(32), ZN => n38);
   U48 : INV_X1 port map( A => A_ns(32), ZN => n37);
   U49 : OAI221_X1 port map( B1 => n3, B2 => n40, C1 => n5, C2 => n41, A => n42
                           , ZN => O_32_port);
   U50 : AOI22_X1 port map( A1 => A_ns(30), A2 => n2, B1 => A_s(30), B2 => n8, 
                           ZN => n42);
   U51 : INV_X1 port map( A => A_s(31), ZN => n41);
   U52 : INV_X1 port map( A => A_ns(31), ZN => n40);
   U53 : OAI221_X1 port map( B1 => n3, B2 => n43, C1 => n5, C2 => n44, A => n45
                           , ZN => O_31_port);
   U54 : AOI22_X1 port map( A1 => A_ns(29), A2 => n2, B1 => A_s(29), B2 => n8, 
                           ZN => n45);
   U55 : INV_X1 port map( A => A_s(30), ZN => n44);
   U56 : INV_X1 port map( A => A_ns(30), ZN => n43);
   U57 : OAI221_X1 port map( B1 => n3, B2 => n46, C1 => n5, C2 => n47, A => n48
                           , ZN => O_30_port);
   U58 : AOI22_X1 port map( A1 => A_ns(28), A2 => n2, B1 => A_s(28), B2 => n8, 
                           ZN => n48);
   U59 : INV_X1 port map( A => A_s(29), ZN => n47);
   U60 : INV_X1 port map( A => A_ns(29), ZN => n46);
   U61 : OAI221_X1 port map( B1 => n3, B2 => n49, C1 => n5, C2 => n50, A => n51
                           , ZN => O_29_port);
   U62 : AOI22_X1 port map( A1 => A_ns(27), A2 => n2, B1 => A_s(27), B2 => n8, 
                           ZN => n51);
   U63 : INV_X1 port map( A => A_s(28), ZN => n50);
   U64 : INV_X1 port map( A => A_ns(28), ZN => n49);
   U65 : OAI221_X1 port map( B1 => n3, B2 => n52, C1 => n5, C2 => n53, A => n54
                           , ZN => O_28_port);
   U66 : AOI22_X1 port map( A1 => A_ns(26), A2 => n2, B1 => A_s(26), B2 => n8, 
                           ZN => n54);
   U67 : INV_X1 port map( A => A_s(27), ZN => n53);
   U68 : INV_X1 port map( A => A_ns(27), ZN => n52);
   U69 : OAI221_X1 port map( B1 => n3, B2 => n55, C1 => n5, C2 => n56, A => n57
                           , ZN => O_27_port);
   U70 : AOI22_X1 port map( A1 => A_ns(25), A2 => n2, B1 => A_s(25), B2 => n8, 
                           ZN => n57);
   U71 : INV_X1 port map( A => A_s(26), ZN => n56);
   U72 : INV_X1 port map( A => A_ns(26), ZN => n55);
   U73 : OAI221_X1 port map( B1 => n3, B2 => n58, C1 => n5, C2 => n59, A => n60
                           , ZN => O_26_port);
   U74 : AOI22_X1 port map( A1 => A_ns(24), A2 => n2, B1 => A_s(24), B2 => n8, 
                           ZN => n60);
   U75 : INV_X1 port map( A => A_s(25), ZN => n59);
   U76 : INV_X1 port map( A => A_ns(25), ZN => n58);
   U77 : OAI221_X1 port map( B1 => n3, B2 => n61, C1 => n5, C2 => n62, A => n63
                           , ZN => O_25_port);
   U78 : AOI22_X1 port map( A1 => A_ns(23), A2 => n2, B1 => A_s(23), B2 => n8, 
                           ZN => n63);
   U79 : INV_X1 port map( A => A_s(24), ZN => n62);
   U80 : INV_X1 port map( A => A_ns(24), ZN => n61);
   U81 : OAI221_X1 port map( B1 => n3, B2 => n64, C1 => n5, C2 => n65, A => n66
                           , ZN => O_24_port);
   U82 : AOI22_X1 port map( A1 => A_ns(22), A2 => n2, B1 => A_s(22), B2 => n8, 
                           ZN => n66);
   U83 : INV_X1 port map( A => A_s(23), ZN => n65);
   U84 : INV_X1 port map( A => A_ns(23), ZN => n64);
   U85 : OAI221_X1 port map( B1 => n3, B2 => n67, C1 => n5, C2 => n68, A => n69
                           , ZN => O_23_port);
   U86 : AOI22_X1 port map( A1 => A_ns(21), A2 => n2, B1 => A_s(21), B2 => n8, 
                           ZN => n69);
   U87 : INV_X1 port map( A => A_s(22), ZN => n68);
   U88 : INV_X1 port map( A => A_ns(22), ZN => n67);
   U89 : OAI221_X1 port map( B1 => n3, B2 => n70, C1 => n5, C2 => n71, A => n72
                           , ZN => O_22_port);
   U90 : AOI22_X1 port map( A1 => A_ns(20), A2 => n2, B1 => A_s(20), B2 => n8, 
                           ZN => n72);
   U91 : INV_X1 port map( A => A_s(21), ZN => n71);
   U92 : INV_X1 port map( A => A_ns(21), ZN => n70);
   U93 : OAI221_X1 port map( B1 => n3, B2 => n73, C1 => n5, C2 => n74, A => n75
                           , ZN => O_21_port);
   U94 : AOI22_X1 port map( A1 => A_ns(19), A2 => n2, B1 => A_s(19), B2 => n8, 
                           ZN => n75);
   U95 : INV_X1 port map( A => A_s(20), ZN => n74);
   U96 : INV_X1 port map( A => A_ns(20), ZN => n73);
   U97 : OAI221_X1 port map( B1 => n3, B2 => n76, C1 => n5, C2 => n77, A => n78
                           , ZN => O_20_port);
   U98 : AOI22_X1 port map( A1 => A_ns(18), A2 => n2, B1 => A_s(18), B2 => n8, 
                           ZN => n78);
   U99 : INV_X1 port map( A => A_s(19), ZN => n77);
   U100 : INV_X1 port map( A => A_ns(19), ZN => n76);
   U101 : OAI221_X1 port map( B1 => n3, B2 => n79, C1 => n5, C2 => n80, A => 
                           n81, ZN => O_19_port);
   U102 : AOI22_X1 port map( A1 => A_ns(17), A2 => n2, B1 => A_s(17), B2 => n8,
                           ZN => n81);
   U103 : INV_X1 port map( A => A_s(18), ZN => n80);
   U104 : INV_X1 port map( A => A_ns(18), ZN => n79);
   U105 : OAI221_X1 port map( B1 => n3, B2 => n82, C1 => n5, C2 => n83, A => 
                           n84, ZN => O_18_port);
   U106 : AOI22_X1 port map( A1 => A_ns(16), A2 => n2, B1 => A_s(16), B2 => n8,
                           ZN => n84);
   U107 : INV_X1 port map( A => A_s(17), ZN => n83);
   U108 : INV_X1 port map( A => A_ns(17), ZN => n82);
   U109 : OAI221_X1 port map( B1 => n3, B2 => n85, C1 => n5, C2 => n86, A => 
                           n87, ZN => O_17_port);
   U110 : AOI22_X1 port map( A1 => A_ns(15), A2 => n2, B1 => A_s(15), B2 => n8,
                           ZN => n87);
   U111 : INV_X1 port map( A => A_s(16), ZN => n86);
   U112 : INV_X1 port map( A => A_ns(16), ZN => n85);
   U113 : OAI221_X1 port map( B1 => n3, B2 => n88, C1 => n5, C2 => n89, A => 
                           n90, ZN => O_16_port);
   U114 : AOI22_X1 port map( A1 => A_ns(14), A2 => n2, B1 => A_s(14), B2 => n8,
                           ZN => n90);
   U115 : INV_X1 port map( A => A_s(15), ZN => n89);
   U116 : INV_X1 port map( A => A_ns(15), ZN => n88);
   U117 : OAI221_X1 port map( B1 => n3, B2 => n91, C1 => n5, C2 => n92, A => 
                           n93, ZN => O_15_port);
   U118 : AOI22_X1 port map( A1 => A_ns(13), A2 => n2, B1 => A_s(13), B2 => n8,
                           ZN => n93);
   U119 : INV_X1 port map( A => A_s(14), ZN => n92);
   U120 : INV_X1 port map( A => A_ns(14), ZN => n91);
   U121 : OAI221_X1 port map( B1 => n3, B2 => n94, C1 => n5, C2 => n95, A => 
                           n96, ZN => O_14_port);
   U122 : AOI22_X1 port map( A1 => A_ns(12), A2 => n2, B1 => A_s(12), B2 => n8,
                           ZN => n96);
   U123 : INV_X1 port map( A => A_s(13), ZN => n95);
   U124 : INV_X1 port map( A => A_ns(13), ZN => n94);
   U125 : OAI221_X1 port map( B1 => n3, B2 => n97, C1 => n5, C2 => n98, A => 
                           n99, ZN => O_13_port);
   U126 : AOI22_X1 port map( A1 => A_ns(11), A2 => n2, B1 => A_s(11), B2 => n8,
                           ZN => n99);
   U127 : INV_X1 port map( A => A_s(12), ZN => n98);
   U128 : INV_X1 port map( A => A_ns(12), ZN => n97);
   U129 : OAI221_X1 port map( B1 => n3, B2 => n100, C1 => n5, C2 => n101, A => 
                           n102, ZN => O_12_port);
   U130 : AOI22_X1 port map( A1 => A_ns(10), A2 => n2, B1 => A_s(10), B2 => n8,
                           ZN => n102);
   U131 : INV_X1 port map( A => A_s(11), ZN => n101);
   U132 : INV_X1 port map( A => A_ns(11), ZN => n100);
   U133 : OAI221_X1 port map( B1 => n3, B2 => n103, C1 => n5, C2 => n104, A => 
                           n105, ZN => O_11_port);
   U134 : AOI22_X1 port map( A1 => A_ns(9), A2 => n2, B1 => A_s(9), B2 => n8, 
                           ZN => n105);
   U135 : INV_X1 port map( A => A_s(10), ZN => n104);
   U136 : INV_X1 port map( A => A_ns(10), ZN => n103);
   U137 : INV_X1 port map( A => n106, ZN => O_1_port);
   U138 : AOI22_X1 port map( A1 => n15, A2 => A_s(0), B1 => n14, B2 => A_ns(0),
                           ZN => n106);
   U139 : OAI221_X1 port map( B1 => n3, B2 => n107, C1 => n5, C2 => n108, A => 
                           n109, ZN => O_2_port);
   U140 : AOI22_X1 port map( A1 => A_ns(0), A2 => n2, B1 => A_s(0), B2 => n8, 
                           ZN => n109);
   U141 : INV_X1 port map( A => n110, ZN => O_3_port);
   U142 : AOI221_X1 port map( B1 => n14, B2 => A_ns(2), C1 => n15, C2 => A_s(2)
                           , A => n111, ZN => n110);
   U143 : OAI22_X1 port map( A1 => n107, A2 => n1, B1 => n108, B2 => n12, ZN =>
                           n111);
   U144 : INV_X1 port map( A => A_s(1), ZN => n108);
   U145 : INV_X1 port map( A => A_ns(1), ZN => n107);
   U146 : OAI221_X1 port map( B1 => n3, B2 => n112, C1 => n5, C2 => n113, A => 
                           n114, ZN => O_4_port);
   U147 : AOI22_X1 port map( A1 => A_ns(2), A2 => n2, B1 => A_s(2), B2 => n8, 
                           ZN => n114);
   U148 : INV_X1 port map( A => n115, ZN => O_5_port);
   U149 : AOI221_X1 port map( B1 => n14, B2 => A_ns(4), C1 => n15, C2 => A_s(4)
                           , A => n116, ZN => n115);
   U150 : OAI22_X1 port map( A1 => n112, A2 => n1, B1 => n113, B2 => n12, ZN =>
                           n116);
   U151 : INV_X1 port map( A => A_s(3), ZN => n113);
   U152 : INV_X1 port map( A => A_ns(3), ZN => n112);
   U153 : OAI221_X1 port map( B1 => n3, B2 => n117, C1 => n5, C2 => n118, A => 
                           n119, ZN => O_6_port);
   U154 : AOI22_X1 port map( A1 => A_ns(4), A2 => n2, B1 => A_s(4), B2 => n8, 
                           ZN => n119);
   U155 : INV_X1 port map( A => n120, ZN => O_7_port);
   U156 : AOI221_X1 port map( B1 => n14, B2 => A_ns(6), C1 => n15, C2 => A_s(6)
                           , A => n121, ZN => n120);
   U157 : OAI22_X1 port map( A1 => n117, A2 => n1, B1 => n118, B2 => n12, ZN =>
                           n121);
   U158 : INV_X1 port map( A => A_s(5), ZN => n118);
   U159 : INV_X1 port map( A => A_ns(5), ZN => n117);
   U160 : OAI221_X1 port map( B1 => n3, B2 => n122, C1 => n5, C2 => n123, A => 
                           n124, ZN => O_8_port);
   U161 : AOI22_X1 port map( A1 => A_ns(6), A2 => n2, B1 => A_s(6), B2 => n8, 
                           ZN => n124);
   U162 : INV_X1 port map( A => n125, ZN => O_9_port);
   U163 : AOI221_X1 port map( B1 => n14, B2 => A_ns(8), C1 => n15, C2 => A_s(8)
                           , A => n126, ZN => n125);
   U164 : OAI22_X1 port map( A1 => n122, A2 => n1, B1 => n123, B2 => n12, ZN =>
                           n126);
   U165 : INV_X1 port map( A => A_s(7), ZN => n123);
   U166 : INV_X1 port map( A => A_ns(7), ZN => n122);
   U167 : INV_X1 port map( A => n5, ZN => n15);
   U168 : INV_X1 port map( A => n3, ZN => n14);
   U169 : OAI221_X1 port map( B1 => n3, B2 => n127, C1 => n5, C2 => n128, A => 
                           n129, ZN => O_10_port);
   U170 : AOI22_X1 port map( A1 => A_ns(8), A2 => n2, B1 => A_s(8), B2 => n8, 
                           ZN => n129);
   U171 : NAND3_X1 port map( A1 => B(10), A2 => n130, A3 => B(9), ZN => n12);
   U172 : INV_X1 port map( A => A_s(9), ZN => n128);
   U173 : INV_X1 port map( A => A_ns(9), ZN => n127);
   U174 : INV_X1 port map( A => B(11), ZN => n130);
   U175 : XOR2_X1 port map( A => B(9), B => B(10), Z => n131);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT42_i8 is

   port( A_s, A_ns, B : in std_logic_vector (41 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (41 downto 0));

end BOOTHENC_NBIT42_i8;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT42_i8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, O_39_port, O_40_port, O_41_port, O_38_port, O_37_port, 
      O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, 
      O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, 
      O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, 
      O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, 
      O_12_port, O_11_port, O_10_port, O_9_port, O_1_port, O_2_port, O_3_port, 
      O_4_port, O_5_port, O_6_port, O_7_port, O_8_port : std_logic;

begin
   O <= ( O_41_port, O_40_port, O_39_port, O_38_port, O_37_port, O_36_port, 
      O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, 
      O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, 
      O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, 
      O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, 
      O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, 
      O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(39), A_s(38), A_s(37), A_s(36), A_s(35), A_s(34), A_s(33), 
      A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), A_s(25), 
      A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), A_s(17), 
      A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), 
      A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), 
      X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(39), A_ns(38), A_ns(37), A_ns(36), A_ns(35), A_ns(34), 
      A_ns(33), A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), A_ns(27), 
      A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), A_ns(20), 
      A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), A_ns(13), 
      A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5)
      , A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, 
      X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : OR3_X1 port map( A1 => B(7), A2 => B(8), A3 => n125, ZN => n1);
   U3 : INV_X2 port map( A => n1, ZN => n2);
   U4 : NAND2_X2 port map( A1 => n126, A2 => n5, ZN => n3);
   U5 : INV_X2 port map( A => n12, ZN => n8);
   U6 : NAND2_X2 port map( A1 => n126, A2 => n125, ZN => n5);
   U7 : OAI221_X1 port map( B1 => n3, B2 => n4, C1 => n5, C2 => n6, A => n7, ZN
                           => O_39_port);
   U8 : AOI22_X1 port map( A1 => A_ns(37), A2 => n2, B1 => A_s(37), B2 => n8, 
                           ZN => n7);
   U9 : INV_X1 port map( A => A_s(38), ZN => n6);
   U10 : INV_X1 port map( A => A_ns(38), ZN => n4);
   U11 : OAI221_X1 port map( B1 => n3, B2 => n9, C1 => n5, C2 => n10, A => n11,
                           ZN => O_40_port);
   U12 : AOI22_X1 port map( A1 => A_ns(38), A2 => n2, B1 => A_s(38), B2 => n8, 
                           ZN => n11);
   U13 : OAI221_X1 port map( B1 => n1, B2 => n9, C1 => n12, C2 => n10, A => n13
                           , ZN => O_41_port);
   U14 : AOI22_X1 port map( A1 => A_ns(40), A2 => n14, B1 => A_s(40), B2 => n15
                           , ZN => n13);
   U15 : INV_X1 port map( A => A_s(39), ZN => n10);
   U16 : INV_X1 port map( A => A_ns(39), ZN => n9);
   U17 : OAI221_X1 port map( B1 => n16, B2 => n3, C1 => n17, C2 => n5, A => n18
                           , ZN => O_38_port);
   U18 : AOI22_X1 port map( A1 => A_ns(36), A2 => n2, B1 => A_s(36), B2 => n8, 
                           ZN => n18);
   U19 : INV_X1 port map( A => A_s(37), ZN => n17);
   U20 : INV_X1 port map( A => A_ns(37), ZN => n16);
   U21 : OAI221_X1 port map( B1 => n3, B2 => n19, C1 => n5, C2 => n20, A => n21
                           , ZN => O_37_port);
   U22 : AOI22_X1 port map( A1 => A_ns(35), A2 => n2, B1 => A_s(35), B2 => n8, 
                           ZN => n21);
   U23 : INV_X1 port map( A => A_s(36), ZN => n20);
   U24 : INV_X1 port map( A => A_ns(36), ZN => n19);
   U25 : OAI221_X1 port map( B1 => n3, B2 => n22, C1 => n5, C2 => n23, A => n24
                           , ZN => O_36_port);
   U26 : AOI22_X1 port map( A1 => A_ns(34), A2 => n2, B1 => A_s(34), B2 => n8, 
                           ZN => n24);
   U27 : INV_X1 port map( A => A_s(35), ZN => n23);
   U28 : INV_X1 port map( A => A_ns(35), ZN => n22);
   U29 : OAI221_X1 port map( B1 => n3, B2 => n25, C1 => n5, C2 => n26, A => n27
                           , ZN => O_35_port);
   U30 : AOI22_X1 port map( A1 => A_ns(33), A2 => n2, B1 => A_s(33), B2 => n8, 
                           ZN => n27);
   U31 : INV_X1 port map( A => A_s(34), ZN => n26);
   U32 : INV_X1 port map( A => A_ns(34), ZN => n25);
   U33 : OAI221_X1 port map( B1 => n3, B2 => n28, C1 => n5, C2 => n29, A => n30
                           , ZN => O_34_port);
   U34 : AOI22_X1 port map( A1 => A_ns(32), A2 => n2, B1 => A_s(32), B2 => n8, 
                           ZN => n30);
   U35 : INV_X1 port map( A => A_s(33), ZN => n29);
   U36 : INV_X1 port map( A => A_ns(33), ZN => n28);
   U37 : OAI221_X1 port map( B1 => n3, B2 => n31, C1 => n5, C2 => n32, A => n33
                           , ZN => O_33_port);
   U38 : AOI22_X1 port map( A1 => A_ns(31), A2 => n2, B1 => A_s(31), B2 => n8, 
                           ZN => n33);
   U39 : INV_X1 port map( A => A_s(32), ZN => n32);
   U40 : INV_X1 port map( A => A_ns(32), ZN => n31);
   U41 : OAI221_X1 port map( B1 => n3, B2 => n34, C1 => n5, C2 => n35, A => n36
                           , ZN => O_32_port);
   U42 : AOI22_X1 port map( A1 => A_ns(30), A2 => n2, B1 => A_s(30), B2 => n8, 
                           ZN => n36);
   U43 : INV_X1 port map( A => A_s(31), ZN => n35);
   U44 : INV_X1 port map( A => A_ns(31), ZN => n34);
   U45 : OAI221_X1 port map( B1 => n3, B2 => n37, C1 => n5, C2 => n38, A => n39
                           , ZN => O_31_port);
   U46 : AOI22_X1 port map( A1 => A_ns(29), A2 => n2, B1 => A_s(29), B2 => n8, 
                           ZN => n39);
   U47 : INV_X1 port map( A => A_s(30), ZN => n38);
   U48 : INV_X1 port map( A => A_ns(30), ZN => n37);
   U49 : OAI221_X1 port map( B1 => n3, B2 => n40, C1 => n5, C2 => n41, A => n42
                           , ZN => O_30_port);
   U50 : AOI22_X1 port map( A1 => A_ns(28), A2 => n2, B1 => A_s(28), B2 => n8, 
                           ZN => n42);
   U51 : INV_X1 port map( A => A_s(29), ZN => n41);
   U52 : INV_X1 port map( A => A_ns(29), ZN => n40);
   U53 : OAI221_X1 port map( B1 => n3, B2 => n43, C1 => n5, C2 => n44, A => n45
                           , ZN => O_29_port);
   U54 : AOI22_X1 port map( A1 => A_ns(27), A2 => n2, B1 => A_s(27), B2 => n8, 
                           ZN => n45);
   U55 : INV_X1 port map( A => A_s(28), ZN => n44);
   U56 : INV_X1 port map( A => A_ns(28), ZN => n43);
   U57 : OAI221_X1 port map( B1 => n3, B2 => n46, C1 => n5, C2 => n47, A => n48
                           , ZN => O_28_port);
   U58 : AOI22_X1 port map( A1 => A_ns(26), A2 => n2, B1 => A_s(26), B2 => n8, 
                           ZN => n48);
   U59 : INV_X1 port map( A => A_s(27), ZN => n47);
   U60 : INV_X1 port map( A => A_ns(27), ZN => n46);
   U61 : OAI221_X1 port map( B1 => n3, B2 => n49, C1 => n5, C2 => n50, A => n51
                           , ZN => O_27_port);
   U62 : AOI22_X1 port map( A1 => A_ns(25), A2 => n2, B1 => A_s(25), B2 => n8, 
                           ZN => n51);
   U63 : INV_X1 port map( A => A_s(26), ZN => n50);
   U64 : INV_X1 port map( A => A_ns(26), ZN => n49);
   U65 : OAI221_X1 port map( B1 => n3, B2 => n52, C1 => n5, C2 => n53, A => n54
                           , ZN => O_26_port);
   U66 : AOI22_X1 port map( A1 => A_ns(24), A2 => n2, B1 => A_s(24), B2 => n8, 
                           ZN => n54);
   U67 : INV_X1 port map( A => A_s(25), ZN => n53);
   U68 : INV_X1 port map( A => A_ns(25), ZN => n52);
   U69 : OAI221_X1 port map( B1 => n3, B2 => n55, C1 => n5, C2 => n56, A => n57
                           , ZN => O_25_port);
   U70 : AOI22_X1 port map( A1 => A_ns(23), A2 => n2, B1 => A_s(23), B2 => n8, 
                           ZN => n57);
   U71 : INV_X1 port map( A => A_s(24), ZN => n56);
   U72 : INV_X1 port map( A => A_ns(24), ZN => n55);
   U73 : OAI221_X1 port map( B1 => n3, B2 => n58, C1 => n5, C2 => n59, A => n60
                           , ZN => O_24_port);
   U74 : AOI22_X1 port map( A1 => A_ns(22), A2 => n2, B1 => A_s(22), B2 => n8, 
                           ZN => n60);
   U75 : INV_X1 port map( A => A_s(23), ZN => n59);
   U76 : INV_X1 port map( A => A_ns(23), ZN => n58);
   U77 : OAI221_X1 port map( B1 => n3, B2 => n61, C1 => n5, C2 => n62, A => n63
                           , ZN => O_23_port);
   U78 : AOI22_X1 port map( A1 => A_ns(21), A2 => n2, B1 => A_s(21), B2 => n8, 
                           ZN => n63);
   U79 : INV_X1 port map( A => A_s(22), ZN => n62);
   U80 : INV_X1 port map( A => A_ns(22), ZN => n61);
   U81 : OAI221_X1 port map( B1 => n3, B2 => n64, C1 => n5, C2 => n65, A => n66
                           , ZN => O_22_port);
   U82 : AOI22_X1 port map( A1 => A_ns(20), A2 => n2, B1 => A_s(20), B2 => n8, 
                           ZN => n66);
   U83 : INV_X1 port map( A => A_s(21), ZN => n65);
   U84 : INV_X1 port map( A => A_ns(21), ZN => n64);
   U85 : OAI221_X1 port map( B1 => n3, B2 => n67, C1 => n5, C2 => n68, A => n69
                           , ZN => O_21_port);
   U86 : AOI22_X1 port map( A1 => A_ns(19), A2 => n2, B1 => A_s(19), B2 => n8, 
                           ZN => n69);
   U87 : INV_X1 port map( A => A_s(20), ZN => n68);
   U88 : INV_X1 port map( A => A_ns(20), ZN => n67);
   U89 : OAI221_X1 port map( B1 => n3, B2 => n70, C1 => n5, C2 => n71, A => n72
                           , ZN => O_20_port);
   U90 : AOI22_X1 port map( A1 => A_ns(18), A2 => n2, B1 => A_s(18), B2 => n8, 
                           ZN => n72);
   U91 : INV_X1 port map( A => A_s(19), ZN => n71);
   U92 : INV_X1 port map( A => A_ns(19), ZN => n70);
   U93 : OAI221_X1 port map( B1 => n3, B2 => n73, C1 => n5, C2 => n74, A => n75
                           , ZN => O_19_port);
   U94 : AOI22_X1 port map( A1 => A_ns(17), A2 => n2, B1 => A_s(17), B2 => n8, 
                           ZN => n75);
   U95 : INV_X1 port map( A => A_s(18), ZN => n74);
   U96 : INV_X1 port map( A => A_ns(18), ZN => n73);
   U97 : OAI221_X1 port map( B1 => n3, B2 => n76, C1 => n5, C2 => n77, A => n78
                           , ZN => O_18_port);
   U98 : AOI22_X1 port map( A1 => A_ns(16), A2 => n2, B1 => A_s(16), B2 => n8, 
                           ZN => n78);
   U99 : INV_X1 port map( A => A_s(17), ZN => n77);
   U100 : INV_X1 port map( A => A_ns(17), ZN => n76);
   U101 : OAI221_X1 port map( B1 => n3, B2 => n79, C1 => n5, C2 => n80, A => 
                           n81, ZN => O_17_port);
   U102 : AOI22_X1 port map( A1 => A_ns(15), A2 => n2, B1 => A_s(15), B2 => n8,
                           ZN => n81);
   U103 : INV_X1 port map( A => A_s(16), ZN => n80);
   U104 : INV_X1 port map( A => A_ns(16), ZN => n79);
   U105 : OAI221_X1 port map( B1 => n3, B2 => n82, C1 => n5, C2 => n83, A => 
                           n84, ZN => O_16_port);
   U106 : AOI22_X1 port map( A1 => A_ns(14), A2 => n2, B1 => A_s(14), B2 => n8,
                           ZN => n84);
   U107 : INV_X1 port map( A => A_s(15), ZN => n83);
   U108 : INV_X1 port map( A => A_ns(15), ZN => n82);
   U109 : OAI221_X1 port map( B1 => n3, B2 => n85, C1 => n5, C2 => n86, A => 
                           n87, ZN => O_15_port);
   U110 : AOI22_X1 port map( A1 => A_ns(13), A2 => n2, B1 => A_s(13), B2 => n8,
                           ZN => n87);
   U111 : INV_X1 port map( A => A_s(14), ZN => n86);
   U112 : INV_X1 port map( A => A_ns(14), ZN => n85);
   U113 : OAI221_X1 port map( B1 => n3, B2 => n88, C1 => n5, C2 => n89, A => 
                           n90, ZN => O_14_port);
   U114 : AOI22_X1 port map( A1 => A_ns(12), A2 => n2, B1 => A_s(12), B2 => n8,
                           ZN => n90);
   U115 : INV_X1 port map( A => A_s(13), ZN => n89);
   U116 : INV_X1 port map( A => A_ns(13), ZN => n88);
   U117 : OAI221_X1 port map( B1 => n3, B2 => n91, C1 => n5, C2 => n92, A => 
                           n93, ZN => O_13_port);
   U118 : AOI22_X1 port map( A1 => A_ns(11), A2 => n2, B1 => A_s(11), B2 => n8,
                           ZN => n93);
   U119 : INV_X1 port map( A => A_s(12), ZN => n92);
   U120 : INV_X1 port map( A => A_ns(12), ZN => n91);
   U121 : OAI221_X1 port map( B1 => n3, B2 => n94, C1 => n5, C2 => n95, A => 
                           n96, ZN => O_12_port);
   U122 : AOI22_X1 port map( A1 => A_ns(10), A2 => n2, B1 => A_s(10), B2 => n8,
                           ZN => n96);
   U123 : INV_X1 port map( A => A_s(11), ZN => n95);
   U124 : INV_X1 port map( A => A_ns(11), ZN => n94);
   U125 : OAI221_X1 port map( B1 => n3, B2 => n97, C1 => n5, C2 => n98, A => 
                           n99, ZN => O_11_port);
   U126 : AOI22_X1 port map( A1 => A_ns(9), A2 => n2, B1 => A_s(9), B2 => n8, 
                           ZN => n99);
   U127 : INV_X1 port map( A => A_s(10), ZN => n98);
   U128 : INV_X1 port map( A => A_ns(10), ZN => n97);
   U129 : OAI221_X1 port map( B1 => n3, B2 => n100, C1 => n5, C2 => n101, A => 
                           n102, ZN => O_10_port);
   U130 : AOI22_X1 port map( A1 => A_ns(8), A2 => n2, B1 => A_s(8), B2 => n8, 
                           ZN => n102);
   U131 : INV_X1 port map( A => A_s(9), ZN => n101);
   U132 : INV_X1 port map( A => A_ns(9), ZN => n100);
   U133 : OAI221_X1 port map( B1 => n3, B2 => n103, C1 => n5, C2 => n104, A => 
                           n105, ZN => O_9_port);
   U134 : AOI22_X1 port map( A1 => A_ns(7), A2 => n2, B1 => A_s(7), B2 => n8, 
                           ZN => n105);
   U135 : INV_X1 port map( A => A_s(8), ZN => n104);
   U136 : INV_X1 port map( A => A_ns(8), ZN => n103);
   U137 : INV_X1 port map( A => n106, ZN => O_1_port);
   U138 : AOI22_X1 port map( A1 => n15, A2 => A_s(0), B1 => n14, B2 => A_ns(0),
                           ZN => n106);
   U139 : OAI221_X1 port map( B1 => n3, B2 => n107, C1 => n5, C2 => n108, A => 
                           n109, ZN => O_2_port);
   U140 : AOI22_X1 port map( A1 => A_ns(0), A2 => n2, B1 => A_s(0), B2 => n8, 
                           ZN => n109);
   U141 : INV_X1 port map( A => n110, ZN => O_3_port);
   U142 : AOI221_X1 port map( B1 => n14, B2 => A_ns(2), C1 => n15, C2 => A_s(2)
                           , A => n111, ZN => n110);
   U143 : OAI22_X1 port map( A1 => n107, A2 => n1, B1 => n108, B2 => n12, ZN =>
                           n111);
   U144 : INV_X1 port map( A => A_s(1), ZN => n108);
   U145 : INV_X1 port map( A => A_ns(1), ZN => n107);
   U146 : OAI221_X1 port map( B1 => n3, B2 => n112, C1 => n5, C2 => n113, A => 
                           n114, ZN => O_4_port);
   U147 : AOI22_X1 port map( A1 => A_ns(2), A2 => n2, B1 => A_s(2), B2 => n8, 
                           ZN => n114);
   U148 : INV_X1 port map( A => n115, ZN => O_5_port);
   U149 : AOI221_X1 port map( B1 => n14, B2 => A_ns(4), C1 => n15, C2 => A_s(4)
                           , A => n116, ZN => n115);
   U150 : OAI22_X1 port map( A1 => n112, A2 => n1, B1 => n113, B2 => n12, ZN =>
                           n116);
   U151 : INV_X1 port map( A => A_s(3), ZN => n113);
   U152 : INV_X1 port map( A => A_ns(3), ZN => n112);
   U153 : OAI221_X1 port map( B1 => n3, B2 => n117, C1 => n5, C2 => n118, A => 
                           n119, ZN => O_6_port);
   U154 : AOI22_X1 port map( A1 => A_ns(4), A2 => n2, B1 => A_s(4), B2 => n8, 
                           ZN => n119);
   U155 : INV_X1 port map( A => n120, ZN => O_7_port);
   U156 : AOI221_X1 port map( B1 => n14, B2 => A_ns(6), C1 => n15, C2 => A_s(6)
                           , A => n121, ZN => n120);
   U157 : OAI22_X1 port map( A1 => n117, A2 => n1, B1 => n118, B2 => n12, ZN =>
                           n121);
   U158 : INV_X1 port map( A => A_s(5), ZN => n118);
   U159 : INV_X1 port map( A => A_ns(5), ZN => n117);
   U160 : INV_X1 port map( A => n5, ZN => n15);
   U161 : INV_X1 port map( A => n3, ZN => n14);
   U162 : OAI221_X1 port map( B1 => n3, B2 => n122, C1 => n5, C2 => n123, A => 
                           n124, ZN => O_8_port);
   U163 : AOI22_X1 port map( A1 => A_ns(6), A2 => n2, B1 => A_s(6), B2 => n8, 
                           ZN => n124);
   U164 : NAND3_X1 port map( A1 => B(7), A2 => n125, A3 => B(8), ZN => n12);
   U165 : INV_X1 port map( A => A_s(7), ZN => n123);
   U166 : INV_X1 port map( A => A_ns(7), ZN => n122);
   U167 : INV_X1 port map( A => B(9), ZN => n125);
   U168 : XOR2_X1 port map( A => B(8), B => B(7), Z => n126);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT40_i6 is

   port( A_s, A_ns, B : in std_logic_vector (39 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (39 downto 0));

end BOOTHENC_NBIT40_i6;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT40_i6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
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
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, 
      O_37_port, O_38_port, O_39_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, 
      O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_1_port, O_2_port, O_3_port, O_4_port, 
      O_5_port, O_6_port : std_logic;

begin
   O <= ( O_39_port, O_38_port, O_37_port, O_36_port, O_35_port, O_34_port, 
      O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, O_28_port, 
      O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, O_22_port, 
      O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, O_16_port, 
      O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, O_10_port, 
      O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_4_port, O_3_port, 
      O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(37), A_s(36), A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), 
      A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), 
      A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), 
      A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), 
      A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, 
      X_Logic0_port );
   A_nso <= ( A_ns(37), A_ns(36), A_ns(35), A_ns(34), A_ns(33), A_ns(32), 
      A_ns(31), A_ns(30), A_ns(29), A_ns(28), A_ns(27), A_ns(26), A_ns(25), 
      A_ns(24), A_ns(23), A_ns(22), A_ns(21), A_ns(20), A_ns(19), A_ns(18), 
      A_ns(17), A_ns(16), A_ns(15), A_ns(14), A_ns(13), A_ns(12), A_ns(11), 
      A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), 
      A_ns(2), A_ns(1), A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : NAND2_X2 port map( A1 => n122, A2 => n121, ZN => n4);
   U3 : INV_X2 port map( A => n13, ZN => n8);
   U4 : NAND2_X2 port map( A1 => n122, A2 => n4, ZN => n2);
   U5 : INV_X2 port map( A => n12, ZN => n1);
   U6 : OAI221_X1 port map( B1 => n2, B2 => n3, C1 => n4, C2 => n5, A => n6, ZN
                           => O_37_port);
   U7 : AOI22_X1 port map( A1 => A_ns(35), A2 => n1, B1 => A_s(35), B2 => n8, 
                           ZN => n6);
   U8 : INV_X1 port map( A => A_s(36), ZN => n5);
   U9 : INV_X1 port map( A => A_ns(36), ZN => n3);
   U10 : OAI221_X1 port map( B1 => n2, B2 => n9, C1 => n4, C2 => n10, A => n11,
                           ZN => O_38_port);
   U11 : AOI22_X1 port map( A1 => A_ns(36), A2 => n1, B1 => A_s(36), B2 => n8, 
                           ZN => n11);
   U12 : OAI221_X1 port map( B1 => n12, B2 => n9, C1 => n13, C2 => n10, A => 
                           n14, ZN => O_39_port);
   U13 : AOI22_X1 port map( A1 => A_ns(38), A2 => n15, B1 => A_s(38), B2 => n16
                           , ZN => n14);
   U14 : INV_X1 port map( A => A_s(37), ZN => n10);
   U15 : INV_X1 port map( A => A_ns(37), ZN => n9);
   U16 : OAI221_X1 port map( B1 => n17, B2 => n2, C1 => n18, C2 => n4, A => n19
                           , ZN => O_36_port);
   U17 : AOI22_X1 port map( A1 => A_ns(34), A2 => n1, B1 => A_s(34), B2 => n8, 
                           ZN => n19);
   U18 : INV_X1 port map( A => A_s(35), ZN => n18);
   U19 : INV_X1 port map( A => A_ns(35), ZN => n17);
   U20 : OAI221_X1 port map( B1 => n2, B2 => n20, C1 => n4, C2 => n21, A => n22
                           , ZN => O_35_port);
   U21 : AOI22_X1 port map( A1 => A_ns(33), A2 => n1, B1 => A_s(33), B2 => n8, 
                           ZN => n22);
   U22 : INV_X1 port map( A => A_s(34), ZN => n21);
   U23 : INV_X1 port map( A => A_ns(34), ZN => n20);
   U24 : OAI221_X1 port map( B1 => n2, B2 => n23, C1 => n4, C2 => n24, A => n25
                           , ZN => O_34_port);
   U25 : AOI22_X1 port map( A1 => A_ns(32), A2 => n1, B1 => A_s(32), B2 => n8, 
                           ZN => n25);
   U26 : INV_X1 port map( A => A_s(33), ZN => n24);
   U27 : INV_X1 port map( A => A_ns(33), ZN => n23);
   U28 : OAI221_X1 port map( B1 => n2, B2 => n26, C1 => n4, C2 => n27, A => n28
                           , ZN => O_33_port);
   U29 : AOI22_X1 port map( A1 => A_ns(31), A2 => n1, B1 => A_s(31), B2 => n8, 
                           ZN => n28);
   U30 : INV_X1 port map( A => A_s(32), ZN => n27);
   U31 : INV_X1 port map( A => A_ns(32), ZN => n26);
   U32 : OAI221_X1 port map( B1 => n2, B2 => n29, C1 => n4, C2 => n30, A => n31
                           , ZN => O_32_port);
   U33 : AOI22_X1 port map( A1 => A_ns(30), A2 => n1, B1 => A_s(30), B2 => n8, 
                           ZN => n31);
   U34 : INV_X1 port map( A => A_s(31), ZN => n30);
   U35 : INV_X1 port map( A => A_ns(31), ZN => n29);
   U36 : OAI221_X1 port map( B1 => n2, B2 => n32, C1 => n4, C2 => n33, A => n34
                           , ZN => O_31_port);
   U37 : AOI22_X1 port map( A1 => A_ns(29), A2 => n1, B1 => A_s(29), B2 => n8, 
                           ZN => n34);
   U38 : INV_X1 port map( A => A_s(30), ZN => n33);
   U39 : INV_X1 port map( A => A_ns(30), ZN => n32);
   U40 : OAI221_X1 port map( B1 => n2, B2 => n35, C1 => n4, C2 => n36, A => n37
                           , ZN => O_30_port);
   U41 : AOI22_X1 port map( A1 => A_ns(28), A2 => n1, B1 => A_s(28), B2 => n8, 
                           ZN => n37);
   U42 : INV_X1 port map( A => A_s(29), ZN => n36);
   U43 : INV_X1 port map( A => A_ns(29), ZN => n35);
   U44 : OAI221_X1 port map( B1 => n2, B2 => n38, C1 => n4, C2 => n39, A => n40
                           , ZN => O_29_port);
   U45 : AOI22_X1 port map( A1 => A_ns(27), A2 => n1, B1 => A_s(27), B2 => n8, 
                           ZN => n40);
   U46 : INV_X1 port map( A => A_s(28), ZN => n39);
   U47 : INV_X1 port map( A => A_ns(28), ZN => n38);
   U48 : OAI221_X1 port map( B1 => n2, B2 => n41, C1 => n4, C2 => n42, A => n43
                           , ZN => O_28_port);
   U49 : AOI22_X1 port map( A1 => A_ns(26), A2 => n1, B1 => A_s(26), B2 => n8, 
                           ZN => n43);
   U50 : INV_X1 port map( A => A_s(27), ZN => n42);
   U51 : INV_X1 port map( A => A_ns(27), ZN => n41);
   U52 : OAI221_X1 port map( B1 => n2, B2 => n44, C1 => n4, C2 => n45, A => n46
                           , ZN => O_27_port);
   U53 : AOI22_X1 port map( A1 => A_ns(25), A2 => n1, B1 => A_s(25), B2 => n8, 
                           ZN => n46);
   U54 : INV_X1 port map( A => A_s(26), ZN => n45);
   U55 : INV_X1 port map( A => A_ns(26), ZN => n44);
   U56 : OAI221_X1 port map( B1 => n2, B2 => n47, C1 => n4, C2 => n48, A => n49
                           , ZN => O_26_port);
   U57 : AOI22_X1 port map( A1 => A_ns(24), A2 => n1, B1 => A_s(24), B2 => n8, 
                           ZN => n49);
   U58 : INV_X1 port map( A => A_s(25), ZN => n48);
   U59 : INV_X1 port map( A => A_ns(25), ZN => n47);
   U60 : OAI221_X1 port map( B1 => n2, B2 => n50, C1 => n4, C2 => n51, A => n52
                           , ZN => O_25_port);
   U61 : AOI22_X1 port map( A1 => A_ns(23), A2 => n1, B1 => A_s(23), B2 => n8, 
                           ZN => n52);
   U62 : INV_X1 port map( A => A_s(24), ZN => n51);
   U63 : INV_X1 port map( A => A_ns(24), ZN => n50);
   U64 : OAI221_X1 port map( B1 => n2, B2 => n53, C1 => n4, C2 => n54, A => n55
                           , ZN => O_24_port);
   U65 : AOI22_X1 port map( A1 => A_ns(22), A2 => n1, B1 => A_s(22), B2 => n8, 
                           ZN => n55);
   U66 : INV_X1 port map( A => A_s(23), ZN => n54);
   U67 : INV_X1 port map( A => A_ns(23), ZN => n53);
   U68 : OAI221_X1 port map( B1 => n2, B2 => n56, C1 => n4, C2 => n57, A => n58
                           , ZN => O_23_port);
   U69 : AOI22_X1 port map( A1 => A_ns(21), A2 => n1, B1 => A_s(21), B2 => n8, 
                           ZN => n58);
   U70 : INV_X1 port map( A => A_s(22), ZN => n57);
   U71 : INV_X1 port map( A => A_ns(22), ZN => n56);
   U72 : OAI221_X1 port map( B1 => n2, B2 => n59, C1 => n4, C2 => n60, A => n61
                           , ZN => O_22_port);
   U73 : AOI22_X1 port map( A1 => A_ns(20), A2 => n1, B1 => A_s(20), B2 => n8, 
                           ZN => n61);
   U74 : INV_X1 port map( A => A_s(21), ZN => n60);
   U75 : INV_X1 port map( A => A_ns(21), ZN => n59);
   U76 : OAI221_X1 port map( B1 => n2, B2 => n62, C1 => n4, C2 => n63, A => n64
                           , ZN => O_21_port);
   U77 : AOI22_X1 port map( A1 => A_ns(19), A2 => n1, B1 => A_s(19), B2 => n8, 
                           ZN => n64);
   U78 : INV_X1 port map( A => A_s(20), ZN => n63);
   U79 : INV_X1 port map( A => A_ns(20), ZN => n62);
   U80 : OAI221_X1 port map( B1 => n2, B2 => n65, C1 => n4, C2 => n66, A => n67
                           , ZN => O_20_port);
   U81 : AOI22_X1 port map( A1 => A_ns(18), A2 => n1, B1 => A_s(18), B2 => n8, 
                           ZN => n67);
   U82 : INV_X1 port map( A => A_s(19), ZN => n66);
   U83 : INV_X1 port map( A => A_ns(19), ZN => n65);
   U84 : OAI221_X1 port map( B1 => n2, B2 => n68, C1 => n4, C2 => n69, A => n70
                           , ZN => O_19_port);
   U85 : AOI22_X1 port map( A1 => A_ns(17), A2 => n1, B1 => A_s(17), B2 => n8, 
                           ZN => n70);
   U86 : INV_X1 port map( A => A_s(18), ZN => n69);
   U87 : INV_X1 port map( A => A_ns(18), ZN => n68);
   U88 : OAI221_X1 port map( B1 => n2, B2 => n71, C1 => n4, C2 => n72, A => n73
                           , ZN => O_18_port);
   U89 : AOI22_X1 port map( A1 => A_ns(16), A2 => n1, B1 => A_s(16), B2 => n8, 
                           ZN => n73);
   U90 : INV_X1 port map( A => A_s(17), ZN => n72);
   U91 : INV_X1 port map( A => A_ns(17), ZN => n71);
   U92 : OAI221_X1 port map( B1 => n2, B2 => n74, C1 => n4, C2 => n75, A => n76
                           , ZN => O_17_port);
   U93 : AOI22_X1 port map( A1 => A_ns(15), A2 => n1, B1 => A_s(15), B2 => n8, 
                           ZN => n76);
   U94 : INV_X1 port map( A => A_s(16), ZN => n75);
   U95 : INV_X1 port map( A => A_ns(16), ZN => n74);
   U96 : OAI221_X1 port map( B1 => n2, B2 => n77, C1 => n4, C2 => n78, A => n79
                           , ZN => O_16_port);
   U97 : AOI22_X1 port map( A1 => A_ns(14), A2 => n1, B1 => A_s(14), B2 => n8, 
                           ZN => n79);
   U98 : INV_X1 port map( A => A_s(15), ZN => n78);
   U99 : INV_X1 port map( A => A_ns(15), ZN => n77);
   U100 : OAI221_X1 port map( B1 => n2, B2 => n80, C1 => n4, C2 => n81, A => 
                           n82, ZN => O_15_port);
   U101 : AOI22_X1 port map( A1 => A_ns(13), A2 => n1, B1 => A_s(13), B2 => n8,
                           ZN => n82);
   U102 : INV_X1 port map( A => A_s(14), ZN => n81);
   U103 : INV_X1 port map( A => A_ns(14), ZN => n80);
   U104 : OAI221_X1 port map( B1 => n2, B2 => n83, C1 => n4, C2 => n84, A => 
                           n85, ZN => O_14_port);
   U105 : AOI22_X1 port map( A1 => A_ns(12), A2 => n1, B1 => A_s(12), B2 => n8,
                           ZN => n85);
   U106 : INV_X1 port map( A => A_s(13), ZN => n84);
   U107 : INV_X1 port map( A => A_ns(13), ZN => n83);
   U108 : OAI221_X1 port map( B1 => n2, B2 => n86, C1 => n4, C2 => n87, A => 
                           n88, ZN => O_13_port);
   U109 : AOI22_X1 port map( A1 => A_ns(11), A2 => n1, B1 => A_s(11), B2 => n8,
                           ZN => n88);
   U110 : INV_X1 port map( A => A_s(12), ZN => n87);
   U111 : INV_X1 port map( A => A_ns(12), ZN => n86);
   U112 : OAI221_X1 port map( B1 => n2, B2 => n89, C1 => n4, C2 => n90, A => 
                           n91, ZN => O_12_port);
   U113 : AOI22_X1 port map( A1 => A_ns(10), A2 => n1, B1 => A_s(10), B2 => n8,
                           ZN => n91);
   U114 : INV_X1 port map( A => A_s(11), ZN => n90);
   U115 : INV_X1 port map( A => A_ns(11), ZN => n89);
   U116 : OAI221_X1 port map( B1 => n2, B2 => n92, C1 => n4, C2 => n93, A => 
                           n94, ZN => O_11_port);
   U117 : AOI22_X1 port map( A1 => A_ns(9), A2 => n1, B1 => A_s(9), B2 => n8, 
                           ZN => n94);
   U118 : INV_X1 port map( A => A_s(10), ZN => n93);
   U119 : INV_X1 port map( A => A_ns(10), ZN => n92);
   U120 : OAI221_X1 port map( B1 => n2, B2 => n95, C1 => n4, C2 => n96, A => 
                           n97, ZN => O_10_port);
   U121 : AOI22_X1 port map( A1 => A_ns(8), A2 => n1, B1 => A_s(8), B2 => n8, 
                           ZN => n97);
   U122 : INV_X1 port map( A => A_s(9), ZN => n96);
   U123 : INV_X1 port map( A => A_ns(9), ZN => n95);
   U124 : OAI221_X1 port map( B1 => n2, B2 => n98, C1 => n4, C2 => n99, A => 
                           n100, ZN => O_9_port);
   U125 : AOI22_X1 port map( A1 => A_ns(7), A2 => n7, B1 => A_s(7), B2 => n8, 
                           ZN => n100);
   U126 : INV_X1 port map( A => A_s(8), ZN => n99);
   U127 : INV_X1 port map( A => A_ns(8), ZN => n98);
   U128 : OAI221_X1 port map( B1 => n2, B2 => n101, C1 => n4, C2 => n102, A => 
                           n103, ZN => O_8_port);
   U129 : AOI22_X1 port map( A1 => A_ns(6), A2 => n7, B1 => A_s(6), B2 => n8, 
                           ZN => n103);
   U130 : INV_X1 port map( A => A_s(7), ZN => n102);
   U131 : INV_X1 port map( A => A_ns(7), ZN => n101);
   U132 : OAI221_X1 port map( B1 => n2, B2 => n104, C1 => n4, C2 => n105, A => 
                           n106, ZN => O_7_port);
   U133 : AOI22_X1 port map( A1 => A_ns(5), A2 => n7, B1 => A_s(5), B2 => n8, 
                           ZN => n106);
   U134 : INV_X1 port map( A => A_s(6), ZN => n105);
   U135 : INV_X1 port map( A => A_ns(6), ZN => n104);
   U136 : INV_X1 port map( A => n107, ZN => O_1_port);
   U137 : AOI22_X1 port map( A1 => n16, A2 => A_s(0), B1 => n15, B2 => A_ns(0),
                           ZN => n107);
   U138 : OAI221_X1 port map( B1 => n2, B2 => n108, C1 => n4, C2 => n109, A => 
                           n110, ZN => O_2_port);
   U139 : AOI22_X1 port map( A1 => A_ns(0), A2 => n7, B1 => A_s(0), B2 => n8, 
                           ZN => n110);
   U140 : INV_X1 port map( A => n111, ZN => O_3_port);
   U141 : AOI221_X1 port map( B1 => n15, B2 => A_ns(2), C1 => n16, C2 => A_s(2)
                           , A => n112, ZN => n111);
   U142 : OAI22_X1 port map( A1 => n108, A2 => n12, B1 => n109, B2 => n13, ZN 
                           => n112);
   U143 : INV_X1 port map( A => A_s(1), ZN => n109);
   U144 : INV_X1 port map( A => A_ns(1), ZN => n108);
   U145 : OAI221_X1 port map( B1 => n2, B2 => n113, C1 => n4, C2 => n114, A => 
                           n115, ZN => O_4_port);
   U146 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n115);
   U147 : INV_X1 port map( A => n116, ZN => O_5_port);
   U148 : AOI221_X1 port map( B1 => n15, B2 => A_ns(4), C1 => n16, C2 => A_s(4)
                           , A => n117, ZN => n116);
   U149 : OAI22_X1 port map( A1 => n113, A2 => n12, B1 => n114, B2 => n13, ZN 
                           => n117);
   U150 : INV_X1 port map( A => A_s(3), ZN => n114);
   U151 : INV_X1 port map( A => n7, ZN => n12);
   U152 : INV_X1 port map( A => A_ns(3), ZN => n113);
   U153 : INV_X1 port map( A => n4, ZN => n16);
   U154 : INV_X1 port map( A => n2, ZN => n15);
   U155 : OAI221_X1 port map( B1 => n2, B2 => n118, C1 => n4, C2 => n119, A => 
                           n120, ZN => O_6_port);
   U156 : AOI22_X1 port map( A1 => A_ns(4), A2 => n7, B1 => A_s(4), B2 => n8, 
                           ZN => n120);
   U157 : NAND3_X1 port map( A1 => B(5), A2 => n121, A3 => B(6), ZN => n13);
   U158 : NOR3_X1 port map( A1 => B(5), A2 => B(6), A3 => n121, ZN => n7);
   U159 : INV_X1 port map( A => A_s(5), ZN => n119);
   U160 : INV_X1 port map( A => A_ns(5), ZN => n118);
   U161 : INV_X1 port map( A => B(7), ZN => n121);
   U162 : XOR2_X1 port map( A => B(6), B => B(5), Z => n122);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT38_i4 is

   port( A_s, A_ns, B : in std_logic_vector (37 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (37 downto 0));

end BOOTHENC_NBIT38_i4;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT38_i4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
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
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, O_35_port, O_36_port, O_37_port, 
      O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, O_29_port, 
      O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, O_23_port, 
      O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, O_17_port, 
      O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, O_11_port, 
      O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, O_1_port, 
      O_2_port, O_3_port, O_4_port : std_logic;

begin
   O <= ( O_37_port, O_36_port, O_35_port, O_34_port, O_33_port, O_32_port, 
      O_31_port, O_30_port, O_29_port, O_28_port, O_27_port, O_26_port, 
      O_25_port, O_24_port, O_23_port, O_22_port, O_21_port, O_20_port, 
      O_19_port, O_18_port, O_17_port, O_16_port, O_15_port, O_14_port, 
      O_13_port, O_12_port, O_11_port, O_10_port, O_9_port, O_8_port, O_7_port,
      O_6_port, O_5_port, O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port
      );
   A_so <= ( A_s(35), A_s(34), A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), 
      A_s(28), A_s(27), A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), 
      A_s(20), A_s(19), A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), 
      A_s(12), A_s(11), A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4)
      , A_s(3), A_s(2), A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(35), A_ns(34), A_ns(33), A_ns(32), A_ns(31), A_ns(30), 
      A_ns(29), A_ns(28), A_ns(27), A_ns(26), A_ns(25), A_ns(24), A_ns(23), 
      A_ns(22), A_ns(21), A_ns(20), A_ns(19), A_ns(18), A_ns(17), A_ns(16), 
      A_ns(15), A_ns(14), A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), 
      A_ns(8), A_ns(7), A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), 
      A_ns(0), X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : NAND2_X2 port map( A1 => n117, A2 => n4, ZN => n2);
   U3 : NAND2_X2 port map( A1 => n117, A2 => n116, ZN => n4);
   U4 : INV_X2 port map( A => n13, ZN => n8);
   U5 : INV_X2 port map( A => n12, ZN => n1);
   U6 : OAI221_X1 port map( B1 => n2, B2 => n3, C1 => n4, C2 => n5, A => n6, ZN
                           => O_35_port);
   U7 : AOI22_X1 port map( A1 => A_ns(33), A2 => n1, B1 => A_s(33), B2 => n8, 
                           ZN => n6);
   U8 : INV_X1 port map( A => A_s(34), ZN => n5);
   U9 : INV_X1 port map( A => A_ns(34), ZN => n3);
   U10 : OAI221_X1 port map( B1 => n2, B2 => n9, C1 => n4, C2 => n10, A => n11,
                           ZN => O_36_port);
   U11 : AOI22_X1 port map( A1 => A_ns(34), A2 => n1, B1 => A_s(34), B2 => n8, 
                           ZN => n11);
   U12 : OAI221_X1 port map( B1 => n12, B2 => n9, C1 => n13, C2 => n10, A => 
                           n14, ZN => O_37_port);
   U13 : AOI22_X1 port map( A1 => A_ns(36), A2 => n15, B1 => A_s(36), B2 => n16
                           , ZN => n14);
   U14 : INV_X1 port map( A => A_s(35), ZN => n10);
   U15 : INV_X1 port map( A => A_ns(35), ZN => n9);
   U16 : OAI221_X1 port map( B1 => n17, B2 => n2, C1 => n18, C2 => n4, A => n19
                           , ZN => O_34_port);
   U17 : AOI22_X1 port map( A1 => A_ns(32), A2 => n1, B1 => A_s(32), B2 => n8, 
                           ZN => n19);
   U18 : INV_X1 port map( A => A_s(33), ZN => n18);
   U19 : INV_X1 port map( A => A_ns(33), ZN => n17);
   U20 : OAI221_X1 port map( B1 => n2, B2 => n20, C1 => n4, C2 => n21, A => n22
                           , ZN => O_33_port);
   U21 : AOI22_X1 port map( A1 => A_ns(31), A2 => n1, B1 => A_s(31), B2 => n8, 
                           ZN => n22);
   U22 : INV_X1 port map( A => A_s(32), ZN => n21);
   U23 : INV_X1 port map( A => A_ns(32), ZN => n20);
   U24 : OAI221_X1 port map( B1 => n2, B2 => n23, C1 => n4, C2 => n24, A => n25
                           , ZN => O_32_port);
   U25 : AOI22_X1 port map( A1 => A_ns(30), A2 => n1, B1 => A_s(30), B2 => n8, 
                           ZN => n25);
   U26 : INV_X1 port map( A => A_s(31), ZN => n24);
   U27 : INV_X1 port map( A => A_ns(31), ZN => n23);
   U28 : OAI221_X1 port map( B1 => n2, B2 => n26, C1 => n4, C2 => n27, A => n28
                           , ZN => O_31_port);
   U29 : AOI22_X1 port map( A1 => A_ns(29), A2 => n1, B1 => A_s(29), B2 => n8, 
                           ZN => n28);
   U30 : INV_X1 port map( A => A_s(30), ZN => n27);
   U31 : INV_X1 port map( A => A_ns(30), ZN => n26);
   U32 : OAI221_X1 port map( B1 => n2, B2 => n29, C1 => n4, C2 => n30, A => n31
                           , ZN => O_30_port);
   U33 : AOI22_X1 port map( A1 => A_ns(28), A2 => n1, B1 => A_s(28), B2 => n8, 
                           ZN => n31);
   U34 : INV_X1 port map( A => A_s(29), ZN => n30);
   U35 : INV_X1 port map( A => A_ns(29), ZN => n29);
   U36 : OAI221_X1 port map( B1 => n2, B2 => n32, C1 => n4, C2 => n33, A => n34
                           , ZN => O_29_port);
   U37 : AOI22_X1 port map( A1 => A_ns(27), A2 => n1, B1 => A_s(27), B2 => n8, 
                           ZN => n34);
   U38 : INV_X1 port map( A => A_s(28), ZN => n33);
   U39 : INV_X1 port map( A => A_ns(28), ZN => n32);
   U40 : OAI221_X1 port map( B1 => n2, B2 => n35, C1 => n4, C2 => n36, A => n37
                           , ZN => O_28_port);
   U41 : AOI22_X1 port map( A1 => A_ns(26), A2 => n1, B1 => A_s(26), B2 => n8, 
                           ZN => n37);
   U42 : INV_X1 port map( A => A_s(27), ZN => n36);
   U43 : INV_X1 port map( A => A_ns(27), ZN => n35);
   U44 : OAI221_X1 port map( B1 => n2, B2 => n38, C1 => n4, C2 => n39, A => n40
                           , ZN => O_27_port);
   U45 : AOI22_X1 port map( A1 => A_ns(25), A2 => n1, B1 => A_s(25), B2 => n8, 
                           ZN => n40);
   U46 : INV_X1 port map( A => A_s(26), ZN => n39);
   U47 : INV_X1 port map( A => A_ns(26), ZN => n38);
   U48 : OAI221_X1 port map( B1 => n2, B2 => n41, C1 => n4, C2 => n42, A => n43
                           , ZN => O_26_port);
   U49 : AOI22_X1 port map( A1 => A_ns(24), A2 => n1, B1 => A_s(24), B2 => n8, 
                           ZN => n43);
   U50 : INV_X1 port map( A => A_s(25), ZN => n42);
   U51 : INV_X1 port map( A => A_ns(25), ZN => n41);
   U52 : OAI221_X1 port map( B1 => n2, B2 => n44, C1 => n4, C2 => n45, A => n46
                           , ZN => O_25_port);
   U53 : AOI22_X1 port map( A1 => A_ns(23), A2 => n1, B1 => A_s(23), B2 => n8, 
                           ZN => n46);
   U54 : INV_X1 port map( A => A_s(24), ZN => n45);
   U55 : INV_X1 port map( A => A_ns(24), ZN => n44);
   U56 : OAI221_X1 port map( B1 => n2, B2 => n47, C1 => n4, C2 => n48, A => n49
                           , ZN => O_24_port);
   U57 : AOI22_X1 port map( A1 => A_ns(22), A2 => n1, B1 => A_s(22), B2 => n8, 
                           ZN => n49);
   U58 : INV_X1 port map( A => A_s(23), ZN => n48);
   U59 : INV_X1 port map( A => A_ns(23), ZN => n47);
   U60 : OAI221_X1 port map( B1 => n2, B2 => n50, C1 => n4, C2 => n51, A => n52
                           , ZN => O_23_port);
   U61 : AOI22_X1 port map( A1 => A_ns(21), A2 => n1, B1 => A_s(21), B2 => n8, 
                           ZN => n52);
   U62 : INV_X1 port map( A => A_s(22), ZN => n51);
   U63 : INV_X1 port map( A => A_ns(22), ZN => n50);
   U64 : OAI221_X1 port map( B1 => n2, B2 => n53, C1 => n4, C2 => n54, A => n55
                           , ZN => O_22_port);
   U65 : AOI22_X1 port map( A1 => A_ns(20), A2 => n1, B1 => A_s(20), B2 => n8, 
                           ZN => n55);
   U66 : INV_X1 port map( A => A_s(21), ZN => n54);
   U67 : INV_X1 port map( A => A_ns(21), ZN => n53);
   U68 : OAI221_X1 port map( B1 => n2, B2 => n56, C1 => n4, C2 => n57, A => n58
                           , ZN => O_21_port);
   U69 : AOI22_X1 port map( A1 => A_ns(19), A2 => n1, B1 => A_s(19), B2 => n8, 
                           ZN => n58);
   U70 : INV_X1 port map( A => A_s(20), ZN => n57);
   U71 : INV_X1 port map( A => A_ns(20), ZN => n56);
   U72 : OAI221_X1 port map( B1 => n2, B2 => n59, C1 => n4, C2 => n60, A => n61
                           , ZN => O_20_port);
   U73 : AOI22_X1 port map( A1 => A_ns(18), A2 => n1, B1 => A_s(18), B2 => n8, 
                           ZN => n61);
   U74 : INV_X1 port map( A => A_s(19), ZN => n60);
   U75 : INV_X1 port map( A => A_ns(19), ZN => n59);
   U76 : OAI221_X1 port map( B1 => n2, B2 => n62, C1 => n4, C2 => n63, A => n64
                           , ZN => O_19_port);
   U77 : AOI22_X1 port map( A1 => A_ns(17), A2 => n1, B1 => A_s(17), B2 => n8, 
                           ZN => n64);
   U78 : INV_X1 port map( A => A_s(18), ZN => n63);
   U79 : INV_X1 port map( A => A_ns(18), ZN => n62);
   U80 : OAI221_X1 port map( B1 => n2, B2 => n65, C1 => n4, C2 => n66, A => n67
                           , ZN => O_18_port);
   U81 : AOI22_X1 port map( A1 => A_ns(16), A2 => n1, B1 => A_s(16), B2 => n8, 
                           ZN => n67);
   U82 : INV_X1 port map( A => A_s(17), ZN => n66);
   U83 : INV_X1 port map( A => A_ns(17), ZN => n65);
   U84 : OAI221_X1 port map( B1 => n2, B2 => n68, C1 => n4, C2 => n69, A => n70
                           , ZN => O_17_port);
   U85 : AOI22_X1 port map( A1 => A_ns(15), A2 => n1, B1 => A_s(15), B2 => n8, 
                           ZN => n70);
   U86 : INV_X1 port map( A => A_s(16), ZN => n69);
   U87 : INV_X1 port map( A => A_ns(16), ZN => n68);
   U88 : OAI221_X1 port map( B1 => n2, B2 => n71, C1 => n4, C2 => n72, A => n73
                           , ZN => O_16_port);
   U89 : AOI22_X1 port map( A1 => A_ns(14), A2 => n1, B1 => A_s(14), B2 => n8, 
                           ZN => n73);
   U90 : INV_X1 port map( A => A_s(15), ZN => n72);
   U91 : INV_X1 port map( A => A_ns(15), ZN => n71);
   U92 : OAI221_X1 port map( B1 => n2, B2 => n74, C1 => n4, C2 => n75, A => n76
                           , ZN => O_15_port);
   U93 : AOI22_X1 port map( A1 => A_ns(13), A2 => n1, B1 => A_s(13), B2 => n8, 
                           ZN => n76);
   U94 : INV_X1 port map( A => A_s(14), ZN => n75);
   U95 : INV_X1 port map( A => A_ns(14), ZN => n74);
   U96 : OAI221_X1 port map( B1 => n2, B2 => n77, C1 => n4, C2 => n78, A => n79
                           , ZN => O_14_port);
   U97 : AOI22_X1 port map( A1 => A_ns(12), A2 => n1, B1 => A_s(12), B2 => n8, 
                           ZN => n79);
   U98 : INV_X1 port map( A => A_s(13), ZN => n78);
   U99 : INV_X1 port map( A => A_ns(13), ZN => n77);
   U100 : OAI221_X1 port map( B1 => n2, B2 => n80, C1 => n4, C2 => n81, A => 
                           n82, ZN => O_13_port);
   U101 : AOI22_X1 port map( A1 => A_ns(11), A2 => n1, B1 => A_s(11), B2 => n8,
                           ZN => n82);
   U102 : INV_X1 port map( A => A_s(12), ZN => n81);
   U103 : INV_X1 port map( A => A_ns(12), ZN => n80);
   U104 : OAI221_X1 port map( B1 => n2, B2 => n83, C1 => n4, C2 => n84, A => 
                           n85, ZN => O_12_port);
   U105 : AOI22_X1 port map( A1 => A_ns(10), A2 => n1, B1 => A_s(10), B2 => n8,
                           ZN => n85);
   U106 : INV_X1 port map( A => A_s(11), ZN => n84);
   U107 : INV_X1 port map( A => A_ns(11), ZN => n83);
   U108 : OAI221_X1 port map( B1 => n2, B2 => n86, C1 => n4, C2 => n87, A => 
                           n88, ZN => O_11_port);
   U109 : AOI22_X1 port map( A1 => A_ns(9), A2 => n1, B1 => A_s(9), B2 => n8, 
                           ZN => n88);
   U110 : INV_X1 port map( A => A_s(10), ZN => n87);
   U111 : INV_X1 port map( A => A_ns(10), ZN => n86);
   U112 : OAI221_X1 port map( B1 => n2, B2 => n89, C1 => n4, C2 => n90, A => 
                           n91, ZN => O_10_port);
   U113 : AOI22_X1 port map( A1 => A_ns(8), A2 => n1, B1 => A_s(8), B2 => n8, 
                           ZN => n91);
   U114 : INV_X1 port map( A => A_s(9), ZN => n90);
   U115 : INV_X1 port map( A => A_ns(9), ZN => n89);
   U116 : OAI221_X1 port map( B1 => n2, B2 => n92, C1 => n4, C2 => n93, A => 
                           n94, ZN => O_9_port);
   U117 : AOI22_X1 port map( A1 => A_ns(7), A2 => n1, B1 => A_s(7), B2 => n8, 
                           ZN => n94);
   U118 : INV_X1 port map( A => A_s(8), ZN => n93);
   U119 : INV_X1 port map( A => A_ns(8), ZN => n92);
   U120 : OAI221_X1 port map( B1 => n2, B2 => n95, C1 => n4, C2 => n96, A => 
                           n97, ZN => O_8_port);
   U121 : AOI22_X1 port map( A1 => A_ns(6), A2 => n1, B1 => A_s(6), B2 => n8, 
                           ZN => n97);
   U122 : INV_X1 port map( A => A_s(7), ZN => n96);
   U123 : INV_X1 port map( A => A_ns(7), ZN => n95);
   U124 : OAI221_X1 port map( B1 => n2, B2 => n98, C1 => n4, C2 => n99, A => 
                           n100, ZN => O_7_port);
   U125 : AOI22_X1 port map( A1 => A_ns(5), A2 => n7, B1 => A_s(5), B2 => n8, 
                           ZN => n100);
   U126 : INV_X1 port map( A => A_s(6), ZN => n99);
   U127 : INV_X1 port map( A => A_ns(6), ZN => n98);
   U128 : OAI221_X1 port map( B1 => n2, B2 => n101, C1 => n4, C2 => n102, A => 
                           n103, ZN => O_6_port);
   U129 : AOI22_X1 port map( A1 => A_ns(4), A2 => n7, B1 => A_s(4), B2 => n8, 
                           ZN => n103);
   U130 : INV_X1 port map( A => A_s(5), ZN => n102);
   U131 : INV_X1 port map( A => A_ns(5), ZN => n101);
   U132 : OAI221_X1 port map( B1 => n2, B2 => n104, C1 => n4, C2 => n105, A => 
                           n106, ZN => O_5_port);
   U133 : AOI22_X1 port map( A1 => A_ns(3), A2 => n7, B1 => A_s(3), B2 => n8, 
                           ZN => n106);
   U134 : INV_X1 port map( A => A_s(4), ZN => n105);
   U135 : INV_X1 port map( A => A_ns(4), ZN => n104);
   U136 : INV_X1 port map( A => n107, ZN => O_1_port);
   U137 : AOI22_X1 port map( A1 => n16, A2 => A_s(0), B1 => n15, B2 => A_ns(0),
                           ZN => n107);
   U138 : OAI221_X1 port map( B1 => n2, B2 => n108, C1 => n4, C2 => n109, A => 
                           n110, ZN => O_2_port);
   U139 : AOI22_X1 port map( A1 => A_ns(0), A2 => n7, B1 => A_s(0), B2 => n8, 
                           ZN => n110);
   U140 : INV_X1 port map( A => n111, ZN => O_3_port);
   U141 : AOI221_X1 port map( B1 => n15, B2 => A_ns(2), C1 => n16, C2 => A_s(2)
                           , A => n112, ZN => n111);
   U142 : OAI22_X1 port map( A1 => n108, A2 => n12, B1 => n109, B2 => n13, ZN 
                           => n112);
   U143 : INV_X1 port map( A => A_s(1), ZN => n109);
   U144 : INV_X1 port map( A => n7, ZN => n12);
   U145 : INV_X1 port map( A => A_ns(1), ZN => n108);
   U146 : INV_X1 port map( A => n4, ZN => n16);
   U147 : INV_X1 port map( A => n2, ZN => n15);
   U148 : OAI221_X1 port map( B1 => n2, B2 => n113, C1 => n4, C2 => n114, A => 
                           n115, ZN => O_4_port);
   U149 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n115);
   U150 : NAND3_X1 port map( A1 => B(3), A2 => n116, A3 => B(4), ZN => n13);
   U151 : NOR3_X1 port map( A1 => B(3), A2 => B(4), A3 => n116, ZN => n7);
   U152 : INV_X1 port map( A => A_s(3), ZN => n114);
   U153 : INV_X1 port map( A => A_ns(3), ZN => n113);
   U154 : INV_X1 port map( A => B(5), ZN => n116);
   U155 : XOR2_X1 port map( A => B(4), B => B(3), Z => n117);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT36_i2 is

   port( A_s, A_ns, B : in std_logic_vector (35 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (35 downto 0));

end BOOTHENC_NBIT36_i2;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT36_i2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
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
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, O_33_port, O_34_port, O_35_port, O_32_port, O_31_port, O_30_port, 
      O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, 
      O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, 
      O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, 
      O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, 
      O_4_port, O_3_port, O_1_port, O_2_port : std_logic;

begin
   O <= ( O_35_port, O_34_port, O_33_port, O_32_port, O_31_port, O_30_port, 
      O_29_port, O_28_port, O_27_port, O_26_port, O_25_port, O_24_port, 
      O_23_port, O_22_port, O_21_port, O_20_port, O_19_port, O_18_port, 
      O_17_port, O_16_port, O_15_port, O_14_port, O_13_port, O_12_port, 
      O_11_port, O_10_port, O_9_port, O_8_port, O_7_port, O_6_port, O_5_port, 
      O_4_port, O_3_port, O_2_port, O_1_port, X_Logic0_port );
   A_so <= ( A_s(33), A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), 
      A_s(26), A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), 
      A_s(18), A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), 
      A_s(10), A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), 
      A_s(1), A_s(0), X_Logic0_port, X_Logic0_port );
   A_nso <= ( A_ns(33), A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), 
      A_ns(27), A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), 
      A_ns(20), A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), 
      A_ns(13), A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), 
      A_ns(6), A_ns(5), A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), 
      X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U2 : NAND2_X2 port map( A1 => n112, A2 => n4, ZN => n2);
   U3 : NAND2_X2 port map( A1 => n112, A2 => n111, ZN => n4);
   U4 : INV_X2 port map( A => n13, ZN => n8);
   U5 : INV_X2 port map( A => n12, ZN => n1);
   U6 : OAI221_X1 port map( B1 => n2, B2 => n3, C1 => n4, C2 => n5, A => n6, ZN
                           => O_33_port);
   U7 : AOI22_X1 port map( A1 => A_ns(31), A2 => n1, B1 => A_s(31), B2 => n8, 
                           ZN => n6);
   U8 : INV_X1 port map( A => A_s(32), ZN => n5);
   U9 : INV_X1 port map( A => A_ns(32), ZN => n3);
   U10 : OAI221_X1 port map( B1 => n2, B2 => n9, C1 => n4, C2 => n10, A => n11,
                           ZN => O_34_port);
   U11 : AOI22_X1 port map( A1 => A_ns(32), A2 => n1, B1 => A_s(32), B2 => n8, 
                           ZN => n11);
   U12 : OAI221_X1 port map( B1 => n12, B2 => n9, C1 => n13, C2 => n10, A => 
                           n14, ZN => O_35_port);
   U13 : AOI22_X1 port map( A1 => A_ns(34), A2 => n15, B1 => A_s(34), B2 => n16
                           , ZN => n14);
   U14 : INV_X1 port map( A => A_s(33), ZN => n10);
   U15 : INV_X1 port map( A => A_ns(33), ZN => n9);
   U16 : INV_X1 port map( A => n7, ZN => n12);
   U17 : OAI221_X1 port map( B1 => n17, B2 => n2, C1 => n18, C2 => n4, A => n19
                           , ZN => O_32_port);
   U18 : AOI22_X1 port map( A1 => A_ns(30), A2 => n1, B1 => A_s(30), B2 => n8, 
                           ZN => n19);
   U19 : INV_X1 port map( A => A_s(31), ZN => n18);
   U20 : INV_X1 port map( A => A_ns(31), ZN => n17);
   U21 : OAI221_X1 port map( B1 => n2, B2 => n20, C1 => n4, C2 => n21, A => n22
                           , ZN => O_31_port);
   U22 : AOI22_X1 port map( A1 => A_ns(29), A2 => n1, B1 => A_s(29), B2 => n8, 
                           ZN => n22);
   U23 : INV_X1 port map( A => A_s(30), ZN => n21);
   U24 : INV_X1 port map( A => A_ns(30), ZN => n20);
   U25 : OAI221_X1 port map( B1 => n2, B2 => n23, C1 => n4, C2 => n24, A => n25
                           , ZN => O_30_port);
   U26 : AOI22_X1 port map( A1 => A_ns(28), A2 => n1, B1 => A_s(28), B2 => n8, 
                           ZN => n25);
   U27 : INV_X1 port map( A => A_s(29), ZN => n24);
   U28 : INV_X1 port map( A => A_ns(29), ZN => n23);
   U29 : OAI221_X1 port map( B1 => n2, B2 => n26, C1 => n4, C2 => n27, A => n28
                           , ZN => O_29_port);
   U30 : AOI22_X1 port map( A1 => A_ns(27), A2 => n1, B1 => A_s(27), B2 => n8, 
                           ZN => n28);
   U31 : INV_X1 port map( A => A_s(28), ZN => n27);
   U32 : INV_X1 port map( A => A_ns(28), ZN => n26);
   U33 : OAI221_X1 port map( B1 => n2, B2 => n29, C1 => n4, C2 => n30, A => n31
                           , ZN => O_28_port);
   U34 : AOI22_X1 port map( A1 => A_ns(26), A2 => n1, B1 => A_s(26), B2 => n8, 
                           ZN => n31);
   U35 : INV_X1 port map( A => A_s(27), ZN => n30);
   U36 : INV_X1 port map( A => A_ns(27), ZN => n29);
   U37 : OAI221_X1 port map( B1 => n2, B2 => n32, C1 => n4, C2 => n33, A => n34
                           , ZN => O_27_port);
   U38 : AOI22_X1 port map( A1 => A_ns(25), A2 => n1, B1 => A_s(25), B2 => n8, 
                           ZN => n34);
   U39 : INV_X1 port map( A => A_s(26), ZN => n33);
   U40 : INV_X1 port map( A => A_ns(26), ZN => n32);
   U41 : OAI221_X1 port map( B1 => n2, B2 => n35, C1 => n4, C2 => n36, A => n37
                           , ZN => O_26_port);
   U42 : AOI22_X1 port map( A1 => A_ns(24), A2 => n1, B1 => A_s(24), B2 => n8, 
                           ZN => n37);
   U43 : INV_X1 port map( A => A_s(25), ZN => n36);
   U44 : INV_X1 port map( A => A_ns(25), ZN => n35);
   U45 : OAI221_X1 port map( B1 => n2, B2 => n38, C1 => n4, C2 => n39, A => n40
                           , ZN => O_25_port);
   U46 : AOI22_X1 port map( A1 => A_ns(23), A2 => n1, B1 => A_s(23), B2 => n8, 
                           ZN => n40);
   U47 : INV_X1 port map( A => A_s(24), ZN => n39);
   U48 : INV_X1 port map( A => A_ns(24), ZN => n38);
   U49 : OAI221_X1 port map( B1 => n2, B2 => n41, C1 => n4, C2 => n42, A => n43
                           , ZN => O_24_port);
   U50 : AOI22_X1 port map( A1 => A_ns(22), A2 => n1, B1 => A_s(22), B2 => n8, 
                           ZN => n43);
   U51 : INV_X1 port map( A => A_s(23), ZN => n42);
   U52 : INV_X1 port map( A => A_ns(23), ZN => n41);
   U53 : OAI221_X1 port map( B1 => n2, B2 => n44, C1 => n4, C2 => n45, A => n46
                           , ZN => O_23_port);
   U54 : AOI22_X1 port map( A1 => A_ns(21), A2 => n1, B1 => A_s(21), B2 => n8, 
                           ZN => n46);
   U55 : INV_X1 port map( A => A_s(22), ZN => n45);
   U56 : INV_X1 port map( A => A_ns(22), ZN => n44);
   U57 : OAI221_X1 port map( B1 => n2, B2 => n47, C1 => n4, C2 => n48, A => n49
                           , ZN => O_22_port);
   U58 : AOI22_X1 port map( A1 => A_ns(20), A2 => n1, B1 => A_s(20), B2 => n8, 
                           ZN => n49);
   U59 : INV_X1 port map( A => A_s(21), ZN => n48);
   U60 : INV_X1 port map( A => A_ns(21), ZN => n47);
   U61 : OAI221_X1 port map( B1 => n2, B2 => n50, C1 => n4, C2 => n51, A => n52
                           , ZN => O_21_port);
   U62 : AOI22_X1 port map( A1 => A_ns(19), A2 => n1, B1 => A_s(19), B2 => n8, 
                           ZN => n52);
   U63 : INV_X1 port map( A => A_s(20), ZN => n51);
   U64 : INV_X1 port map( A => A_ns(20), ZN => n50);
   U65 : OAI221_X1 port map( B1 => n2, B2 => n53, C1 => n4, C2 => n54, A => n55
                           , ZN => O_20_port);
   U66 : AOI22_X1 port map( A1 => A_ns(18), A2 => n1, B1 => A_s(18), B2 => n8, 
                           ZN => n55);
   U67 : INV_X1 port map( A => A_s(19), ZN => n54);
   U68 : INV_X1 port map( A => A_ns(19), ZN => n53);
   U69 : OAI221_X1 port map( B1 => n2, B2 => n56, C1 => n4, C2 => n57, A => n58
                           , ZN => O_19_port);
   U70 : AOI22_X1 port map( A1 => A_ns(17), A2 => n1, B1 => A_s(17), B2 => n8, 
                           ZN => n58);
   U71 : INV_X1 port map( A => A_s(18), ZN => n57);
   U72 : INV_X1 port map( A => A_ns(18), ZN => n56);
   U73 : OAI221_X1 port map( B1 => n2, B2 => n59, C1 => n4, C2 => n60, A => n61
                           , ZN => O_18_port);
   U74 : AOI22_X1 port map( A1 => A_ns(16), A2 => n1, B1 => A_s(16), B2 => n8, 
                           ZN => n61);
   U75 : INV_X1 port map( A => A_s(17), ZN => n60);
   U76 : INV_X1 port map( A => A_ns(17), ZN => n59);
   U77 : OAI221_X1 port map( B1 => n2, B2 => n62, C1 => n4, C2 => n63, A => n64
                           , ZN => O_17_port);
   U78 : AOI22_X1 port map( A1 => A_ns(15), A2 => n1, B1 => A_s(15), B2 => n8, 
                           ZN => n64);
   U79 : INV_X1 port map( A => A_s(16), ZN => n63);
   U80 : INV_X1 port map( A => A_ns(16), ZN => n62);
   U81 : OAI221_X1 port map( B1 => n2, B2 => n65, C1 => n4, C2 => n66, A => n67
                           , ZN => O_16_port);
   U82 : AOI22_X1 port map( A1 => A_ns(14), A2 => n1, B1 => A_s(14), B2 => n8, 
                           ZN => n67);
   U83 : INV_X1 port map( A => A_s(15), ZN => n66);
   U84 : INV_X1 port map( A => A_ns(15), ZN => n65);
   U85 : OAI221_X1 port map( B1 => n2, B2 => n68, C1 => n4, C2 => n69, A => n70
                           , ZN => O_15_port);
   U86 : AOI22_X1 port map( A1 => A_ns(13), A2 => n1, B1 => A_s(13), B2 => n8, 
                           ZN => n70);
   U87 : INV_X1 port map( A => A_s(14), ZN => n69);
   U88 : INV_X1 port map( A => A_ns(14), ZN => n68);
   U89 : OAI221_X1 port map( B1 => n2, B2 => n71, C1 => n4, C2 => n72, A => n73
                           , ZN => O_14_port);
   U90 : AOI22_X1 port map( A1 => A_ns(12), A2 => n1, B1 => A_s(12), B2 => n8, 
                           ZN => n73);
   U91 : INV_X1 port map( A => A_s(13), ZN => n72);
   U92 : INV_X1 port map( A => A_ns(13), ZN => n71);
   U93 : OAI221_X1 port map( B1 => n2, B2 => n74, C1 => n4, C2 => n75, A => n76
                           , ZN => O_13_port);
   U94 : AOI22_X1 port map( A1 => A_ns(11), A2 => n1, B1 => A_s(11), B2 => n8, 
                           ZN => n76);
   U95 : INV_X1 port map( A => A_s(12), ZN => n75);
   U96 : INV_X1 port map( A => A_ns(12), ZN => n74);
   U97 : OAI221_X1 port map( B1 => n2, B2 => n77, C1 => n4, C2 => n78, A => n79
                           , ZN => O_12_port);
   U98 : AOI22_X1 port map( A1 => A_ns(10), A2 => n1, B1 => A_s(10), B2 => n8, 
                           ZN => n79);
   U99 : INV_X1 port map( A => A_s(11), ZN => n78);
   U100 : INV_X1 port map( A => A_ns(11), ZN => n77);
   U101 : OAI221_X1 port map( B1 => n2, B2 => n80, C1 => n4, C2 => n81, A => 
                           n82, ZN => O_11_port);
   U102 : AOI22_X1 port map( A1 => A_ns(9), A2 => n1, B1 => A_s(9), B2 => n8, 
                           ZN => n82);
   U103 : INV_X1 port map( A => A_s(10), ZN => n81);
   U104 : INV_X1 port map( A => A_ns(10), ZN => n80);
   U105 : OAI221_X1 port map( B1 => n2, B2 => n83, C1 => n4, C2 => n84, A => 
                           n85, ZN => O_10_port);
   U106 : AOI22_X1 port map( A1 => A_ns(8), A2 => n1, B1 => A_s(8), B2 => n8, 
                           ZN => n85);
   U107 : INV_X1 port map( A => A_s(9), ZN => n84);
   U108 : INV_X1 port map( A => A_ns(9), ZN => n83);
   U109 : OAI221_X1 port map( B1 => n2, B2 => n86, C1 => n4, C2 => n87, A => 
                           n88, ZN => O_9_port);
   U110 : AOI22_X1 port map( A1 => A_ns(7), A2 => n1, B1 => A_s(7), B2 => n8, 
                           ZN => n88);
   U111 : INV_X1 port map( A => A_s(8), ZN => n87);
   U112 : INV_X1 port map( A => A_ns(8), ZN => n86);
   U113 : OAI221_X1 port map( B1 => n2, B2 => n89, C1 => n4, C2 => n90, A => 
                           n91, ZN => O_8_port);
   U114 : AOI22_X1 port map( A1 => A_ns(6), A2 => n1, B1 => A_s(6), B2 => n8, 
                           ZN => n91);
   U115 : INV_X1 port map( A => A_s(7), ZN => n90);
   U116 : INV_X1 port map( A => A_ns(7), ZN => n89);
   U117 : OAI221_X1 port map( B1 => n2, B2 => n92, C1 => n4, C2 => n93, A => 
                           n94, ZN => O_7_port);
   U118 : AOI22_X1 port map( A1 => A_ns(5), A2 => n1, B1 => A_s(5), B2 => n8, 
                           ZN => n94);
   U119 : INV_X1 port map( A => A_s(6), ZN => n93);
   U120 : INV_X1 port map( A => A_ns(6), ZN => n92);
   U121 : OAI221_X1 port map( B1 => n2, B2 => n95, C1 => n4, C2 => n96, A => 
                           n97, ZN => O_6_port);
   U122 : AOI22_X1 port map( A1 => A_ns(4), A2 => n1, B1 => A_s(4), B2 => n8, 
                           ZN => n97);
   U123 : INV_X1 port map( A => A_s(5), ZN => n96);
   U124 : INV_X1 port map( A => A_ns(5), ZN => n95);
   U125 : OAI221_X1 port map( B1 => n2, B2 => n98, C1 => n4, C2 => n99, A => 
                           n100, ZN => O_5_port);
   U126 : AOI22_X1 port map( A1 => A_ns(3), A2 => n7, B1 => A_s(3), B2 => n8, 
                           ZN => n100);
   U127 : INV_X1 port map( A => A_s(4), ZN => n99);
   U128 : INV_X1 port map( A => A_ns(4), ZN => n98);
   U129 : OAI221_X1 port map( B1 => n2, B2 => n101, C1 => n4, C2 => n102, A => 
                           n103, ZN => O_4_port);
   U130 : AOI22_X1 port map( A1 => A_ns(2), A2 => n7, B1 => A_s(2), B2 => n8, 
                           ZN => n103);
   U131 : INV_X1 port map( A => A_s(3), ZN => n102);
   U132 : INV_X1 port map( A => A_ns(3), ZN => n101);
   U133 : OAI221_X1 port map( B1 => n2, B2 => n104, C1 => n4, C2 => n105, A => 
                           n106, ZN => O_3_port);
   U134 : AOI22_X1 port map( A1 => A_ns(1), A2 => n7, B1 => A_s(1), B2 => n8, 
                           ZN => n106);
   U135 : INV_X1 port map( A => A_s(2), ZN => n105);
   U136 : INV_X1 port map( A => A_ns(2), ZN => n104);
   U137 : INV_X1 port map( A => n107, ZN => O_1_port);
   U138 : AOI22_X1 port map( A1 => n16, A2 => A_s(0), B1 => n15, B2 => A_ns(0),
                           ZN => n107);
   U139 : INV_X1 port map( A => n2, ZN => n15);
   U140 : INV_X1 port map( A => n4, ZN => n16);
   U141 : OAI221_X1 port map( B1 => n2, B2 => n108, C1 => n4, C2 => n109, A => 
                           n110, ZN => O_2_port);
   U142 : AOI22_X1 port map( A1 => A_ns(0), A2 => n7, B1 => A_s(0), B2 => n8, 
                           ZN => n110);
   U143 : NAND3_X1 port map( A1 => B(1), A2 => n111, A3 => B(2), ZN => n13);
   U144 : NOR3_X1 port map( A1 => B(1), A2 => B(2), A3 => n111, ZN => n7);
   U145 : INV_X1 port map( A => A_s(1), ZN => n109);
   U146 : INV_X1 port map( A => A_ns(1), ZN => n108);
   U147 : INV_X1 port map( A => B(3), ZN => n111);
   U148 : XOR2_X1 port map( A => B(2), B => B(1), Z => n112);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHENC_NBIT34_i0 is

   port( A_s, A_ns, B : in std_logic_vector (33 downto 0);  O, A_so, A_nso : 
         out std_logic_vector (33 downto 0));

end BOOTHENC_NBIT34_i0;

architecture SYN_BEHAVIOURAL of BOOTHENC_NBIT34_i0 is

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
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, 
      n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42
      , n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73 : std_logic;

begin
   A_so <= ( A_s(32), A_s(31), A_s(30), A_s(29), A_s(28), A_s(27), A_s(26), 
      A_s(25), A_s(24), A_s(23), A_s(22), A_s(21), A_s(20), A_s(19), A_s(18), 
      A_s(17), A_s(16), A_s(15), A_s(14), A_s(13), A_s(12), A_s(11), A_s(10), 
      A_s(9), A_s(8), A_s(7), A_s(6), A_s(5), A_s(4), A_s(3), A_s(2), A_s(1), 
      A_s(0), X_Logic0_port );
   A_nso <= ( A_ns(32), A_ns(31), A_ns(30), A_ns(29), A_ns(28), A_ns(27), 
      A_ns(26), A_ns(25), A_ns(24), A_ns(23), A_ns(22), A_ns(21), A_ns(20), 
      A_ns(19), A_ns(18), A_ns(17), A_ns(16), A_ns(15), A_ns(14), A_ns(13), 
      A_ns(12), A_ns(11), A_ns(10), A_ns(9), A_ns(8), A_ns(7), A_ns(6), A_ns(5)
      , A_ns(4), A_ns(3), A_ns(2), A_ns(1), A_ns(0), X_Logic0_port );
   
   X_Logic0_port <= '0';
   U3 : INV_X2 port map( A => n20, ZN => n6);
   U4 : OR2_X2 port map( A1 => n72, A2 => B(0), ZN => n1);
   U5 : NAND2_X2 port map( A1 => B(0), A2 => n20, ZN => n3);
   U6 : OAI221_X1 port map( B1 => n1, B2 => n2, C1 => n3, C2 => n4, A => n5, ZN
                           => O(9));
   U7 : NAND2_X1 port map( A1 => A_s(9), A2 => n6, ZN => n5);
   U8 : OAI221_X1 port map( B1 => n1, B2 => n7, C1 => n2, C2 => n3, A => n8, ZN
                           => O(8));
   U9 : NAND2_X1 port map( A1 => A_s(8), A2 => n6, ZN => n8);
   U10 : INV_X1 port map( A => A_ns(8), ZN => n2);
   U11 : OAI221_X1 port map( B1 => n1, B2 => n9, C1 => n3, C2 => n7, A => n10, 
                           ZN => O(7));
   U12 : NAND2_X1 port map( A1 => A_s(7), A2 => n6, ZN => n10);
   U13 : INV_X1 port map( A => A_ns(7), ZN => n7);
   U14 : OAI221_X1 port map( B1 => n1, B2 => n11, C1 => n3, C2 => n9, A => n12,
                           ZN => O(6));
   U15 : NAND2_X1 port map( A1 => A_s(6), A2 => n6, ZN => n12);
   U16 : INV_X1 port map( A => A_ns(6), ZN => n9);
   U17 : OAI221_X1 port map( B1 => n1, B2 => n13, C1 => n3, C2 => n11, A => n14
                           , ZN => O(5));
   U18 : NAND2_X1 port map( A1 => A_s(5), A2 => n6, ZN => n14);
   U19 : INV_X1 port map( A => A_ns(5), ZN => n11);
   U20 : OAI221_X1 port map( B1 => n1, B2 => n15, C1 => n3, C2 => n13, A => n16
                           , ZN => O(4));
   U21 : NAND2_X1 port map( A1 => A_s(4), A2 => n6, ZN => n16);
   U22 : INV_X1 port map( A => A_ns(4), ZN => n13);
   U23 : OAI221_X1 port map( B1 => n1, B2 => n17, C1 => n3, C2 => n15, A => n18
                           , ZN => O(3));
   U24 : NAND2_X1 port map( A1 => A_s(3), A2 => n6, ZN => n18);
   U25 : INV_X1 port map( A => A_ns(3), ZN => n15);
   U26 : OAI222_X1 port map( A1 => n19, A2 => n20, B1 => n21, B2 => n1, C1 => 
                           n22, C2 => n3, ZN => O(33));
   U27 : INV_X1 port map( A => A_ns(33), ZN => n22);
   U28 : INV_X1 port map( A => A_s(33), ZN => n19);
   U29 : OAI221_X1 port map( B1 => n1, B2 => n23, C1 => n3, C2 => n21, A => n24
                           , ZN => O(32));
   U30 : NAND2_X1 port map( A1 => A_s(32), A2 => n6, ZN => n24);
   U31 : INV_X1 port map( A => A_ns(32), ZN => n21);
   U32 : OAI221_X1 port map( B1 => n1, B2 => n25, C1 => n3, C2 => n23, A => n26
                           , ZN => O(31));
   U33 : NAND2_X1 port map( A1 => A_s(31), A2 => n6, ZN => n26);
   U34 : INV_X1 port map( A => A_ns(31), ZN => n23);
   U35 : OAI221_X1 port map( B1 => n1, B2 => n27, C1 => n3, C2 => n25, A => n28
                           , ZN => O(30));
   U36 : NAND2_X1 port map( A1 => A_s(30), A2 => n6, ZN => n28);
   U37 : INV_X1 port map( A => A_ns(30), ZN => n25);
   U38 : OAI221_X1 port map( B1 => n1, B2 => n29, C1 => n3, C2 => n17, A => n30
                           , ZN => O(2));
   U39 : NAND2_X1 port map( A1 => A_s(2), A2 => n6, ZN => n30);
   U40 : INV_X1 port map( A => A_ns(2), ZN => n17);
   U41 : OAI221_X1 port map( B1 => n1, B2 => n31, C1 => n3, C2 => n27, A => n32
                           , ZN => O(29));
   U42 : NAND2_X1 port map( A1 => A_s(29), A2 => n6, ZN => n32);
   U43 : INV_X1 port map( A => A_ns(29), ZN => n27);
   U44 : OAI221_X1 port map( B1 => n1, B2 => n33, C1 => n3, C2 => n31, A => n34
                           , ZN => O(28));
   U45 : NAND2_X1 port map( A1 => A_s(28), A2 => n6, ZN => n34);
   U46 : INV_X1 port map( A => A_ns(28), ZN => n31);
   U47 : OAI221_X1 port map( B1 => n1, B2 => n35, C1 => n3, C2 => n33, A => n36
                           , ZN => O(27));
   U48 : NAND2_X1 port map( A1 => A_s(27), A2 => n6, ZN => n36);
   U49 : INV_X1 port map( A => A_ns(27), ZN => n33);
   U50 : OAI221_X1 port map( B1 => n1, B2 => n37, C1 => n3, C2 => n35, A => n38
                           , ZN => O(26));
   U51 : NAND2_X1 port map( A1 => A_s(26), A2 => n6, ZN => n38);
   U52 : INV_X1 port map( A => A_ns(26), ZN => n35);
   U53 : OAI221_X1 port map( B1 => n1, B2 => n39, C1 => n3, C2 => n37, A => n40
                           , ZN => O(25));
   U54 : NAND2_X1 port map( A1 => A_s(25), A2 => n6, ZN => n40);
   U55 : INV_X1 port map( A => A_ns(25), ZN => n37);
   U56 : OAI221_X1 port map( B1 => n1, B2 => n41, C1 => n3, C2 => n39, A => n42
                           , ZN => O(24));
   U57 : NAND2_X1 port map( A1 => A_s(24), A2 => n6, ZN => n42);
   U58 : INV_X1 port map( A => A_ns(24), ZN => n39);
   U59 : OAI221_X1 port map( B1 => n1, B2 => n43, C1 => n3, C2 => n41, A => n44
                           , ZN => O(23));
   U60 : NAND2_X1 port map( A1 => A_s(23), A2 => n6, ZN => n44);
   U61 : INV_X1 port map( A => A_ns(23), ZN => n41);
   U62 : OAI221_X1 port map( B1 => n1, B2 => n45, C1 => n3, C2 => n43, A => n46
                           , ZN => O(22));
   U63 : NAND2_X1 port map( A1 => A_s(22), A2 => n6, ZN => n46);
   U64 : INV_X1 port map( A => A_ns(22), ZN => n43);
   U65 : OAI221_X1 port map( B1 => n1, B2 => n47, C1 => n3, C2 => n45, A => n48
                           , ZN => O(21));
   U66 : NAND2_X1 port map( A1 => A_s(21), A2 => n6, ZN => n48);
   U67 : INV_X1 port map( A => A_ns(21), ZN => n45);
   U68 : OAI221_X1 port map( B1 => n1, B2 => n49, C1 => n3, C2 => n47, A => n50
                           , ZN => O(20));
   U69 : NAND2_X1 port map( A1 => A_s(20), A2 => n6, ZN => n50);
   U70 : INV_X1 port map( A => A_ns(20), ZN => n47);
   U71 : OAI221_X1 port map( B1 => n1, B2 => n51, C1 => n3, C2 => n29, A => n52
                           , ZN => O(1));
   U72 : NAND2_X1 port map( A1 => A_s(1), A2 => n6, ZN => n52);
   U73 : INV_X1 port map( A => A_ns(1), ZN => n29);
   U74 : OAI221_X1 port map( B1 => n1, B2 => n53, C1 => n3, C2 => n49, A => n54
                           , ZN => O(19));
   U75 : NAND2_X1 port map( A1 => A_s(19), A2 => n6, ZN => n54);
   U76 : INV_X1 port map( A => A_ns(19), ZN => n49);
   U77 : OAI221_X1 port map( B1 => n1, B2 => n55, C1 => n3, C2 => n53, A => n56
                           , ZN => O(18));
   U78 : NAND2_X1 port map( A1 => A_s(18), A2 => n6, ZN => n56);
   U79 : INV_X1 port map( A => A_ns(18), ZN => n53);
   U80 : OAI221_X1 port map( B1 => n1, B2 => n57, C1 => n3, C2 => n55, A => n58
                           , ZN => O(17));
   U81 : NAND2_X1 port map( A1 => A_s(17), A2 => n6, ZN => n58);
   U82 : INV_X1 port map( A => A_ns(17), ZN => n55);
   U83 : OAI221_X1 port map( B1 => n1, B2 => n59, C1 => n3, C2 => n57, A => n60
                           , ZN => O(16));
   U84 : NAND2_X1 port map( A1 => A_s(16), A2 => n6, ZN => n60);
   U85 : INV_X1 port map( A => A_ns(16), ZN => n57);
   U86 : OAI221_X1 port map( B1 => n1, B2 => n61, C1 => n3, C2 => n59, A => n62
                           , ZN => O(15));
   U87 : NAND2_X1 port map( A1 => A_s(15), A2 => n6, ZN => n62);
   U88 : INV_X1 port map( A => A_ns(15), ZN => n59);
   U89 : OAI221_X1 port map( B1 => n1, B2 => n63, C1 => n3, C2 => n61, A => n64
                           , ZN => O(14));
   U90 : NAND2_X1 port map( A1 => A_s(14), A2 => n6, ZN => n64);
   U91 : INV_X1 port map( A => A_ns(14), ZN => n61);
   U92 : OAI221_X1 port map( B1 => n1, B2 => n65, C1 => n3, C2 => n63, A => n66
                           , ZN => O(13));
   U93 : NAND2_X1 port map( A1 => A_s(13), A2 => n6, ZN => n66);
   U94 : INV_X1 port map( A => A_ns(13), ZN => n63);
   U95 : OAI221_X1 port map( B1 => n1, B2 => n67, C1 => n3, C2 => n65, A => n68
                           , ZN => O(12));
   U96 : NAND2_X1 port map( A1 => A_s(12), A2 => n6, ZN => n68);
   U97 : INV_X1 port map( A => A_ns(12), ZN => n65);
   U98 : OAI221_X1 port map( B1 => n1, B2 => n69, C1 => n3, C2 => n67, A => n70
                           , ZN => O(11));
   U99 : NAND2_X1 port map( A1 => A_s(11), A2 => n6, ZN => n70);
   U100 : INV_X1 port map( A => A_ns(11), ZN => n67);
   U101 : OAI221_X1 port map( B1 => n1, B2 => n4, C1 => n3, C2 => n69, A => n71
                           , ZN => O(10));
   U102 : NAND2_X1 port map( A1 => A_s(10), A2 => n6, ZN => n71);
   U103 : INV_X1 port map( A => A_ns(10), ZN => n69);
   U104 : INV_X1 port map( A => A_ns(9), ZN => n4);
   U105 : OAI21_X1 port map( B1 => n3, B2 => n51, A => n73, ZN => O(0));
   U106 : NAND2_X1 port map( A1 => A_s(0), A2 => n6, ZN => n73);
   U107 : INV_X1 port map( A => A_ns(0), ZN => n51);
   U108 : NAND2_X1 port map( A1 => B(0), A2 => n72, ZN => n20);
   U109 : INV_X1 port map( A => B(1), ZN => n72);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT32.all;

entity BOOTHMUL_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  S : out std_logic_vector 
         (63 downto 0));

end BOOTHMUL_NBIT32;

architecture SYN_BEHAVIOURAL of BOOTHMUL_NBIT32 is

   component BOOTHMUL_NBIT32_DW01_sub_0
      port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (31 downto 0);  CO : out std_logic);
   end component;
   
   component RCA_NBIT64
      port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (63 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT62
      port( A, B : in std_logic_vector (61 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (61 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT60
      port( A, B : in std_logic_vector (59 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (59 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT58
      port( A, B : in std_logic_vector (57 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (57 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT56
      port( A, B : in std_logic_vector (55 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (55 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT54
      port( A, B : in std_logic_vector (53 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (53 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT52
      port( A, B : in std_logic_vector (51 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (51 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT50
      port( A, B : in std_logic_vector (49 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (49 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT48
      port( A, B : in std_logic_vector (47 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (47 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT46
      port( A, B : in std_logic_vector (45 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (45 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT44
      port( A, B : in std_logic_vector (43 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (43 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT42
      port( A, B : in std_logic_vector (41 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (41 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT40
      port( A, B : in std_logic_vector (39 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (39 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT38
      port( A, B : in std_logic_vector (37 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (37 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT36
      port( A, B : in std_logic_vector (35 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (35 downto 0);  Co : out std_logic);
   end component;
   
   component BOOTHENC_NBIT64_i30
      port( A_s, A_ns, B : in std_logic_vector (63 downto 0);  O, A_so, A_nso :
            out std_logic_vector (63 downto 0));
   end component;
   
   component BOOTHENC_NBIT62_i28
      port( A_s, A_ns, B : in std_logic_vector (61 downto 0);  O, A_so, A_nso :
            out std_logic_vector (61 downto 0));
   end component;
   
   component BOOTHENC_NBIT60_i26
      port( A_s, A_ns, B : in std_logic_vector (59 downto 0);  O, A_so, A_nso :
            out std_logic_vector (59 downto 0));
   end component;
   
   component BOOTHENC_NBIT58_i24
      port( A_s, A_ns, B : in std_logic_vector (57 downto 0);  O, A_so, A_nso :
            out std_logic_vector (57 downto 0));
   end component;
   
   component BOOTHENC_NBIT56_i22
      port( A_s, A_ns, B : in std_logic_vector (55 downto 0);  O, A_so, A_nso :
            out std_logic_vector (55 downto 0));
   end component;
   
   component BOOTHENC_NBIT54_i20
      port( A_s, A_ns, B : in std_logic_vector (53 downto 0);  O, A_so, A_nso :
            out std_logic_vector (53 downto 0));
   end component;
   
   component BOOTHENC_NBIT52_i18
      port( A_s, A_ns, B : in std_logic_vector (51 downto 0);  O, A_so, A_nso :
            out std_logic_vector (51 downto 0));
   end component;
   
   component BOOTHENC_NBIT50_i16
      port( A_s, A_ns, B : in std_logic_vector (49 downto 0);  O, A_so, A_nso :
            out std_logic_vector (49 downto 0));
   end component;
   
   component BOOTHENC_NBIT48_i14
      port( A_s, A_ns, B : in std_logic_vector (47 downto 0);  O, A_so, A_nso :
            out std_logic_vector (47 downto 0));
   end component;
   
   component BOOTHENC_NBIT46_i12
      port( A_s, A_ns, B : in std_logic_vector (45 downto 0);  O, A_so, A_nso :
            out std_logic_vector (45 downto 0));
   end component;
   
   component BOOTHENC_NBIT44_i10
      port( A_s, A_ns, B : in std_logic_vector (43 downto 0);  O, A_so, A_nso :
            out std_logic_vector (43 downto 0));
   end component;
   
   component BOOTHENC_NBIT42_i8
      port( A_s, A_ns, B : in std_logic_vector (41 downto 0);  O, A_so, A_nso :
            out std_logic_vector (41 downto 0));
   end component;
   
   component BOOTHENC_NBIT40_i6
      port( A_s, A_ns, B : in std_logic_vector (39 downto 0);  O, A_so, A_nso :
            out std_logic_vector (39 downto 0));
   end component;
   
   component BOOTHENC_NBIT38_i4
      port( A_s, A_ns, B : in std_logic_vector (37 downto 0);  O, A_so, A_nso :
            out std_logic_vector (37 downto 0));
   end component;
   
   component BOOTHENC_NBIT36_i2
      port( A_s, A_ns, B : in std_logic_vector (35 downto 0);  O, A_so, A_nso :
            out std_logic_vector (35 downto 0));
   end component;
   
   component BOOTHENC_NBIT34_i0
      port( A_s, A_ns, B : in std_logic_vector (33 downto 0);  O, A_so, A_nso :
            out std_logic_vector (33 downto 0));
   end component;
   
   signal X_Logic0_port, A_n_65, A_n_30_port, A_n_29_port, A_n_28_port, 
      A_n_27_port, A_n_26_port, A_n_25_port, A_n_24_port, A_n_23_port, 
      A_n_22_port, A_n_21_port, A_n_20_port, A_n_19_port, A_n_18_port, 
      A_n_17_port, A_n_16_port, A_n_15_port, A_n_14_port, A_n_13_port, 
      A_n_12_port, A_n_11_port, A_n_10_port, A_n_9_port, A_n_8_port, A_n_7_port
      , A_n_6_port, A_n_5_port, A_n_4_port, A_n_3_port, A_n_2_port, A_n_1_port,
      A_n_0_port, SHIFT_1_31_port, SHIFT_1_30_port, SHIFT_1_29_port, 
      SHIFT_1_28_port, SHIFT_1_27_port, SHIFT_1_26_port, SHIFT_1_25_port, 
      SHIFT_1_24_port, SHIFT_1_23_port, SHIFT_1_22_port, SHIFT_1_21_port, 
      SHIFT_1_20_port, SHIFT_1_19_port, SHIFT_1_18_port, SHIFT_1_17_port, 
      SHIFT_1_16_port, SHIFT_1_15_port, SHIFT_1_14_port, SHIFT_1_13_port, 
      SHIFT_1_12_port, SHIFT_1_11_port, SHIFT_1_10_port, SHIFT_1_9_port, 
      SHIFT_1_8_port, SHIFT_1_7_port, SHIFT_1_6_port, SHIFT_1_5_port, 
      SHIFT_1_4_port, SHIFT_1_3_port, SHIFT_1_2_port, SHIFT_1_1_port, 
      SHIFT_1_0_port, SHIFT_15_61_port, SHIFT_15_60_port, SHIFT_15_59_port, 
      SHIFT_15_58_port, SHIFT_15_57_port, SHIFT_15_56_port, SHIFT_15_55_port, 
      SHIFT_15_54_port, SHIFT_15_53_port, SHIFT_15_52_port, SHIFT_15_51_port, 
      SHIFT_15_50_port, SHIFT_15_49_port, SHIFT_15_48_port, SHIFT_15_47_port, 
      SHIFT_15_46_port, SHIFT_15_45_port, SHIFT_15_44_port, SHIFT_15_43_port, 
      SHIFT_15_42_port, SHIFT_15_41_port, SHIFT_15_40_port, SHIFT_15_39_port, 
      SHIFT_15_38_port, SHIFT_15_37_port, SHIFT_15_36_port, SHIFT_15_35_port, 
      SHIFT_15_34_port, SHIFT_15_33_port, SHIFT_15_32_port, SHIFT_15_31_port, 
      SHIFT_15_30_port, SHIFT_15_29_port, SHIFT_15_28_port, SHIFT_15_27_port, 
      SHIFT_15_26_port, SHIFT_15_25_port, SHIFT_15_24_port, SHIFT_15_23_port, 
      SHIFT_15_22_port, SHIFT_15_21_port, SHIFT_15_20_port, SHIFT_15_19_port, 
      SHIFT_15_18_port, SHIFT_15_17_port, SHIFT_15_16_port, SHIFT_15_15_port, 
      SHIFT_15_14_port, SHIFT_15_13_port, SHIFT_15_12_port, SHIFT_15_11_port, 
      SHIFT_15_10_port, SHIFT_15_9_port, SHIFT_15_8_port, SHIFT_15_7_port, 
      SHIFT_15_6_port, SHIFT_15_5_port, SHIFT_15_4_port, SHIFT_15_3_port, 
      SHIFT_15_2_port, SHIFT_15_1_port, SHIFT_15_0_port, SHIFT_14_59_port, 
      SHIFT_14_58_port, SHIFT_14_57_port, SHIFT_14_56_port, SHIFT_14_55_port, 
      SHIFT_14_54_port, SHIFT_14_53_port, SHIFT_14_52_port, SHIFT_14_51_port, 
      SHIFT_14_50_port, SHIFT_14_49_port, SHIFT_14_48_port, SHIFT_14_47_port, 
      SHIFT_14_46_port, SHIFT_14_45_port, SHIFT_14_44_port, SHIFT_14_43_port, 
      SHIFT_14_42_port, SHIFT_14_41_port, SHIFT_14_40_port, SHIFT_14_39_port, 
      SHIFT_14_38_port, SHIFT_14_37_port, SHIFT_14_36_port, SHIFT_14_35_port, 
      SHIFT_14_34_port, SHIFT_14_33_port, SHIFT_14_32_port, SHIFT_14_31_port, 
      SHIFT_14_30_port, SHIFT_14_29_port, SHIFT_14_28_port, SHIFT_14_27_port, 
      SHIFT_14_26_port, SHIFT_14_25_port, SHIFT_14_24_port, SHIFT_14_23_port, 
      SHIFT_14_22_port, SHIFT_14_21_port, SHIFT_14_20_port, SHIFT_14_19_port, 
      SHIFT_14_18_port, SHIFT_14_17_port, SHIFT_14_16_port, SHIFT_14_15_port, 
      SHIFT_14_14_port, SHIFT_14_13_port, SHIFT_14_12_port, SHIFT_14_11_port, 
      SHIFT_14_10_port, SHIFT_14_9_port, SHIFT_14_8_port, SHIFT_14_7_port, 
      SHIFT_14_6_port, SHIFT_14_5_port, SHIFT_14_4_port, SHIFT_14_3_port, 
      SHIFT_14_2_port, SHIFT_14_1_port, SHIFT_14_0_port, SHIFT_13_57_port, 
      SHIFT_13_56_port, SHIFT_13_55_port, SHIFT_13_54_port, SHIFT_13_53_port, 
      SHIFT_13_52_port, SHIFT_13_51_port, SHIFT_13_50_port, SHIFT_13_49_port, 
      SHIFT_13_48_port, SHIFT_13_47_port, SHIFT_13_46_port, SHIFT_13_45_port, 
      SHIFT_13_44_port, SHIFT_13_43_port, SHIFT_13_42_port, SHIFT_13_41_port, 
      SHIFT_13_40_port, SHIFT_13_39_port, SHIFT_13_38_port, SHIFT_13_37_port, 
      SHIFT_13_36_port, SHIFT_13_35_port, SHIFT_13_34_port, SHIFT_13_33_port, 
      SHIFT_13_32_port, SHIFT_13_31_port, SHIFT_13_30_port, SHIFT_13_29_port, 
      SHIFT_13_28_port, SHIFT_13_27_port, SHIFT_13_26_port, SHIFT_13_25_port, 
      SHIFT_13_24_port, SHIFT_13_23_port, SHIFT_13_22_port, SHIFT_13_21_port, 
      SHIFT_13_20_port, SHIFT_13_19_port, SHIFT_13_18_port, SHIFT_13_17_port, 
      SHIFT_13_16_port, SHIFT_13_15_port, SHIFT_13_14_port, SHIFT_13_13_port, 
      SHIFT_13_12_port, SHIFT_13_11_port, SHIFT_13_10_port, SHIFT_13_9_port, 
      SHIFT_13_8_port, SHIFT_13_7_port, SHIFT_13_6_port, SHIFT_13_5_port, 
      SHIFT_13_4_port, SHIFT_13_3_port, SHIFT_13_2_port, SHIFT_13_1_port, 
      SHIFT_13_0_port, SHIFT_12_55_port, SHIFT_12_54_port, SHIFT_12_53_port, 
      SHIFT_12_52_port, SHIFT_12_51_port, SHIFT_12_50_port, SHIFT_12_49_port, 
      SHIFT_12_48_port, SHIFT_12_47_port, SHIFT_12_46_port, SHIFT_12_45_port, 
      SHIFT_12_44_port, SHIFT_12_43_port, SHIFT_12_42_port, SHIFT_12_41_port, 
      SHIFT_12_40_port, SHIFT_12_39_port, SHIFT_12_38_port, SHIFT_12_37_port, 
      SHIFT_12_36_port, SHIFT_12_35_port, SHIFT_12_34_port, SHIFT_12_33_port, 
      SHIFT_12_32_port, SHIFT_12_31_port, SHIFT_12_30_port, SHIFT_12_29_port, 
      SHIFT_12_28_port, SHIFT_12_27_port, SHIFT_12_26_port, SHIFT_12_25_port, 
      SHIFT_12_24_port, SHIFT_12_23_port, SHIFT_12_22_port, SHIFT_12_21_port, 
      SHIFT_12_20_port, SHIFT_12_19_port, SHIFT_12_18_port, SHIFT_12_17_port, 
      SHIFT_12_16_port, SHIFT_12_15_port, SHIFT_12_14_port, SHIFT_12_13_port, 
      SHIFT_12_12_port, SHIFT_12_11_port, SHIFT_12_10_port, SHIFT_12_9_port, 
      SHIFT_12_8_port, SHIFT_12_7_port, SHIFT_12_6_port, SHIFT_12_5_port, 
      SHIFT_12_4_port, SHIFT_12_3_port, SHIFT_12_2_port, SHIFT_12_1_port, 
      SHIFT_12_0_port, SHIFT_11_53_port, SHIFT_11_52_port, SHIFT_11_51_port, 
      SHIFT_11_50_port, SHIFT_11_49_port, SHIFT_11_48_port, SHIFT_11_47_port, 
      SHIFT_11_46_port, SHIFT_11_45_port, SHIFT_11_44_port, SHIFT_11_43_port, 
      SHIFT_11_42_port, SHIFT_11_41_port, SHIFT_11_40_port, SHIFT_11_39_port, 
      SHIFT_11_38_port, SHIFT_11_37_port, SHIFT_11_36_port, SHIFT_11_35_port, 
      SHIFT_11_34_port, SHIFT_11_33_port, SHIFT_11_32_port, SHIFT_11_31_port, 
      SHIFT_11_30_port, SHIFT_11_29_port, SHIFT_11_28_port, SHIFT_11_27_port, 
      SHIFT_11_26_port, SHIFT_11_25_port, SHIFT_11_24_port, SHIFT_11_23_port, 
      SHIFT_11_22_port, SHIFT_11_21_port, SHIFT_11_20_port, SHIFT_11_19_port, 
      SHIFT_11_18_port, SHIFT_11_17_port, SHIFT_11_16_port, SHIFT_11_15_port, 
      SHIFT_11_14_port, SHIFT_11_13_port, SHIFT_11_12_port, SHIFT_11_11_port, 
      SHIFT_11_10_port, SHIFT_11_9_port, SHIFT_11_8_port, SHIFT_11_7_port, 
      SHIFT_11_6_port, SHIFT_11_5_port, SHIFT_11_4_port, SHIFT_11_3_port, 
      SHIFT_11_2_port, SHIFT_11_1_port, SHIFT_11_0_port, SHIFT_10_51_port, 
      SHIFT_10_50_port, SHIFT_10_49_port, SHIFT_10_48_port, SHIFT_10_47_port, 
      SHIFT_10_46_port, SHIFT_10_45_port, SHIFT_10_44_port, SHIFT_10_43_port, 
      SHIFT_10_42_port, SHIFT_10_41_port, SHIFT_10_40_port, SHIFT_10_39_port, 
      SHIFT_10_38_port, SHIFT_10_37_port, SHIFT_10_36_port, SHIFT_10_35_port, 
      SHIFT_10_34_port, SHIFT_10_33_port, SHIFT_10_32_port, SHIFT_10_31_port, 
      SHIFT_10_30_port, SHIFT_10_29_port, SHIFT_10_28_port, SHIFT_10_27_port, 
      SHIFT_10_26_port, SHIFT_10_25_port, SHIFT_10_24_port, SHIFT_10_23_port, 
      SHIFT_10_22_port, SHIFT_10_21_port, SHIFT_10_20_port, SHIFT_10_19_port, 
      SHIFT_10_18_port, SHIFT_10_17_port, SHIFT_10_16_port, SHIFT_10_15_port, 
      SHIFT_10_14_port, SHIFT_10_13_port, SHIFT_10_12_port, SHIFT_10_11_port, 
      SHIFT_10_10_port, SHIFT_10_9_port, SHIFT_10_8_port, SHIFT_10_7_port, 
      SHIFT_10_6_port, SHIFT_10_5_port, SHIFT_10_4_port, SHIFT_10_3_port, 
      SHIFT_10_2_port, SHIFT_10_1_port, SHIFT_10_0_port, SHIFT_9_49_port, 
      SHIFT_9_48_port, SHIFT_9_47_port, SHIFT_9_46_port, SHIFT_9_45_port, 
      SHIFT_9_44_port, SHIFT_9_43_port, SHIFT_9_42_port, SHIFT_9_41_port, 
      SHIFT_9_40_port, SHIFT_9_39_port, SHIFT_9_38_port, SHIFT_9_37_port, 
      SHIFT_9_36_port, SHIFT_9_35_port, SHIFT_9_34_port, SHIFT_9_33_port, 
      SHIFT_9_32_port, SHIFT_9_31_port, SHIFT_9_30_port, SHIFT_9_29_port, 
      SHIFT_9_28_port, SHIFT_9_27_port, SHIFT_9_26_port, SHIFT_9_25_port, 
      SHIFT_9_24_port, SHIFT_9_23_port, SHIFT_9_22_port, SHIFT_9_21_port, 
      SHIFT_9_20_port, SHIFT_9_19_port, SHIFT_9_18_port, SHIFT_9_17_port, 
      SHIFT_9_16_port, SHIFT_9_15_port, SHIFT_9_14_port, SHIFT_9_13_port, 
      SHIFT_9_12_port, SHIFT_9_11_port, SHIFT_9_10_port, SHIFT_9_9_port, 
      SHIFT_9_8_port, SHIFT_9_7_port, SHIFT_9_6_port, SHIFT_9_5_port, 
      SHIFT_9_4_port, SHIFT_9_3_port, SHIFT_9_2_port, SHIFT_9_1_port, 
      SHIFT_9_0_port, SHIFT_8_47_port, SHIFT_8_46_port, SHIFT_8_45_port, 
      SHIFT_8_44_port, SHIFT_8_43_port, SHIFT_8_42_port, SHIFT_8_41_port, 
      SHIFT_8_40_port, SHIFT_8_39_port, SHIFT_8_38_port, SHIFT_8_37_port, 
      SHIFT_8_36_port, SHIFT_8_35_port, SHIFT_8_34_port, SHIFT_8_33_port, 
      SHIFT_8_32_port, SHIFT_8_31_port, SHIFT_8_30_port, SHIFT_8_29_port, 
      SHIFT_8_28_port, SHIFT_8_27_port, SHIFT_8_26_port, SHIFT_8_25_port, 
      SHIFT_8_24_port, SHIFT_8_23_port, SHIFT_8_22_port, SHIFT_8_21_port, 
      SHIFT_8_20_port, SHIFT_8_19_port, SHIFT_8_18_port, SHIFT_8_17_port, 
      SHIFT_8_16_port, SHIFT_8_15_port, SHIFT_8_14_port, SHIFT_8_13_port, 
      SHIFT_8_12_port, SHIFT_8_11_port, SHIFT_8_10_port, SHIFT_8_9_port, 
      SHIFT_8_8_port, SHIFT_8_7_port, SHIFT_8_6_port, SHIFT_8_5_port, 
      SHIFT_8_4_port, SHIFT_8_3_port, SHIFT_8_2_port, SHIFT_8_1_port, 
      SHIFT_8_0_port, SHIFT_7_45_port, SHIFT_7_44_port, SHIFT_7_43_port, 
      SHIFT_7_42_port, SHIFT_7_41_port, SHIFT_7_40_port, SHIFT_7_39_port, 
      SHIFT_7_38_port, SHIFT_7_37_port, SHIFT_7_36_port, SHIFT_7_35_port, 
      SHIFT_7_34_port, SHIFT_7_33_port, SHIFT_7_32_port, SHIFT_7_31_port, 
      SHIFT_7_30_port, SHIFT_7_29_port, SHIFT_7_28_port, SHIFT_7_27_port, 
      SHIFT_7_26_port, SHIFT_7_25_port, SHIFT_7_24_port, SHIFT_7_23_port, 
      SHIFT_7_22_port, SHIFT_7_21_port, SHIFT_7_20_port, SHIFT_7_19_port, 
      SHIFT_7_18_port, SHIFT_7_17_port, SHIFT_7_16_port, SHIFT_7_15_port, 
      SHIFT_7_14_port, SHIFT_7_13_port, SHIFT_7_12_port, SHIFT_7_11_port, 
      SHIFT_7_10_port, SHIFT_7_9_port, SHIFT_7_8_port, SHIFT_7_7_port, 
      SHIFT_7_6_port, SHIFT_7_5_port, SHIFT_7_4_port, SHIFT_7_3_port, 
      SHIFT_7_2_port, SHIFT_7_1_port, SHIFT_7_0_port, SHIFT_6_43_port, 
      SHIFT_6_42_port, SHIFT_6_41_port, SHIFT_6_40_port, SHIFT_6_39_port, 
      SHIFT_6_38_port, SHIFT_6_37_port, SHIFT_6_36_port, SHIFT_6_35_port, 
      SHIFT_6_34_port, SHIFT_6_33_port, SHIFT_6_32_port, SHIFT_6_31_port, 
      SHIFT_6_30_port, SHIFT_6_29_port, SHIFT_6_28_port, SHIFT_6_27_port, 
      SHIFT_6_26_port, SHIFT_6_25_port, SHIFT_6_24_port, SHIFT_6_23_port, 
      SHIFT_6_22_port, SHIFT_6_21_port, SHIFT_6_20_port, SHIFT_6_19_port, 
      SHIFT_6_18_port, SHIFT_6_17_port, SHIFT_6_16_port, SHIFT_6_15_port, 
      SHIFT_6_14_port, SHIFT_6_13_port, SHIFT_6_12_port, SHIFT_6_11_port, 
      SHIFT_6_10_port, SHIFT_6_9_port, SHIFT_6_8_port, SHIFT_6_7_port, 
      SHIFT_6_6_port, SHIFT_6_5_port, SHIFT_6_4_port, SHIFT_6_3_port, 
      SHIFT_6_2_port, SHIFT_6_1_port, SHIFT_6_0_port, SHIFT_5_41_port, 
      SHIFT_5_40_port, SHIFT_5_39_port, SHIFT_5_38_port, SHIFT_5_37_port, 
      SHIFT_5_36_port, SHIFT_5_35_port, SHIFT_5_34_port, SHIFT_5_33_port, 
      SHIFT_5_32_port, SHIFT_5_31_port, SHIFT_5_30_port, SHIFT_5_29_port, 
      SHIFT_5_28_port, SHIFT_5_27_port, SHIFT_5_26_port, SHIFT_5_25_port, 
      SHIFT_5_24_port, SHIFT_5_23_port, SHIFT_5_22_port, SHIFT_5_21_port, 
      SHIFT_5_20_port, SHIFT_5_19_port, SHIFT_5_18_port, SHIFT_5_17_port, 
      SHIFT_5_16_port, SHIFT_5_15_port, SHIFT_5_14_port, SHIFT_5_13_port, 
      SHIFT_5_12_port, SHIFT_5_11_port, SHIFT_5_10_port, SHIFT_5_9_port, 
      SHIFT_5_8_port, SHIFT_5_7_port, SHIFT_5_6_port, SHIFT_5_5_port, 
      SHIFT_5_4_port, SHIFT_5_3_port, SHIFT_5_2_port, SHIFT_5_1_port, 
      SHIFT_5_0_port, SHIFT_4_39_port, SHIFT_4_38_port, SHIFT_4_37_port, 
      SHIFT_4_36_port, SHIFT_4_35_port, SHIFT_4_34_port, SHIFT_4_33_port, 
      SHIFT_4_32_port, SHIFT_4_31_port, SHIFT_4_30_port, SHIFT_4_29_port, 
      SHIFT_4_28_port, SHIFT_4_27_port, SHIFT_4_26_port, SHIFT_4_25_port, 
      SHIFT_4_24_port, SHIFT_4_23_port, SHIFT_4_22_port, SHIFT_4_21_port, 
      SHIFT_4_20_port, SHIFT_4_19_port, SHIFT_4_18_port, SHIFT_4_17_port, 
      SHIFT_4_16_port, SHIFT_4_15_port, SHIFT_4_14_port, SHIFT_4_13_port, 
      SHIFT_4_12_port, SHIFT_4_11_port, SHIFT_4_10_port, SHIFT_4_9_port, 
      SHIFT_4_8_port, SHIFT_4_7_port, SHIFT_4_6_port, SHIFT_4_5_port, 
      SHIFT_4_4_port, SHIFT_4_3_port, SHIFT_4_2_port, SHIFT_4_1_port, 
      SHIFT_4_0_port, SHIFT_3_37_port, SHIFT_3_36_port, SHIFT_3_35_port, 
      SHIFT_3_34_port, SHIFT_3_33_port, SHIFT_3_32_port, SHIFT_3_31_port, 
      SHIFT_3_30_port, SHIFT_3_29_port, SHIFT_3_28_port, SHIFT_3_27_port, 
      SHIFT_3_26_port, SHIFT_3_25_port, SHIFT_3_24_port, SHIFT_3_23_port, 
      SHIFT_3_22_port, SHIFT_3_21_port, SHIFT_3_20_port, SHIFT_3_19_port, 
      SHIFT_3_18_port, SHIFT_3_17_port, SHIFT_3_16_port, SHIFT_3_15_port, 
      SHIFT_3_14_port, SHIFT_3_13_port, SHIFT_3_12_port, SHIFT_3_11_port, 
      SHIFT_3_10_port, SHIFT_3_9_port, SHIFT_3_8_port, SHIFT_3_7_port, 
      SHIFT_3_6_port, SHIFT_3_5_port, SHIFT_3_4_port, SHIFT_3_3_port, 
      SHIFT_3_2_port, SHIFT_3_1_port, SHIFT_3_0_port, SHIFT_2_35_port, 
      SHIFT_2_34_port, SHIFT_2_33_port, SHIFT_2_32_port, SHIFT_2_31_port, 
      SHIFT_2_30_port, SHIFT_2_29_port, SHIFT_2_28_port, SHIFT_2_27_port, 
      SHIFT_2_26_port, SHIFT_2_25_port, SHIFT_2_24_port, SHIFT_2_23_port, 
      SHIFT_2_22_port, SHIFT_2_21_port, SHIFT_2_20_port, SHIFT_2_19_port, 
      SHIFT_2_18_port, SHIFT_2_17_port, SHIFT_2_16_port, SHIFT_2_15_port, 
      SHIFT_2_14_port, SHIFT_2_13_port, SHIFT_2_12_port, SHIFT_2_11_port, 
      SHIFT_2_10_port, SHIFT_2_9_port, SHIFT_2_8_port, SHIFT_2_7_port, 
      SHIFT_2_6_port, SHIFT_2_5_port, SHIFT_2_4_port, SHIFT_2_3_port, 
      SHIFT_2_2_port, SHIFT_2_1_port, SHIFT_2_0_port, SHIFT_1_33_port, 
      SHIFT_1_32_port, SHIFT_n_1_31_port, SHIFT_n_1_30_port, SHIFT_n_1_29_port,
      SHIFT_n_1_28_port, SHIFT_n_1_27_port, SHIFT_n_1_26_port, 
      SHIFT_n_1_25_port, SHIFT_n_1_24_port, SHIFT_n_1_23_port, 
      SHIFT_n_1_22_port, SHIFT_n_1_21_port, SHIFT_n_1_20_port, 
      SHIFT_n_1_19_port, SHIFT_n_1_18_port, SHIFT_n_1_17_port, 
      SHIFT_n_1_16_port, SHIFT_n_1_15_port, SHIFT_n_1_14_port, 
      SHIFT_n_1_13_port, SHIFT_n_1_12_port, SHIFT_n_1_11_port, 
      SHIFT_n_1_10_port, SHIFT_n_1_9_port, SHIFT_n_1_8_port, SHIFT_n_1_7_port, 
      SHIFT_n_1_6_port, SHIFT_n_1_5_port, SHIFT_n_1_4_port, SHIFT_n_1_3_port, 
      SHIFT_n_1_2_port, SHIFT_n_1_1_port, SHIFT_n_1_0_port, SHIFT_n_15_61_port,
      SHIFT_n_15_60_port, SHIFT_n_15_59_port, SHIFT_n_15_58_port, 
      SHIFT_n_15_57_port, SHIFT_n_15_56_port, SHIFT_n_15_55_port, 
      SHIFT_n_15_54_port, SHIFT_n_15_53_port, SHIFT_n_15_52_port, 
      SHIFT_n_15_51_port, SHIFT_n_15_50_port, SHIFT_n_15_49_port, 
      SHIFT_n_15_48_port, SHIFT_n_15_47_port, SHIFT_n_15_46_port, 
      SHIFT_n_15_45_port, SHIFT_n_15_44_port, SHIFT_n_15_43_port, 
      SHIFT_n_15_42_port, SHIFT_n_15_41_port, SHIFT_n_15_40_port, 
      SHIFT_n_15_39_port, SHIFT_n_15_38_port, SHIFT_n_15_37_port, 
      SHIFT_n_15_36_port, SHIFT_n_15_35_port, SHIFT_n_15_34_port, 
      SHIFT_n_15_33_port, SHIFT_n_15_32_port, SHIFT_n_15_31_port, 
      SHIFT_n_15_30_port, SHIFT_n_15_29_port, SHIFT_n_15_28_port, 
      SHIFT_n_15_27_port, SHIFT_n_15_26_port, SHIFT_n_15_25_port, 
      SHIFT_n_15_24_port, SHIFT_n_15_23_port, SHIFT_n_15_22_port, 
      SHIFT_n_15_21_port, SHIFT_n_15_20_port, SHIFT_n_15_19_port, 
      SHIFT_n_15_18_port, SHIFT_n_15_17_port, SHIFT_n_15_16_port, 
      SHIFT_n_15_15_port, SHIFT_n_15_14_port, SHIFT_n_15_13_port, 
      SHIFT_n_15_12_port, SHIFT_n_15_11_port, SHIFT_n_15_10_port, 
      SHIFT_n_15_9_port, SHIFT_n_15_8_port, SHIFT_n_15_7_port, 
      SHIFT_n_15_6_port, SHIFT_n_15_5_port, SHIFT_n_15_4_port, 
      SHIFT_n_15_3_port, SHIFT_n_15_2_port, SHIFT_n_15_1_port, 
      SHIFT_n_15_0_port, SHIFT_n_14_59_port, SHIFT_n_14_58_port, 
      SHIFT_n_14_57_port, SHIFT_n_14_56_port, SHIFT_n_14_55_port, 
      SHIFT_n_14_54_port, SHIFT_n_14_53_port, SHIFT_n_14_52_port, 
      SHIFT_n_14_51_port, SHIFT_n_14_50_port, SHIFT_n_14_49_port, 
      SHIFT_n_14_48_port, SHIFT_n_14_47_port, SHIFT_n_14_46_port, 
      SHIFT_n_14_45_port, SHIFT_n_14_44_port, SHIFT_n_14_43_port, 
      SHIFT_n_14_42_port, SHIFT_n_14_41_port, SHIFT_n_14_40_port, 
      SHIFT_n_14_39_port, SHIFT_n_14_38_port, SHIFT_n_14_37_port, 
      SHIFT_n_14_36_port, SHIFT_n_14_35_port, SHIFT_n_14_34_port, 
      SHIFT_n_14_33_port, SHIFT_n_14_32_port, SHIFT_n_14_31_port, 
      SHIFT_n_14_30_port, SHIFT_n_14_29_port, SHIFT_n_14_28_port, 
      SHIFT_n_14_27_port, SHIFT_n_14_26_port, SHIFT_n_14_25_port, 
      SHIFT_n_14_24_port, SHIFT_n_14_23_port, SHIFT_n_14_22_port, 
      SHIFT_n_14_21_port, SHIFT_n_14_20_port, SHIFT_n_14_19_port, 
      SHIFT_n_14_18_port, SHIFT_n_14_17_port, SHIFT_n_14_16_port, 
      SHIFT_n_14_15_port, SHIFT_n_14_14_port, SHIFT_n_14_13_port, 
      SHIFT_n_14_12_port, SHIFT_n_14_11_port, SHIFT_n_14_10_port, 
      SHIFT_n_14_9_port, SHIFT_n_14_8_port, SHIFT_n_14_7_port, 
      SHIFT_n_14_6_port, SHIFT_n_14_5_port, SHIFT_n_14_4_port, 
      SHIFT_n_14_3_port, SHIFT_n_14_2_port, SHIFT_n_14_1_port, 
      SHIFT_n_14_0_port, SHIFT_n_13_57_port, SHIFT_n_13_56_port, 
      SHIFT_n_13_55_port, SHIFT_n_13_54_port, SHIFT_n_13_53_port, 
      SHIFT_n_13_52_port, SHIFT_n_13_51_port, SHIFT_n_13_50_port, 
      SHIFT_n_13_49_port, SHIFT_n_13_48_port, SHIFT_n_13_47_port, 
      SHIFT_n_13_46_port, SHIFT_n_13_45_port, SHIFT_n_13_44_port, 
      SHIFT_n_13_43_port, SHIFT_n_13_42_port, SHIFT_n_13_41_port, 
      SHIFT_n_13_40_port, SHIFT_n_13_39_port, SHIFT_n_13_38_port, 
      SHIFT_n_13_37_port, SHIFT_n_13_36_port, SHIFT_n_13_35_port, 
      SHIFT_n_13_34_port, SHIFT_n_13_33_port, SHIFT_n_13_32_port, 
      SHIFT_n_13_31_port, SHIFT_n_13_30_port, SHIFT_n_13_29_port, 
      SHIFT_n_13_28_port, SHIFT_n_13_27_port, SHIFT_n_13_26_port, 
      SHIFT_n_13_25_port, SHIFT_n_13_24_port, SHIFT_n_13_23_port, 
      SHIFT_n_13_22_port, SHIFT_n_13_21_port, SHIFT_n_13_20_port, 
      SHIFT_n_13_19_port, SHIFT_n_13_18_port, SHIFT_n_13_17_port, 
      SHIFT_n_13_16_port, SHIFT_n_13_15_port, SHIFT_n_13_14_port, 
      SHIFT_n_13_13_port, SHIFT_n_13_12_port, SHIFT_n_13_11_port, 
      SHIFT_n_13_10_port, SHIFT_n_13_9_port, SHIFT_n_13_8_port, 
      SHIFT_n_13_7_port, SHIFT_n_13_6_port, SHIFT_n_13_5_port, 
      SHIFT_n_13_4_port, SHIFT_n_13_3_port, SHIFT_n_13_2_port, 
      SHIFT_n_13_1_port, SHIFT_n_13_0_port, SHIFT_n_12_55_port, 
      SHIFT_n_12_54_port, SHIFT_n_12_53_port, SHIFT_n_12_52_port, 
      SHIFT_n_12_51_port, SHIFT_n_12_50_port, SHIFT_n_12_49_port, 
      SHIFT_n_12_48_port, SHIFT_n_12_47_port, SHIFT_n_12_46_port, 
      SHIFT_n_12_45_port, SHIFT_n_12_44_port, SHIFT_n_12_43_port, 
      SHIFT_n_12_42_port, SHIFT_n_12_41_port, SHIFT_n_12_40_port, 
      SHIFT_n_12_39_port, SHIFT_n_12_38_port, SHIFT_n_12_37_port, 
      SHIFT_n_12_36_port, SHIFT_n_12_35_port, SHIFT_n_12_34_port, 
      SHIFT_n_12_33_port, SHIFT_n_12_32_port, SHIFT_n_12_31_port, 
      SHIFT_n_12_30_port, SHIFT_n_12_29_port, SHIFT_n_12_28_port, 
      SHIFT_n_12_27_port, SHIFT_n_12_26_port, SHIFT_n_12_25_port, 
      SHIFT_n_12_24_port, SHIFT_n_12_23_port, SHIFT_n_12_22_port, 
      SHIFT_n_12_21_port, SHIFT_n_12_20_port, SHIFT_n_12_19_port, 
      SHIFT_n_12_18_port, SHIFT_n_12_17_port, SHIFT_n_12_16_port, 
      SHIFT_n_12_15_port, SHIFT_n_12_14_port, SHIFT_n_12_13_port, 
      SHIFT_n_12_12_port, SHIFT_n_12_11_port, SHIFT_n_12_10_port, 
      SHIFT_n_12_9_port, SHIFT_n_12_8_port, SHIFT_n_12_7_port, 
      SHIFT_n_12_6_port, SHIFT_n_12_5_port, SHIFT_n_12_4_port, 
      SHIFT_n_12_3_port, SHIFT_n_12_2_port, SHIFT_n_12_1_port, 
      SHIFT_n_12_0_port, SHIFT_n_11_53_port, SHIFT_n_11_52_port, 
      SHIFT_n_11_51_port, SHIFT_n_11_50_port, SHIFT_n_11_49_port, 
      SHIFT_n_11_48_port, SHIFT_n_11_47_port, SHIFT_n_11_46_port, 
      SHIFT_n_11_45_port, SHIFT_n_11_44_port, SHIFT_n_11_43_port, 
      SHIFT_n_11_42_port, SHIFT_n_11_41_port, SHIFT_n_11_40_port, 
      SHIFT_n_11_39_port, SHIFT_n_11_38_port, SHIFT_n_11_37_port, 
      SHIFT_n_11_36_port, SHIFT_n_11_35_port, SHIFT_n_11_34_port, 
      SHIFT_n_11_33_port, SHIFT_n_11_32_port, SHIFT_n_11_31_port, 
      SHIFT_n_11_30_port, SHIFT_n_11_29_port, SHIFT_n_11_28_port, 
      SHIFT_n_11_27_port, SHIFT_n_11_26_port, SHIFT_n_11_25_port, 
      SHIFT_n_11_24_port, SHIFT_n_11_23_port, SHIFT_n_11_22_port, 
      SHIFT_n_11_21_port, SHIFT_n_11_20_port, SHIFT_n_11_19_port, 
      SHIFT_n_11_18_port, SHIFT_n_11_17_port, SHIFT_n_11_16_port, 
      SHIFT_n_11_15_port, SHIFT_n_11_14_port, SHIFT_n_11_13_port, 
      SHIFT_n_11_12_port, SHIFT_n_11_11_port, SHIFT_n_11_10_port, 
      SHIFT_n_11_9_port, SHIFT_n_11_8_port, SHIFT_n_11_7_port, 
      SHIFT_n_11_6_port, SHIFT_n_11_5_port, SHIFT_n_11_4_port, 
      SHIFT_n_11_3_port, SHIFT_n_11_2_port, SHIFT_n_11_1_port, 
      SHIFT_n_11_0_port, SHIFT_n_10_51_port, SHIFT_n_10_50_port, 
      SHIFT_n_10_49_port, SHIFT_n_10_48_port, SHIFT_n_10_47_port, 
      SHIFT_n_10_46_port, SHIFT_n_10_45_port, SHIFT_n_10_44_port, 
      SHIFT_n_10_43_port, SHIFT_n_10_42_port, SHIFT_n_10_41_port, 
      SHIFT_n_10_40_port, SHIFT_n_10_39_port, SHIFT_n_10_38_port, 
      SHIFT_n_10_37_port, SHIFT_n_10_36_port, SHIFT_n_10_35_port, 
      SHIFT_n_10_34_port, SHIFT_n_10_33_port, SHIFT_n_10_32_port, 
      SHIFT_n_10_31_port, SHIFT_n_10_30_port, SHIFT_n_10_29_port, 
      SHIFT_n_10_28_port, SHIFT_n_10_27_port, SHIFT_n_10_26_port, 
      SHIFT_n_10_25_port, SHIFT_n_10_24_port, SHIFT_n_10_23_port, 
      SHIFT_n_10_22_port, SHIFT_n_10_21_port, SHIFT_n_10_20_port, 
      SHIFT_n_10_19_port, SHIFT_n_10_18_port, SHIFT_n_10_17_port, 
      SHIFT_n_10_16_port, SHIFT_n_10_15_port, SHIFT_n_10_14_port, 
      SHIFT_n_10_13_port, SHIFT_n_10_12_port, SHIFT_n_10_11_port, 
      SHIFT_n_10_10_port, SHIFT_n_10_9_port, SHIFT_n_10_8_port, 
      SHIFT_n_10_7_port, SHIFT_n_10_6_port, SHIFT_n_10_5_port, 
      SHIFT_n_10_4_port, SHIFT_n_10_3_port, SHIFT_n_10_2_port, 
      SHIFT_n_10_1_port, SHIFT_n_10_0_port, SHIFT_n_9_49_port, 
      SHIFT_n_9_48_port, SHIFT_n_9_47_port, SHIFT_n_9_46_port, 
      SHIFT_n_9_45_port, SHIFT_n_9_44_port, SHIFT_n_9_43_port, 
      SHIFT_n_9_42_port, SHIFT_n_9_41_port, SHIFT_n_9_40_port, 
      SHIFT_n_9_39_port, SHIFT_n_9_38_port, SHIFT_n_9_37_port, 
      SHIFT_n_9_36_port, SHIFT_n_9_35_port, SHIFT_n_9_34_port, 
      SHIFT_n_9_33_port, SHIFT_n_9_32_port, SHIFT_n_9_31_port, 
      SHIFT_n_9_30_port, SHIFT_n_9_29_port, SHIFT_n_9_28_port, 
      SHIFT_n_9_27_port, SHIFT_n_9_26_port, SHIFT_n_9_25_port, 
      SHIFT_n_9_24_port, SHIFT_n_9_23_port, SHIFT_n_9_22_port, 
      SHIFT_n_9_21_port, SHIFT_n_9_20_port, SHIFT_n_9_19_port, 
      SHIFT_n_9_18_port, SHIFT_n_9_17_port, SHIFT_n_9_16_port, 
      SHIFT_n_9_15_port, SHIFT_n_9_14_port, SHIFT_n_9_13_port, 
      SHIFT_n_9_12_port, SHIFT_n_9_11_port, SHIFT_n_9_10_port, SHIFT_n_9_9_port
      , SHIFT_n_9_8_port, SHIFT_n_9_7_port, SHIFT_n_9_6_port, SHIFT_n_9_5_port,
      SHIFT_n_9_4_port, SHIFT_n_9_3_port, SHIFT_n_9_2_port, SHIFT_n_9_1_port, 
      SHIFT_n_9_0_port, SHIFT_n_8_47_port, SHIFT_n_8_46_port, SHIFT_n_8_45_port
      , SHIFT_n_8_44_port, SHIFT_n_8_43_port, SHIFT_n_8_42_port, 
      SHIFT_n_8_41_port, SHIFT_n_8_40_port, SHIFT_n_8_39_port, 
      SHIFT_n_8_38_port, SHIFT_n_8_37_port, SHIFT_n_8_36_port, 
      SHIFT_n_8_35_port, SHIFT_n_8_34_port, SHIFT_n_8_33_port, 
      SHIFT_n_8_32_port, SHIFT_n_8_31_port, SHIFT_n_8_30_port, 
      SHIFT_n_8_29_port, SHIFT_n_8_28_port, SHIFT_n_8_27_port, 
      SHIFT_n_8_26_port, SHIFT_n_8_25_port, SHIFT_n_8_24_port, 
      SHIFT_n_8_23_port, SHIFT_n_8_22_port, SHIFT_n_8_21_port, 
      SHIFT_n_8_20_port, SHIFT_n_8_19_port, SHIFT_n_8_18_port, 
      SHIFT_n_8_17_port, SHIFT_n_8_16_port, SHIFT_n_8_15_port, 
      SHIFT_n_8_14_port, SHIFT_n_8_13_port, SHIFT_n_8_12_port, 
      SHIFT_n_8_11_port, SHIFT_n_8_10_port, SHIFT_n_8_9_port, SHIFT_n_8_8_port,
      SHIFT_n_8_7_port, SHIFT_n_8_6_port, SHIFT_n_8_5_port, SHIFT_n_8_4_port, 
      SHIFT_n_8_3_port, SHIFT_n_8_2_port, SHIFT_n_8_1_port, SHIFT_n_8_0_port, 
      SHIFT_n_7_45_port, SHIFT_n_7_44_port, SHIFT_n_7_43_port, 
      SHIFT_n_7_42_port, SHIFT_n_7_41_port, SHIFT_n_7_40_port, 
      SHIFT_n_7_39_port, SHIFT_n_7_38_port, SHIFT_n_7_37_port, 
      SHIFT_n_7_36_port, SHIFT_n_7_35_port, SHIFT_n_7_34_port, 
      SHIFT_n_7_33_port, SHIFT_n_7_32_port, SHIFT_n_7_31_port, 
      SHIFT_n_7_30_port, SHIFT_n_7_29_port, SHIFT_n_7_28_port, 
      SHIFT_n_7_27_port, SHIFT_n_7_26_port, SHIFT_n_7_25_port, 
      SHIFT_n_7_24_port, SHIFT_n_7_23_port, SHIFT_n_7_22_port, 
      SHIFT_n_7_21_port, SHIFT_n_7_20_port, SHIFT_n_7_19_port, 
      SHIFT_n_7_18_port, SHIFT_n_7_17_port, SHIFT_n_7_16_port, 
      SHIFT_n_7_15_port, SHIFT_n_7_14_port, SHIFT_n_7_13_port, 
      SHIFT_n_7_12_port, SHIFT_n_7_11_port, SHIFT_n_7_10_port, SHIFT_n_7_9_port
      , SHIFT_n_7_8_port, SHIFT_n_7_7_port, SHIFT_n_7_6_port, SHIFT_n_7_5_port,
      SHIFT_n_7_4_port, SHIFT_n_7_3_port, SHIFT_n_7_2_port, SHIFT_n_7_1_port, 
      SHIFT_n_7_0_port, SHIFT_n_6_43_port, SHIFT_n_6_42_port, SHIFT_n_6_41_port
      , SHIFT_n_6_40_port, SHIFT_n_6_39_port, SHIFT_n_6_38_port, 
      SHIFT_n_6_37_port, SHIFT_n_6_36_port, SHIFT_n_6_35_port, 
      SHIFT_n_6_34_port, SHIFT_n_6_33_port, SHIFT_n_6_32_port, 
      SHIFT_n_6_31_port, SHIFT_n_6_30_port, SHIFT_n_6_29_port, 
      SHIFT_n_6_28_port, SHIFT_n_6_27_port, SHIFT_n_6_26_port, 
      SHIFT_n_6_25_port, SHIFT_n_6_24_port, SHIFT_n_6_23_port, 
      SHIFT_n_6_22_port, SHIFT_n_6_21_port, SHIFT_n_6_20_port, 
      SHIFT_n_6_19_port, SHIFT_n_6_18_port, SHIFT_n_6_17_port, 
      SHIFT_n_6_16_port, SHIFT_n_6_15_port, SHIFT_n_6_14_port, 
      SHIFT_n_6_13_port, SHIFT_n_6_12_port, SHIFT_n_6_11_port, 
      SHIFT_n_6_10_port, SHIFT_n_6_9_port, SHIFT_n_6_8_port, SHIFT_n_6_7_port, 
      SHIFT_n_6_6_port, SHIFT_n_6_5_port, SHIFT_n_6_4_port, SHIFT_n_6_3_port, 
      SHIFT_n_6_2_port, SHIFT_n_6_1_port, SHIFT_n_6_0_port, SHIFT_n_5_41_port, 
      SHIFT_n_5_40_port, SHIFT_n_5_39_port, SHIFT_n_5_38_port, 
      SHIFT_n_5_37_port, SHIFT_n_5_36_port, SHIFT_n_5_35_port, 
      SHIFT_n_5_34_port, SHIFT_n_5_33_port, SHIFT_n_5_32_port, 
      SHIFT_n_5_31_port, SHIFT_n_5_30_port, SHIFT_n_5_29_port, 
      SHIFT_n_5_28_port, SHIFT_n_5_27_port, SHIFT_n_5_26_port, 
      SHIFT_n_5_25_port, SHIFT_n_5_24_port, SHIFT_n_5_23_port, 
      SHIFT_n_5_22_port, SHIFT_n_5_21_port, SHIFT_n_5_20_port, 
      SHIFT_n_5_19_port, SHIFT_n_5_18_port, SHIFT_n_5_17_port, 
      SHIFT_n_5_16_port, SHIFT_n_5_15_port, SHIFT_n_5_14_port, 
      SHIFT_n_5_13_port, SHIFT_n_5_12_port, SHIFT_n_5_11_port, 
      SHIFT_n_5_10_port, SHIFT_n_5_9_port, SHIFT_n_5_8_port, SHIFT_n_5_7_port, 
      SHIFT_n_5_6_port, SHIFT_n_5_5_port, SHIFT_n_5_4_port, SHIFT_n_5_3_port, 
      SHIFT_n_5_2_port, SHIFT_n_5_1_port, SHIFT_n_5_0_port, SHIFT_n_4_39_port, 
      SHIFT_n_4_38_port, SHIFT_n_4_37_port, SHIFT_n_4_36_port, 
      SHIFT_n_4_35_port, SHIFT_n_4_34_port, SHIFT_n_4_33_port, 
      SHIFT_n_4_32_port, SHIFT_n_4_31_port, SHIFT_n_4_30_port, 
      SHIFT_n_4_29_port, SHIFT_n_4_28_port, SHIFT_n_4_27_port, 
      SHIFT_n_4_26_port, SHIFT_n_4_25_port, SHIFT_n_4_24_port, 
      SHIFT_n_4_23_port, SHIFT_n_4_22_port, SHIFT_n_4_21_port, 
      SHIFT_n_4_20_port, SHIFT_n_4_19_port, SHIFT_n_4_18_port, 
      SHIFT_n_4_17_port, SHIFT_n_4_16_port, SHIFT_n_4_15_port, 
      SHIFT_n_4_14_port, SHIFT_n_4_13_port, SHIFT_n_4_12_port, 
      SHIFT_n_4_11_port, SHIFT_n_4_10_port, SHIFT_n_4_9_port, SHIFT_n_4_8_port,
      SHIFT_n_4_7_port, SHIFT_n_4_6_port, SHIFT_n_4_5_port, SHIFT_n_4_4_port, 
      SHIFT_n_4_3_port, SHIFT_n_4_2_port, SHIFT_n_4_1_port, SHIFT_n_4_0_port, 
      SHIFT_n_3_37_port, SHIFT_n_3_36_port, SHIFT_n_3_35_port, 
      SHIFT_n_3_34_port, SHIFT_n_3_33_port, SHIFT_n_3_32_port, 
      SHIFT_n_3_31_port, SHIFT_n_3_30_port, SHIFT_n_3_29_port, 
      SHIFT_n_3_28_port, SHIFT_n_3_27_port, SHIFT_n_3_26_port, 
      SHIFT_n_3_25_port, SHIFT_n_3_24_port, SHIFT_n_3_23_port, 
      SHIFT_n_3_22_port, SHIFT_n_3_21_port, SHIFT_n_3_20_port, 
      SHIFT_n_3_19_port, SHIFT_n_3_18_port, SHIFT_n_3_17_port, 
      SHIFT_n_3_16_port, SHIFT_n_3_15_port, SHIFT_n_3_14_port, 
      SHIFT_n_3_13_port, SHIFT_n_3_12_port, SHIFT_n_3_11_port, 
      SHIFT_n_3_10_port, SHIFT_n_3_9_port, SHIFT_n_3_8_port, SHIFT_n_3_7_port, 
      SHIFT_n_3_6_port, SHIFT_n_3_5_port, SHIFT_n_3_4_port, SHIFT_n_3_3_port, 
      SHIFT_n_3_2_port, SHIFT_n_3_1_port, SHIFT_n_3_0_port, SHIFT_n_2_35_port, 
      SHIFT_n_2_34_port, SHIFT_n_2_33_port, SHIFT_n_2_32_port, 
      SHIFT_n_2_31_port, SHIFT_n_2_30_port, SHIFT_n_2_29_port, 
      SHIFT_n_2_28_port, SHIFT_n_2_27_port, SHIFT_n_2_26_port, 
      SHIFT_n_2_25_port, SHIFT_n_2_24_port, SHIFT_n_2_23_port, 
      SHIFT_n_2_22_port, SHIFT_n_2_21_port, SHIFT_n_2_20_port, 
      SHIFT_n_2_19_port, SHIFT_n_2_18_port, SHIFT_n_2_17_port, 
      SHIFT_n_2_16_port, SHIFT_n_2_15_port, SHIFT_n_2_14_port, 
      SHIFT_n_2_13_port, SHIFT_n_2_12_port, SHIFT_n_2_11_port, 
      SHIFT_n_2_10_port, SHIFT_n_2_9_port, SHIFT_n_2_8_port, SHIFT_n_2_7_port, 
      SHIFT_n_2_6_port, SHIFT_n_2_5_port, SHIFT_n_2_4_port, SHIFT_n_2_3_port, 
      SHIFT_n_2_2_port, SHIFT_n_2_1_port, SHIFT_n_2_0_port, SHIFT_n_1_33_port, 
      SHIFT_n_1_32_port, OTMP_8_15_port, OTMP_8_14_port, OTMP_8_13_port, 
      OTMP_8_12_port, OTMP_8_11_port, OTMP_8_10_port, OTMP_8_9_port, 
      OTMP_8_8_port, OTMP_8_7_port, OTMP_8_6_port, OTMP_8_5_port, OTMP_8_4_port
      , OTMP_8_3_port, OTMP_8_2_port, OTMP_8_1_port, OTMP_8_0_port, 
      OTMP_7_47_port, OTMP_7_46_port, OTMP_7_45_port, OTMP_7_44_port, 
      OTMP_7_43_port, OTMP_7_42_port, OTMP_7_41_port, OTMP_7_40_port, 
      OTMP_7_39_port, OTMP_7_38_port, OTMP_7_37_port, OTMP_7_36_port, 
      OTMP_7_35_port, OTMP_7_34_port, OTMP_7_33_port, OTMP_7_32_port, 
      OTMP_7_31_port, OTMP_7_30_port, OTMP_7_29_port, OTMP_7_28_port, 
      OTMP_7_27_port, OTMP_7_26_port, OTMP_7_25_port, OTMP_7_24_port, 
      OTMP_7_23_port, OTMP_7_22_port, OTMP_7_21_port, OTMP_7_20_port, 
      OTMP_7_19_port, OTMP_7_18_port, OTMP_7_17_port, OTMP_7_16_port, 
      OTMP_7_15_port, OTMP_7_14_port, OTMP_7_13_port, OTMP_7_12_port, 
      OTMP_7_11_port, OTMP_7_10_port, OTMP_7_9_port, OTMP_7_8_port, 
      OTMP_7_7_port, OTMP_7_6_port, OTMP_7_5_port, OTMP_7_4_port, OTMP_7_3_port
      , OTMP_7_2_port, OTMP_7_1_port, OTMP_7_0_port, OTMP_6_45_port, 
      OTMP_6_44_port, OTMP_6_43_port, OTMP_6_42_port, OTMP_6_41_port, 
      OTMP_6_40_port, OTMP_6_39_port, OTMP_6_38_port, OTMP_6_37_port, 
      OTMP_6_36_port, OTMP_6_35_port, OTMP_6_34_port, OTMP_6_33_port, 
      OTMP_6_32_port, OTMP_6_31_port, OTMP_6_30_port, OTMP_6_29_port, 
      OTMP_6_28_port, OTMP_6_27_port, OTMP_6_26_port, OTMP_6_25_port, 
      OTMP_6_24_port, OTMP_6_23_port, OTMP_6_22_port, OTMP_6_21_port, 
      OTMP_6_20_port, OTMP_6_19_port, OTMP_6_18_port, OTMP_6_17_port, 
      OTMP_6_16_port, OTMP_6_15_port, OTMP_6_14_port, OTMP_6_13_port, 
      OTMP_6_12_port, OTMP_6_11_port, OTMP_6_10_port, OTMP_6_9_port, 
      OTMP_6_8_port, OTMP_6_7_port, OTMP_6_6_port, OTMP_6_5_port, OTMP_6_4_port
      , OTMP_6_3_port, OTMP_6_2_port, OTMP_6_1_port, OTMP_6_0_port, 
      OTMP_5_43_port, OTMP_5_42_port, OTMP_5_41_port, OTMP_5_40_port, 
      OTMP_5_39_port, OTMP_5_38_port, OTMP_5_37_port, OTMP_5_36_port, 
      OTMP_5_35_port, OTMP_5_34_port, OTMP_5_33_port, OTMP_5_32_port, 
      OTMP_5_31_port, OTMP_5_30_port, OTMP_5_29_port, OTMP_5_28_port, 
      OTMP_5_27_port, OTMP_5_26_port, OTMP_5_25_port, OTMP_5_24_port, 
      OTMP_5_23_port, OTMP_5_22_port, OTMP_5_21_port, OTMP_5_20_port, 
      OTMP_5_19_port, OTMP_5_18_port, OTMP_5_17_port, OTMP_5_16_port, 
      OTMP_5_15_port, OTMP_5_14_port, OTMP_5_13_port, OTMP_5_12_port, 
      OTMP_5_11_port, OTMP_5_10_port, OTMP_5_9_port, OTMP_5_8_port, 
      OTMP_5_7_port, OTMP_5_6_port, OTMP_5_5_port, OTMP_5_4_port, OTMP_5_3_port
      , OTMP_5_2_port, OTMP_5_1_port, OTMP_5_0_port, OTMP_4_41_port, 
      OTMP_4_40_port, OTMP_4_39_port, OTMP_4_38_port, OTMP_4_37_port, 
      OTMP_4_36_port, OTMP_4_35_port, OTMP_4_34_port, OTMP_4_33_port, 
      OTMP_4_32_port, OTMP_4_31_port, OTMP_4_30_port, OTMP_4_29_port, 
      OTMP_4_28_port, OTMP_4_27_port, OTMP_4_26_port, OTMP_4_25_port, 
      OTMP_4_24_port, OTMP_4_23_port, OTMP_4_22_port, OTMP_4_21_port, 
      OTMP_4_20_port, OTMP_4_19_port, OTMP_4_18_port, OTMP_4_17_port, 
      OTMP_4_16_port, OTMP_4_15_port, OTMP_4_14_port, OTMP_4_13_port, 
      OTMP_4_12_port, OTMP_4_11_port, OTMP_4_10_port, OTMP_4_9_port, 
      OTMP_4_8_port, OTMP_4_7_port, OTMP_4_6_port, OTMP_4_5_port, OTMP_4_4_port
      , OTMP_4_3_port, OTMP_4_2_port, OTMP_4_1_port, OTMP_4_0_port, 
      OTMP_3_39_port, OTMP_3_38_port, OTMP_3_37_port, OTMP_3_36_port, 
      OTMP_3_35_port, OTMP_3_34_port, OTMP_3_33_port, OTMP_3_32_port, 
      OTMP_3_31_port, OTMP_3_30_port, OTMP_3_29_port, OTMP_3_28_port, 
      OTMP_3_27_port, OTMP_3_26_port, OTMP_3_25_port, OTMP_3_24_port, 
      OTMP_3_23_port, OTMP_3_22_port, OTMP_3_21_port, OTMP_3_20_port, 
      OTMP_3_19_port, OTMP_3_18_port, OTMP_3_17_port, OTMP_3_16_port, 
      OTMP_3_15_port, OTMP_3_14_port, OTMP_3_13_port, OTMP_3_12_port, 
      OTMP_3_11_port, OTMP_3_10_port, OTMP_3_9_port, OTMP_3_8_port, 
      OTMP_3_7_port, OTMP_3_6_port, OTMP_3_5_port, OTMP_3_4_port, OTMP_3_3_port
      , OTMP_3_2_port, OTMP_3_1_port, OTMP_3_0_port, OTMP_2_37_port, 
      OTMP_2_36_port, OTMP_2_35_port, OTMP_2_34_port, OTMP_2_33_port, 
      OTMP_2_32_port, OTMP_2_31_port, OTMP_2_30_port, OTMP_2_29_port, 
      OTMP_2_28_port, OTMP_2_27_port, OTMP_2_26_port, OTMP_2_25_port, 
      OTMP_2_24_port, OTMP_2_23_port, OTMP_2_22_port, OTMP_2_21_port, 
      OTMP_2_20_port, OTMP_2_19_port, OTMP_2_18_port, OTMP_2_17_port, 
      OTMP_2_16_port, OTMP_2_15_port, OTMP_2_14_port, OTMP_2_13_port, 
      OTMP_2_12_port, OTMP_2_11_port, OTMP_2_10_port, OTMP_2_9_port, 
      OTMP_2_8_port, OTMP_2_7_port, OTMP_2_6_port, OTMP_2_5_port, OTMP_2_4_port
      , OTMP_2_3_port, OTMP_2_2_port, OTMP_2_1_port, OTMP_2_0_port, 
      OTMP_1_35_port, OTMP_1_34_port, OTMP_1_33_port, OTMP_1_32_port, 
      OTMP_1_31_port, OTMP_1_30_port, OTMP_1_29_port, OTMP_1_28_port, 
      OTMP_1_27_port, OTMP_1_26_port, OTMP_1_25_port, OTMP_1_24_port, 
      OTMP_1_23_port, OTMP_1_22_port, OTMP_1_21_port, OTMP_1_20_port, 
      OTMP_1_19_port, OTMP_1_18_port, OTMP_1_17_port, OTMP_1_16_port, 
      OTMP_1_15_port, OTMP_1_14_port, OTMP_1_13_port, OTMP_1_12_port, 
      OTMP_1_11_port, OTMP_1_10_port, OTMP_1_9_port, OTMP_1_8_port, 
      OTMP_1_7_port, OTMP_1_6_port, OTMP_1_5_port, OTMP_1_4_port, OTMP_1_3_port
      , OTMP_1_2_port, OTMP_1_1_port, OTMP_1_0_port, OTMP_0_34_port, 
      OTMP_0_32_port, OTMP_0_31_port, OTMP_0_30_port, OTMP_0_29_port, 
      OTMP_0_28_port, OTMP_0_27_port, OTMP_0_26_port, OTMP_0_25_port, 
      OTMP_0_24_port, OTMP_0_23_port, OTMP_0_22_port, OTMP_0_21_port, 
      OTMP_0_20_port, OTMP_0_19_port, OTMP_0_18_port, OTMP_0_17_port, 
      OTMP_0_16_port, OTMP_0_15_port, OTMP_0_14_port, OTMP_0_13_port, 
      OTMP_0_12_port, OTMP_0_11_port, OTMP_0_10_port, OTMP_0_9_port, 
      OTMP_0_8_port, OTMP_0_7_port, OTMP_0_6_port, OTMP_0_5_port, OTMP_0_4_port
      , OTMP_0_3_port, OTMP_0_2_port, OTMP_0_1_port, OTMP_0_0_port, 
      OTMP_15_63_port, OTMP_15_62_port, OTMP_15_61_port, OTMP_15_60_port, 
      OTMP_15_59_port, OTMP_15_58_port, OTMP_15_57_port, OTMP_15_56_port, 
      OTMP_15_55_port, OTMP_15_54_port, OTMP_15_53_port, OTMP_15_52_port, 
      OTMP_15_51_port, OTMP_15_50_port, OTMP_15_49_port, OTMP_15_48_port, 
      OTMP_15_47_port, OTMP_15_46_port, OTMP_15_45_port, OTMP_15_44_port, 
      OTMP_15_43_port, OTMP_15_42_port, OTMP_15_41_port, OTMP_15_40_port, 
      OTMP_15_39_port, OTMP_15_38_port, OTMP_15_37_port, OTMP_15_36_port, 
      OTMP_15_35_port, OTMP_15_34_port, OTMP_15_33_port, OTMP_15_32_port, 
      OTMP_15_31_port, OTMP_15_30_port, OTMP_15_29_port, OTMP_15_28_port, 
      OTMP_15_27_port, OTMP_15_26_port, OTMP_15_25_port, OTMP_15_24_port, 
      OTMP_15_23_port, OTMP_15_22_port, OTMP_15_21_port, OTMP_15_20_port, 
      OTMP_15_19_port, OTMP_15_18_port, OTMP_15_17_port, OTMP_15_16_port, 
      OTMP_15_15_port, OTMP_15_14_port, OTMP_15_13_port, OTMP_15_12_port, 
      OTMP_15_11_port, OTMP_15_10_port, OTMP_15_9_port, OTMP_15_8_port, 
      OTMP_15_7_port, OTMP_15_6_port, OTMP_15_5_port, OTMP_15_4_port, 
      OTMP_15_3_port, OTMP_15_2_port, OTMP_15_1_port, OTMP_15_0_port, 
      OTMP_14_61_port, OTMP_14_60_port, OTMP_14_59_port, OTMP_14_58_port, 
      OTMP_14_57_port, OTMP_14_56_port, OTMP_14_55_port, OTMP_14_54_port, 
      OTMP_14_53_port, OTMP_14_52_port, OTMP_14_51_port, OTMP_14_50_port, 
      OTMP_14_49_port, OTMP_14_48_port, OTMP_14_47_port, OTMP_14_46_port, 
      OTMP_14_45_port, OTMP_14_44_port, OTMP_14_43_port, OTMP_14_42_port, 
      OTMP_14_41_port, OTMP_14_40_port, OTMP_14_39_port, OTMP_14_38_port, 
      OTMP_14_37_port, OTMP_14_36_port, OTMP_14_35_port, OTMP_14_34_port, 
      OTMP_14_33_port, OTMP_14_32_port, OTMP_14_31_port, OTMP_14_30_port, 
      OTMP_14_29_port, OTMP_14_28_port, OTMP_14_27_port, OTMP_14_26_port, 
      OTMP_14_25_port, OTMP_14_24_port, OTMP_14_23_port, OTMP_14_22_port, 
      OTMP_14_21_port, OTMP_14_20_port, OTMP_14_19_port, OTMP_14_18_port, 
      OTMP_14_17_port, OTMP_14_16_port, OTMP_14_15_port, OTMP_14_14_port, 
      OTMP_14_13_port, OTMP_14_12_port, OTMP_14_11_port, OTMP_14_10_port, 
      OTMP_14_9_port, OTMP_14_8_port, OTMP_14_7_port, OTMP_14_6_port, 
      OTMP_14_5_port, OTMP_14_4_port, OTMP_14_3_port, OTMP_14_2_port, 
      OTMP_14_1_port, OTMP_14_0_port, OTMP_13_59_port, OTMP_13_58_port, 
      OTMP_13_57_port, OTMP_13_56_port, OTMP_13_55_port, OTMP_13_54_port, 
      OTMP_13_53_port, OTMP_13_52_port, OTMP_13_51_port, OTMP_13_50_port, 
      OTMP_13_49_port, OTMP_13_48_port, OTMP_13_47_port, OTMP_13_46_port, 
      OTMP_13_45_port, OTMP_13_44_port, OTMP_13_43_port, OTMP_13_42_port, 
      OTMP_13_41_port, OTMP_13_40_port, OTMP_13_39_port, OTMP_13_38_port, 
      OTMP_13_37_port, OTMP_13_36_port, OTMP_13_35_port, OTMP_13_34_port, 
      OTMP_13_33_port, OTMP_13_32_port, OTMP_13_31_port, OTMP_13_30_port, 
      OTMP_13_29_port, OTMP_13_28_port, OTMP_13_27_port, OTMP_13_26_port, 
      OTMP_13_25_port, OTMP_13_24_port, OTMP_13_23_port, OTMP_13_22_port, 
      OTMP_13_21_port, OTMP_13_20_port, OTMP_13_19_port, OTMP_13_18_port, 
      OTMP_13_17_port, OTMP_13_16_port, OTMP_13_15_port, OTMP_13_14_port, 
      OTMP_13_13_port, OTMP_13_12_port, OTMP_13_11_port, OTMP_13_10_port, 
      OTMP_13_9_port, OTMP_13_8_port, OTMP_13_7_port, OTMP_13_6_port, 
      OTMP_13_5_port, OTMP_13_4_port, OTMP_13_3_port, OTMP_13_2_port, 
      OTMP_13_1_port, OTMP_13_0_port, OTMP_12_57_port, OTMP_12_56_port, 
      OTMP_12_55_port, OTMP_12_54_port, OTMP_12_53_port, OTMP_12_52_port, 
      OTMP_12_51_port, OTMP_12_50_port, OTMP_12_49_port, OTMP_12_48_port, 
      OTMP_12_47_port, OTMP_12_46_port, OTMP_12_45_port, OTMP_12_44_port, 
      OTMP_12_43_port, OTMP_12_42_port, OTMP_12_41_port, OTMP_12_40_port, 
      OTMP_12_39_port, OTMP_12_38_port, OTMP_12_37_port, OTMP_12_36_port, 
      OTMP_12_35_port, OTMP_12_34_port, OTMP_12_33_port, OTMP_12_32_port, 
      OTMP_12_31_port, OTMP_12_30_port, OTMP_12_29_port, OTMP_12_28_port, 
      OTMP_12_27_port, OTMP_12_26_port, OTMP_12_25_port, OTMP_12_24_port, 
      OTMP_12_23_port, OTMP_12_22_port, OTMP_12_21_port, OTMP_12_20_port, 
      OTMP_12_19_port, OTMP_12_18_port, OTMP_12_17_port, OTMP_12_16_port, 
      OTMP_12_15_port, OTMP_12_14_port, OTMP_12_13_port, OTMP_12_12_port, 
      OTMP_12_11_port, OTMP_12_10_port, OTMP_12_9_port, OTMP_12_8_port, 
      OTMP_12_7_port, OTMP_12_6_port, OTMP_12_5_port, OTMP_12_4_port, 
      OTMP_12_3_port, OTMP_12_2_port, OTMP_12_1_port, OTMP_12_0_port, 
      OTMP_11_55_port, OTMP_11_54_port, OTMP_11_53_port, OTMP_11_52_port, 
      OTMP_11_51_port, OTMP_11_50_port, OTMP_11_49_port, OTMP_11_48_port, 
      OTMP_11_47_port, OTMP_11_46_port, OTMP_11_45_port, OTMP_11_44_port, 
      OTMP_11_43_port, OTMP_11_42_port, OTMP_11_41_port, OTMP_11_40_port, 
      OTMP_11_39_port, OTMP_11_38_port, OTMP_11_37_port, OTMP_11_36_port, 
      OTMP_11_35_port, OTMP_11_34_port, OTMP_11_33_port, OTMP_11_32_port, 
      OTMP_11_31_port, OTMP_11_30_port, OTMP_11_29_port, OTMP_11_28_port, 
      OTMP_11_27_port, OTMP_11_26_port, OTMP_11_25_port, OTMP_11_24_port, 
      OTMP_11_23_port, OTMP_11_22_port, OTMP_11_21_port, OTMP_11_20_port, 
      OTMP_11_19_port, OTMP_11_18_port, OTMP_11_17_port, OTMP_11_16_port, 
      OTMP_11_15_port, OTMP_11_14_port, OTMP_11_13_port, OTMP_11_12_port, 
      OTMP_11_11_port, OTMP_11_10_port, OTMP_11_9_port, OTMP_11_8_port, 
      OTMP_11_7_port, OTMP_11_6_port, OTMP_11_5_port, OTMP_11_4_port, 
      OTMP_11_3_port, OTMP_11_2_port, OTMP_11_1_port, OTMP_11_0_port, 
      OTMP_10_53_port, OTMP_10_52_port, OTMP_10_51_port, OTMP_10_50_port, 
      OTMP_10_49_port, OTMP_10_48_port, OTMP_10_47_port, OTMP_10_46_port, 
      OTMP_10_45_port, OTMP_10_44_port, OTMP_10_43_port, OTMP_10_42_port, 
      OTMP_10_41_port, OTMP_10_40_port, OTMP_10_39_port, OTMP_10_38_port, 
      OTMP_10_37_port, OTMP_10_36_port, OTMP_10_35_port, OTMP_10_34_port, 
      OTMP_10_33_port, OTMP_10_32_port, OTMP_10_31_port, OTMP_10_30_port, 
      OTMP_10_29_port, OTMP_10_28_port, OTMP_10_27_port, OTMP_10_26_port, 
      OTMP_10_25_port, OTMP_10_24_port, OTMP_10_23_port, OTMP_10_22_port, 
      OTMP_10_21_port, OTMP_10_20_port, OTMP_10_19_port, OTMP_10_18_port, 
      OTMP_10_17_port, OTMP_10_16_port, OTMP_10_15_port, OTMP_10_14_port, 
      OTMP_10_13_port, OTMP_10_12_port, OTMP_10_11_port, OTMP_10_10_port, 
      OTMP_10_9_port, OTMP_10_8_port, OTMP_10_7_port, OTMP_10_6_port, 
      OTMP_10_5_port, OTMP_10_4_port, OTMP_10_3_port, OTMP_10_2_port, 
      OTMP_10_1_port, OTMP_10_0_port, OTMP_9_51_port, OTMP_9_50_port, 
      OTMP_9_49_port, OTMP_9_48_port, OTMP_9_47_port, OTMP_9_46_port, 
      OTMP_9_45_port, OTMP_9_44_port, OTMP_9_43_port, OTMP_9_42_port, 
      OTMP_9_41_port, OTMP_9_40_port, OTMP_9_39_port, OTMP_9_38_port, 
      OTMP_9_37_port, OTMP_9_36_port, OTMP_9_35_port, OTMP_9_34_port, 
      OTMP_9_33_port, OTMP_9_32_port, OTMP_9_31_port, OTMP_9_30_port, 
      OTMP_9_29_port, OTMP_9_28_port, OTMP_9_27_port, OTMP_9_26_port, 
      OTMP_9_25_port, OTMP_9_24_port, OTMP_9_23_port, OTMP_9_22_port, 
      OTMP_9_21_port, OTMP_9_20_port, OTMP_9_19_port, OTMP_9_18_port, 
      OTMP_9_17_port, OTMP_9_16_port, OTMP_9_15_port, OTMP_9_14_port, 
      OTMP_9_13_port, OTMP_9_12_port, OTMP_9_11_port, OTMP_9_10_port, 
      OTMP_9_9_port, OTMP_9_8_port, OTMP_9_7_port, OTMP_9_6_port, OTMP_9_5_port
      , OTMP_9_4_port, OTMP_9_3_port, OTMP_9_2_port, OTMP_9_1_port, 
      OTMP_9_0_port, OTMP_8_49_port, OTMP_8_48_port, OTMP_8_47_port, 
      OTMP_8_46_port, OTMP_8_45_port, OTMP_8_44_port, OTMP_8_43_port, 
      OTMP_8_42_port, OTMP_8_41_port, OTMP_8_40_port, OTMP_8_39_port, 
      OTMP_8_38_port, OTMP_8_37_port, OTMP_8_36_port, OTMP_8_35_port, 
      OTMP_8_34_port, OTMP_8_33_port, OTMP_8_32_port, OTMP_8_31_port, 
      OTMP_8_30_port, OTMP_8_29_port, OTMP_8_28_port, OTMP_8_27_port, 
      OTMP_8_26_port, OTMP_8_25_port, OTMP_8_24_port, OTMP_8_23_port, 
      OTMP_8_22_port, OTMP_8_21_port, OTMP_8_20_port, OTMP_8_19_port, 
      OTMP_8_18_port, OTMP_8_17_port, OTMP_8_16_port, PTMP_8_15_port, 
      PTMP_8_14_port, PTMP_8_13_port, PTMP_8_12_port, PTMP_8_11_port, 
      PTMP_8_10_port, PTMP_8_9_port, PTMP_8_8_port, PTMP_8_7_port, 
      PTMP_8_6_port, PTMP_8_5_port, PTMP_8_4_port, PTMP_8_3_port, PTMP_8_2_port
      , PTMP_8_1_port, PTMP_8_0_port, PTMP_7_49_port, PTMP_7_48_port, 
      PTMP_7_47_port, PTMP_7_46_port, PTMP_7_45_port, PTMP_7_44_port, 
      PTMP_7_43_port, PTMP_7_42_port, PTMP_7_41_port, PTMP_7_40_port, 
      PTMP_7_39_port, PTMP_7_38_port, PTMP_7_37_port, PTMP_7_36_port, 
      PTMP_7_35_port, PTMP_7_34_port, PTMP_7_33_port, PTMP_7_32_port, 
      PTMP_7_31_port, PTMP_7_30_port, PTMP_7_29_port, PTMP_7_28_port, 
      PTMP_7_27_port, PTMP_7_26_port, PTMP_7_25_port, PTMP_7_24_port, 
      PTMP_7_23_port, PTMP_7_22_port, PTMP_7_21_port, PTMP_7_20_port, 
      PTMP_7_19_port, PTMP_7_18_port, PTMP_7_17_port, PTMP_7_16_port, 
      PTMP_7_15_port, PTMP_7_14_port, PTMP_7_13_port, PTMP_7_12_port, 
      PTMP_7_11_port, PTMP_7_10_port, PTMP_7_9_port, PTMP_7_8_port, 
      PTMP_7_7_port, PTMP_7_6_port, PTMP_7_5_port, PTMP_7_4_port, PTMP_7_3_port
      , PTMP_7_2_port, PTMP_7_1_port, PTMP_7_0_port, PTMP_6_47_port, 
      PTMP_6_46_port, PTMP_6_45_port, PTMP_6_44_port, PTMP_6_43_port, 
      PTMP_6_42_port, PTMP_6_41_port, PTMP_6_40_port, PTMP_6_39_port, 
      PTMP_6_38_port, PTMP_6_37_port, PTMP_6_36_port, PTMP_6_35_port, 
      PTMP_6_34_port, PTMP_6_33_port, PTMP_6_32_port, PTMP_6_31_port, 
      PTMP_6_30_port, PTMP_6_29_port, PTMP_6_28_port, PTMP_6_27_port, 
      PTMP_6_26_port, PTMP_6_25_port, PTMP_6_24_port, PTMP_6_23_port, 
      PTMP_6_22_port, PTMP_6_21_port, PTMP_6_20_port, PTMP_6_19_port, 
      PTMP_6_18_port, PTMP_6_17_port, PTMP_6_16_port, PTMP_6_15_port, 
      PTMP_6_14_port, PTMP_6_13_port, PTMP_6_12_port, PTMP_6_11_port, 
      PTMP_6_10_port, PTMP_6_9_port, PTMP_6_8_port, PTMP_6_7_port, 
      PTMP_6_6_port, PTMP_6_5_port, PTMP_6_4_port, PTMP_6_3_port, PTMP_6_2_port
      , PTMP_6_1_port, PTMP_6_0_port, PTMP_5_45_port, PTMP_5_44_port, 
      PTMP_5_43_port, PTMP_5_42_port, PTMP_5_41_port, PTMP_5_40_port, 
      PTMP_5_39_port, PTMP_5_38_port, PTMP_5_37_port, PTMP_5_36_port, 
      PTMP_5_35_port, PTMP_5_34_port, PTMP_5_33_port, PTMP_5_32_port, 
      PTMP_5_31_port, PTMP_5_30_port, PTMP_5_29_port, PTMP_5_28_port, 
      PTMP_5_27_port, PTMP_5_26_port, PTMP_5_25_port, PTMP_5_24_port, 
      PTMP_5_23_port, PTMP_5_22_port, PTMP_5_21_port, PTMP_5_20_port, 
      PTMP_5_19_port, PTMP_5_18_port, PTMP_5_17_port, PTMP_5_16_port, 
      PTMP_5_15_port, PTMP_5_14_port, PTMP_5_13_port, PTMP_5_12_port, 
      PTMP_5_11_port, PTMP_5_10_port, PTMP_5_9_port, PTMP_5_8_port, 
      PTMP_5_7_port, PTMP_5_6_port, PTMP_5_5_port, PTMP_5_4_port, PTMP_5_3_port
      , PTMP_5_2_port, PTMP_5_1_port, PTMP_5_0_port, PTMP_4_43_port, 
      PTMP_4_42_port, PTMP_4_41_port, PTMP_4_40_port, PTMP_4_39_port, 
      PTMP_4_38_port, PTMP_4_37_port, PTMP_4_36_port, PTMP_4_35_port, 
      PTMP_4_34_port, PTMP_4_33_port, PTMP_4_32_port, PTMP_4_31_port, 
      PTMP_4_30_port, PTMP_4_29_port, PTMP_4_28_port, PTMP_4_27_port, 
      PTMP_4_26_port, PTMP_4_25_port, PTMP_4_24_port, PTMP_4_23_port, 
      PTMP_4_22_port, PTMP_4_21_port, PTMP_4_20_port, PTMP_4_19_port, 
      PTMP_4_18_port, PTMP_4_17_port, PTMP_4_16_port, PTMP_4_15_port, 
      PTMP_4_14_port, PTMP_4_13_port, PTMP_4_12_port, PTMP_4_11_port, 
      PTMP_4_10_port, PTMP_4_9_port, PTMP_4_8_port, PTMP_4_7_port, 
      PTMP_4_6_port, PTMP_4_5_port, PTMP_4_4_port, PTMP_4_3_port, PTMP_4_2_port
      , PTMP_4_1_port, PTMP_4_0_port, PTMP_3_41_port, PTMP_3_40_port, 
      PTMP_3_39_port, PTMP_3_38_port, PTMP_3_37_port, PTMP_3_36_port, 
      PTMP_3_35_port, PTMP_3_34_port, PTMP_3_33_port, PTMP_3_32_port, 
      PTMP_3_31_port, PTMP_3_30_port, PTMP_3_29_port, PTMP_3_28_port, 
      PTMP_3_27_port, PTMP_3_26_port, PTMP_3_25_port, PTMP_3_24_port, 
      PTMP_3_23_port, PTMP_3_22_port, PTMP_3_21_port, PTMP_3_20_port, 
      PTMP_3_19_port, PTMP_3_18_port, PTMP_3_17_port, PTMP_3_16_port, 
      PTMP_3_15_port, PTMP_3_14_port, PTMP_3_13_port, PTMP_3_12_port, 
      PTMP_3_11_port, PTMP_3_10_port, PTMP_3_9_port, PTMP_3_8_port, 
      PTMP_3_7_port, PTMP_3_6_port, PTMP_3_5_port, PTMP_3_4_port, PTMP_3_3_port
      , PTMP_3_2_port, PTMP_3_1_port, PTMP_3_0_port, PTMP_2_39_port, 
      PTMP_2_38_port, PTMP_2_37_port, PTMP_2_36_port, PTMP_2_35_port, 
      PTMP_2_34_port, PTMP_2_33_port, PTMP_2_32_port, PTMP_2_31_port, 
      PTMP_2_30_port, PTMP_2_29_port, PTMP_2_28_port, PTMP_2_27_port, 
      PTMP_2_26_port, PTMP_2_25_port, PTMP_2_24_port, PTMP_2_23_port, 
      PTMP_2_22_port, PTMP_2_21_port, PTMP_2_20_port, PTMP_2_19_port, 
      PTMP_2_18_port, PTMP_2_17_port, PTMP_2_16_port, PTMP_2_15_port, 
      PTMP_2_14_port, PTMP_2_13_port, PTMP_2_12_port, PTMP_2_11_port, 
      PTMP_2_10_port, PTMP_2_9_port, PTMP_2_8_port, PTMP_2_7_port, 
      PTMP_2_6_port, PTMP_2_5_port, PTMP_2_4_port, PTMP_2_3_port, PTMP_2_2_port
      , PTMP_2_1_port, PTMP_2_0_port, PTMP_1_37_port, PTMP_1_36_port, 
      PTMP_1_35_port, PTMP_1_34_port, PTMP_1_33_port, PTMP_1_32_port, 
      PTMP_1_31_port, PTMP_1_30_port, PTMP_1_29_port, PTMP_1_28_port, 
      PTMP_1_27_port, PTMP_1_26_port, PTMP_1_25_port, PTMP_1_24_port, 
      PTMP_1_23_port, PTMP_1_22_port, PTMP_1_21_port, PTMP_1_20_port, 
      PTMP_1_19_port, PTMP_1_18_port, PTMP_1_17_port, PTMP_1_16_port, 
      PTMP_1_15_port, PTMP_1_14_port, PTMP_1_13_port, PTMP_1_12_port, 
      PTMP_1_11_port, PTMP_1_10_port, PTMP_1_9_port, PTMP_1_8_port, 
      PTMP_1_7_port, PTMP_1_6_port, PTMP_1_5_port, PTMP_1_4_port, PTMP_1_3_port
      , PTMP_1_2_port, PTMP_1_1_port, PTMP_1_0_port, PTMP_0_36_port, 
      PTMP_0_34_port, PTMP_0_33_port, PTMP_0_32_port, PTMP_0_31_port, 
      PTMP_0_30_port, PTMP_0_29_port, PTMP_0_28_port, PTMP_0_27_port, 
      PTMP_0_26_port, PTMP_0_25_port, PTMP_0_24_port, PTMP_0_23_port, 
      PTMP_0_22_port, PTMP_0_21_port, PTMP_0_20_port, PTMP_0_19_port, 
      PTMP_0_18_port, PTMP_0_17_port, PTMP_0_16_port, PTMP_0_15_port, 
      PTMP_0_14_port, PTMP_0_13_port, PTMP_0_12_port, PTMP_0_11_port, 
      PTMP_0_10_port, PTMP_0_9_port, PTMP_0_8_port, PTMP_0_7_port, 
      PTMP_0_6_port, PTMP_0_5_port, PTMP_0_4_port, PTMP_0_3_port, PTMP_0_2_port
      , PTMP_0_1_port, PTMP_0_0_port, PTMP_13_61_port, PTMP_13_60_port, 
      PTMP_13_59_port, PTMP_13_58_port, PTMP_13_57_port, PTMP_13_56_port, 
      PTMP_13_55_port, PTMP_13_54_port, PTMP_13_53_port, PTMP_13_52_port, 
      PTMP_13_51_port, PTMP_13_50_port, PTMP_13_49_port, PTMP_13_48_port, 
      PTMP_13_47_port, PTMP_13_46_port, PTMP_13_45_port, PTMP_13_44_port, 
      PTMP_13_43_port, PTMP_13_42_port, PTMP_13_41_port, PTMP_13_40_port, 
      PTMP_13_39_port, PTMP_13_38_port, PTMP_13_37_port, PTMP_13_36_port, 
      PTMP_13_35_port, PTMP_13_34_port, PTMP_13_33_port, PTMP_13_32_port, 
      PTMP_13_31_port, PTMP_13_30_port, PTMP_13_29_port, PTMP_13_28_port, 
      PTMP_13_27_port, PTMP_13_26_port, PTMP_13_25_port, PTMP_13_24_port, 
      PTMP_13_23_port, PTMP_13_22_port, PTMP_13_21_port, PTMP_13_20_port, 
      PTMP_13_19_port, PTMP_13_18_port, PTMP_13_17_port, PTMP_13_16_port, 
      PTMP_13_15_port, PTMP_13_14_port, PTMP_13_13_port, PTMP_13_12_port, 
      PTMP_13_11_port, PTMP_13_10_port, PTMP_13_9_port, PTMP_13_8_port, 
      PTMP_13_7_port, PTMP_13_6_port, PTMP_13_5_port, PTMP_13_4_port, 
      PTMP_13_3_port, PTMP_13_2_port, PTMP_13_1_port, PTMP_13_0_port, 
      PTMP_12_59_port, PTMP_12_58_port, PTMP_12_57_port, PTMP_12_56_port, 
      PTMP_12_55_port, PTMP_12_54_port, PTMP_12_53_port, PTMP_12_52_port, 
      PTMP_12_51_port, PTMP_12_50_port, PTMP_12_49_port, PTMP_12_48_port, 
      PTMP_12_47_port, PTMP_12_46_port, PTMP_12_45_port, PTMP_12_44_port, 
      PTMP_12_43_port, PTMP_12_42_port, PTMP_12_41_port, PTMP_12_40_port, 
      PTMP_12_39_port, PTMP_12_38_port, PTMP_12_37_port, PTMP_12_36_port, 
      PTMP_12_35_port, PTMP_12_34_port, PTMP_12_33_port, PTMP_12_32_port, 
      PTMP_12_31_port, PTMP_12_30_port, PTMP_12_29_port, PTMP_12_28_port, 
      PTMP_12_27_port, PTMP_12_26_port, PTMP_12_25_port, PTMP_12_24_port, 
      PTMP_12_23_port, PTMP_12_22_port, PTMP_12_21_port, PTMP_12_20_port, 
      PTMP_12_19_port, PTMP_12_18_port, PTMP_12_17_port, PTMP_12_16_port, 
      PTMP_12_15_port, PTMP_12_14_port, PTMP_12_13_port, PTMP_12_12_port, 
      PTMP_12_11_port, PTMP_12_10_port, PTMP_12_9_port, PTMP_12_8_port, 
      PTMP_12_7_port, PTMP_12_6_port, PTMP_12_5_port, PTMP_12_4_port, 
      PTMP_12_3_port, PTMP_12_2_port, PTMP_12_1_port, PTMP_12_0_port, 
      PTMP_11_57_port, PTMP_11_56_port, PTMP_11_55_port, PTMP_11_54_port, 
      PTMP_11_53_port, PTMP_11_52_port, PTMP_11_51_port, PTMP_11_50_port, 
      PTMP_11_49_port, PTMP_11_48_port, PTMP_11_47_port, PTMP_11_46_port, 
      PTMP_11_45_port, PTMP_11_44_port, PTMP_11_43_port, PTMP_11_42_port, 
      PTMP_11_41_port, PTMP_11_40_port, PTMP_11_39_port, PTMP_11_38_port, 
      PTMP_11_37_port, PTMP_11_36_port, PTMP_11_35_port, PTMP_11_34_port, 
      PTMP_11_33_port, PTMP_11_32_port, PTMP_11_31_port, PTMP_11_30_port, 
      PTMP_11_29_port, PTMP_11_28_port, PTMP_11_27_port, PTMP_11_26_port, 
      PTMP_11_25_port, PTMP_11_24_port, PTMP_11_23_port, PTMP_11_22_port, 
      PTMP_11_21_port, PTMP_11_20_port, PTMP_11_19_port, PTMP_11_18_port, 
      PTMP_11_17_port, PTMP_11_16_port, PTMP_11_15_port, PTMP_11_14_port, 
      PTMP_11_13_port, PTMP_11_12_port, PTMP_11_11_port, PTMP_11_10_port, 
      PTMP_11_9_port, PTMP_11_8_port, PTMP_11_7_port, PTMP_11_6_port, 
      PTMP_11_5_port, PTMP_11_4_port, PTMP_11_3_port, PTMP_11_2_port, 
      PTMP_11_1_port, PTMP_11_0_port, PTMP_10_55_port, PTMP_10_54_port, 
      PTMP_10_53_port, PTMP_10_52_port, PTMP_10_51_port, PTMP_10_50_port, 
      PTMP_10_49_port, PTMP_10_48_port, PTMP_10_47_port, PTMP_10_46_port, 
      PTMP_10_45_port, PTMP_10_44_port, PTMP_10_43_port, PTMP_10_42_port, 
      PTMP_10_41_port, PTMP_10_40_port, PTMP_10_39_port, PTMP_10_38_port, 
      PTMP_10_37_port, PTMP_10_36_port, PTMP_10_35_port, PTMP_10_34_port, 
      PTMP_10_33_port, PTMP_10_32_port, PTMP_10_31_port, PTMP_10_30_port, 
      PTMP_10_29_port, PTMP_10_28_port, PTMP_10_27_port, PTMP_10_26_port, 
      PTMP_10_25_port, PTMP_10_24_port, PTMP_10_23_port, PTMP_10_22_port, 
      PTMP_10_21_port, PTMP_10_20_port, PTMP_10_19_port, PTMP_10_18_port, 
      PTMP_10_17_port, PTMP_10_16_port, PTMP_10_15_port, PTMP_10_14_port, 
      PTMP_10_13_port, PTMP_10_12_port, PTMP_10_11_port, PTMP_10_10_port, 
      PTMP_10_9_port, PTMP_10_8_port, PTMP_10_7_port, PTMP_10_6_port, 
      PTMP_10_5_port, PTMP_10_4_port, PTMP_10_3_port, PTMP_10_2_port, 
      PTMP_10_1_port, PTMP_10_0_port, PTMP_9_53_port, PTMP_9_52_port, 
      PTMP_9_51_port, PTMP_9_50_port, PTMP_9_49_port, PTMP_9_48_port, 
      PTMP_9_47_port, PTMP_9_46_port, PTMP_9_45_port, PTMP_9_44_port, 
      PTMP_9_43_port, PTMP_9_42_port, PTMP_9_41_port, PTMP_9_40_port, 
      PTMP_9_39_port, PTMP_9_38_port, PTMP_9_37_port, PTMP_9_36_port, 
      PTMP_9_35_port, PTMP_9_34_port, PTMP_9_33_port, PTMP_9_32_port, 
      PTMP_9_31_port, PTMP_9_30_port, PTMP_9_29_port, PTMP_9_28_port, 
      PTMP_9_27_port, PTMP_9_26_port, PTMP_9_25_port, PTMP_9_24_port, 
      PTMP_9_23_port, PTMP_9_22_port, PTMP_9_21_port, PTMP_9_20_port, 
      PTMP_9_19_port, PTMP_9_18_port, PTMP_9_17_port, PTMP_9_16_port, 
      PTMP_9_15_port, PTMP_9_14_port, PTMP_9_13_port, PTMP_9_12_port, 
      PTMP_9_11_port, PTMP_9_10_port, PTMP_9_9_port, PTMP_9_8_port, 
      PTMP_9_7_port, PTMP_9_6_port, PTMP_9_5_port, PTMP_9_4_port, PTMP_9_3_port
      , PTMP_9_2_port, PTMP_9_1_port, PTMP_9_0_port, PTMP_8_51_port, 
      PTMP_8_50_port, PTMP_8_49_port, PTMP_8_48_port, PTMP_8_47_port, 
      PTMP_8_46_port, PTMP_8_45_port, PTMP_8_44_port, PTMP_8_43_port, 
      PTMP_8_42_port, PTMP_8_41_port, PTMP_8_40_port, PTMP_8_39_port, 
      PTMP_8_38_port, PTMP_8_37_port, PTMP_8_36_port, PTMP_8_35_port, 
      PTMP_8_34_port, PTMP_8_33_port, PTMP_8_32_port, PTMP_8_31_port, 
      PTMP_8_30_port, PTMP_8_29_port, PTMP_8_28_port, PTMP_8_27_port, 
      PTMP_8_26_port, PTMP_8_25_port, PTMP_8_24_port, PTMP_8_23_port, 
      PTMP_8_22_port, PTMP_8_21_port, PTMP_8_20_port, PTMP_8_19_port, 
      PTMP_8_18_port, PTMP_8_17_port, PTMP_8_16_port, n1, n2, n_1094, n_1095, 
      n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, n_1103, n_1104, 
      n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, n_1112, n_1113, 
      n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, n_1121, n_1122, 
      n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, n_1130, n_1131, 
      n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, n_1140, 
      n_1141, n_1142, n_1143, n_1144, n_1145, n_1146, n_1147, n_1148, n_1149, 
      n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156, n_1157, n_1158, 
      n_1159, n_1160, n_1161, n_1162, n_1163, n_1164, n_1165, n_1166, n_1167, 
      n_1168, n_1169, n_1170, n_1171, n_1172, n_1173, n_1174, n_1175, n_1176, 
      n_1177, n_1178, n_1179, n_1180, n_1181, n_1182, n_1183, n_1184, n_1185, 
      n_1186, n_1187, n_1188, n_1189, n_1190, n_1191, n_1192, n_1193, n_1194, 
      n_1195, n_1196, n_1197, n_1198, n_1199, n_1200, n_1201, n_1202, n_1203, 
      n_1204, n_1205, n_1206, n_1207, n_1208, n_1209, n_1210, n_1211, n_1212, 
      n_1213, n_1214, n_1215, n_1216, n_1217, n_1218, n_1219, n_1220, n_1221, 
      n_1222, n_1223, n_1224, n_1225, n_1226, n_1227, n_1228, n_1229, n_1230, 
      n_1231, n_1232, n_1233, n_1234, n_1235, n_1236, n_1237, n_1238, n_1239, 
      n_1240, n_1241, n_1242, n_1243, n_1244, n_1245, n_1246, n_1247, n_1248, 
      n_1249, n_1250, n_1251, n_1252, n_1253, n_1254, n_1255, n_1256, n_1257, 
      n_1258, n_1259, n_1260, n_1261, n_1262, n_1263, n_1264, n_1265, n_1266, 
      n_1267, n_1268, n_1269, n_1270, n_1271, n_1272, n_1273, n_1274, n_1275, 
      n_1276, n_1277, n_1278, n_1279, n_1280, n_1281, n_1282, n_1283, n_1284, 
      n_1285, n_1286, n_1287, n_1288, n_1289, n_1290, n_1291, n_1292, n_1293, 
      n_1294, n_1295, n_1296, n_1297, n_1298, n_1299, n_1300, n_1301, n_1302, 
      n_1303, n_1304, n_1305, n_1306, n_1307, n_1308, n_1309, n_1310 : 
      std_logic;

begin
   
   X_Logic0_port <= '0';
   n1 <= '0';
   n2 <= '0';
   ENC1 : BOOTHENC_NBIT34_i0 port map( A_s(33) => A(31), A_s(32) => A(31), 
                           A_s(31) => A(31), A_s(30) => A(30), A_s(29) => A(29)
                           , A_s(28) => A(28), A_s(27) => A(27), A_s(26) => 
                           A(26), A_s(25) => A(25), A_s(24) => A(24), A_s(23) 
                           => A(23), A_s(22) => A(22), A_s(21) => A(21), 
                           A_s(20) => A(20), A_s(19) => A(19), A_s(18) => A(18)
                           , A_s(17) => A(17), A_s(16) => A(16), A_s(15) => 
                           A(15), A_s(14) => A(14), A_s(13) => A(13), A_s(12) 
                           => A(12), A_s(11) => A(11), A_s(10) => A(10), A_s(9)
                           => A(9), A_s(8) => A(8), A_s(7) => A(7), A_s(6) => 
                           A(6), A_s(5) => A(5), A_s(4) => A(4), A_s(3) => A(3)
                           , A_s(2) => A(2), A_s(1) => A(1), A_s(0) => A(0), 
                           A_ns(33) => A_n_65, A_ns(32) => A_n_65, A_ns(31) => 
                           A_n_65, A_ns(30) => A_n_30_port, A_ns(29) => 
                           A_n_29_port, A_ns(28) => A_n_28_port, A_ns(27) => 
                           A_n_27_port, A_ns(26) => A_n_26_port, A_ns(25) => 
                           A_n_25_port, A_ns(24) => A_n_24_port, A_ns(23) => 
                           A_n_23_port, A_ns(22) => A_n_22_port, A_ns(21) => 
                           A_n_21_port, A_ns(20) => A_n_20_port, A_ns(19) => 
                           A_n_19_port, A_ns(18) => A_n_18_port, A_ns(17) => 
                           A_n_17_port, A_ns(16) => A_n_16_port, A_ns(15) => 
                           A_n_15_port, A_ns(14) => A_n_14_port, A_ns(13) => 
                           A_n_13_port, A_ns(12) => A_n_12_port, A_ns(11) => 
                           A_n_11_port, A_ns(10) => A_n_10_port, A_ns(9) => 
                           A_n_9_port, A_ns(8) => A_n_8_port, A_ns(7) => 
                           A_n_7_port, A_ns(6) => A_n_6_port, A_ns(5) => 
                           A_n_5_port, A_ns(4) => A_n_4_port, A_ns(3) => 
                           A_n_3_port, A_ns(2) => A_n_2_port, A_ns(1) => 
                           A_n_1_port, A_ns(0) => A_n_0_port, B(33) => B(31), 
                           B(32) => B(31), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), O(33) => OTMP_0_34_port, O(32) 
                           => OTMP_0_32_port, O(31) => OTMP_0_31_port, O(30) =>
                           OTMP_0_30_port, O(29) => OTMP_0_29_port, O(28) => 
                           OTMP_0_28_port, O(27) => OTMP_0_27_port, O(26) => 
                           OTMP_0_26_port, O(25) => OTMP_0_25_port, O(24) => 
                           OTMP_0_24_port, O(23) => OTMP_0_23_port, O(22) => 
                           OTMP_0_22_port, O(21) => OTMP_0_21_port, O(20) => 
                           OTMP_0_20_port, O(19) => OTMP_0_19_port, O(18) => 
                           OTMP_0_18_port, O(17) => OTMP_0_17_port, O(16) => 
                           OTMP_0_16_port, O(15) => OTMP_0_15_port, O(14) => 
                           OTMP_0_14_port, O(13) => OTMP_0_13_port, O(12) => 
                           OTMP_0_12_port, O(11) => OTMP_0_11_port, O(10) => 
                           OTMP_0_10_port, O(9) => OTMP_0_9_port, O(8) => 
                           OTMP_0_8_port, O(7) => OTMP_0_7_port, O(6) => 
                           OTMP_0_6_port, O(5) => OTMP_0_5_port, O(4) => 
                           OTMP_0_4_port, O(3) => OTMP_0_3_port, O(2) => 
                           OTMP_0_2_port, O(1) => OTMP_0_1_port, O(0) => 
                           OTMP_0_0_port, A_so(33) => SHIFT_1_33_port, A_so(32)
                           => SHIFT_1_32_port, A_so(31) => SHIFT_1_31_port, 
                           A_so(30) => SHIFT_1_30_port, A_so(29) => 
                           SHIFT_1_29_port, A_so(28) => SHIFT_1_28_port, 
                           A_so(27) => SHIFT_1_27_port, A_so(26) => 
                           SHIFT_1_26_port, A_so(25) => SHIFT_1_25_port, 
                           A_so(24) => SHIFT_1_24_port, A_so(23) => 
                           SHIFT_1_23_port, A_so(22) => SHIFT_1_22_port, 
                           A_so(21) => SHIFT_1_21_port, A_so(20) => 
                           SHIFT_1_20_port, A_so(19) => SHIFT_1_19_port, 
                           A_so(18) => SHIFT_1_18_port, A_so(17) => 
                           SHIFT_1_17_port, A_so(16) => SHIFT_1_16_port, 
                           A_so(15) => SHIFT_1_15_port, A_so(14) => 
                           SHIFT_1_14_port, A_so(13) => SHIFT_1_13_port, 
                           A_so(12) => SHIFT_1_12_port, A_so(11) => 
                           SHIFT_1_11_port, A_so(10) => SHIFT_1_10_port, 
                           A_so(9) => SHIFT_1_9_port, A_so(8) => SHIFT_1_8_port
                           , A_so(7) => SHIFT_1_7_port, A_so(6) => 
                           SHIFT_1_6_port, A_so(5) => SHIFT_1_5_port, A_so(4) 
                           => SHIFT_1_4_port, A_so(3) => SHIFT_1_3_port, 
                           A_so(2) => SHIFT_1_2_port, A_so(1) => SHIFT_1_1_port
                           , A_so(0) => n_1094, A_nso(33) => SHIFT_n_1_33_port,
                           A_nso(32) => SHIFT_n_1_32_port, A_nso(31) => 
                           SHIFT_n_1_31_port, A_nso(30) => SHIFT_n_1_30_port, 
                           A_nso(29) => SHIFT_n_1_29_port, A_nso(28) => 
                           SHIFT_n_1_28_port, A_nso(27) => SHIFT_n_1_27_port, 
                           A_nso(26) => SHIFT_n_1_26_port, A_nso(25) => 
                           SHIFT_n_1_25_port, A_nso(24) => SHIFT_n_1_24_port, 
                           A_nso(23) => SHIFT_n_1_23_port, A_nso(22) => 
                           SHIFT_n_1_22_port, A_nso(21) => SHIFT_n_1_21_port, 
                           A_nso(20) => SHIFT_n_1_20_port, A_nso(19) => 
                           SHIFT_n_1_19_port, A_nso(18) => SHIFT_n_1_18_port, 
                           A_nso(17) => SHIFT_n_1_17_port, A_nso(16) => 
                           SHIFT_n_1_16_port, A_nso(15) => SHIFT_n_1_15_port, 
                           A_nso(14) => SHIFT_n_1_14_port, A_nso(13) => 
                           SHIFT_n_1_13_port, A_nso(12) => SHIFT_n_1_12_port, 
                           A_nso(11) => SHIFT_n_1_11_port, A_nso(10) => 
                           SHIFT_n_1_10_port, A_nso(9) => SHIFT_n_1_9_port, 
                           A_nso(8) => SHIFT_n_1_8_port, A_nso(7) => 
                           SHIFT_n_1_7_port, A_nso(6) => SHIFT_n_1_6_port, 
                           A_nso(5) => SHIFT_n_1_5_port, A_nso(4) => 
                           SHIFT_n_1_4_port, A_nso(3) => SHIFT_n_1_3_port, 
                           A_nso(2) => SHIFT_n_1_2_port, A_nso(1) => 
                           SHIFT_n_1_1_port, A_nso(0) => n_1095);
   ENC_1 : BOOTHENC_NBIT36_i2 port map( A_s(35) => SHIFT_1_33_port, A_s(34) => 
                           SHIFT_1_33_port, A_s(33) => SHIFT_1_33_port, A_s(32)
                           => SHIFT_1_32_port, A_s(31) => SHIFT_1_31_port, 
                           A_s(30) => SHIFT_1_30_port, A_s(29) => 
                           SHIFT_1_29_port, A_s(28) => SHIFT_1_28_port, A_s(27)
                           => SHIFT_1_27_port, A_s(26) => SHIFT_1_26_port, 
                           A_s(25) => SHIFT_1_25_port, A_s(24) => 
                           SHIFT_1_24_port, A_s(23) => SHIFT_1_23_port, A_s(22)
                           => SHIFT_1_22_port, A_s(21) => SHIFT_1_21_port, 
                           A_s(20) => SHIFT_1_20_port, A_s(19) => 
                           SHIFT_1_19_port, A_s(18) => SHIFT_1_18_port, A_s(17)
                           => SHIFT_1_17_port, A_s(16) => SHIFT_1_16_port, 
                           A_s(15) => SHIFT_1_15_port, A_s(14) => 
                           SHIFT_1_14_port, A_s(13) => SHIFT_1_13_port, A_s(12)
                           => SHIFT_1_12_port, A_s(11) => SHIFT_1_11_port, 
                           A_s(10) => SHIFT_1_10_port, A_s(9) => SHIFT_1_9_port
                           , A_s(8) => SHIFT_1_8_port, A_s(7) => SHIFT_1_7_port
                           , A_s(6) => SHIFT_1_6_port, A_s(5) => SHIFT_1_5_port
                           , A_s(4) => SHIFT_1_4_port, A_s(3) => SHIFT_1_3_port
                           , A_s(2) => SHIFT_1_2_port, A_s(1) => SHIFT_1_1_port
                           , A_s(0) => SHIFT_1_0_port, A_ns(35) => 
                           SHIFT_n_1_33_port, A_ns(34) => SHIFT_n_1_33_port, 
                           A_ns(33) => SHIFT_n_1_33_port, A_ns(32) => 
                           SHIFT_n_1_32_port, A_ns(31) => SHIFT_n_1_31_port, 
                           A_ns(30) => SHIFT_n_1_30_port, A_ns(29) => 
                           SHIFT_n_1_29_port, A_ns(28) => SHIFT_n_1_28_port, 
                           A_ns(27) => SHIFT_n_1_27_port, A_ns(26) => 
                           SHIFT_n_1_26_port, A_ns(25) => SHIFT_n_1_25_port, 
                           A_ns(24) => SHIFT_n_1_24_port, A_ns(23) => 
                           SHIFT_n_1_23_port, A_ns(22) => SHIFT_n_1_22_port, 
                           A_ns(21) => SHIFT_n_1_21_port, A_ns(20) => 
                           SHIFT_n_1_20_port, A_ns(19) => SHIFT_n_1_19_port, 
                           A_ns(18) => SHIFT_n_1_18_port, A_ns(17) => 
                           SHIFT_n_1_17_port, A_ns(16) => SHIFT_n_1_16_port, 
                           A_ns(15) => SHIFT_n_1_15_port, A_ns(14) => 
                           SHIFT_n_1_14_port, A_ns(13) => SHIFT_n_1_13_port, 
                           A_ns(12) => SHIFT_n_1_12_port, A_ns(11) => 
                           SHIFT_n_1_11_port, A_ns(10) => SHIFT_n_1_10_port, 
                           A_ns(9) => SHIFT_n_1_9_port, A_ns(8) => 
                           SHIFT_n_1_8_port, A_ns(7) => SHIFT_n_1_7_port, 
                           A_ns(6) => SHIFT_n_1_6_port, A_ns(5) => 
                           SHIFT_n_1_5_port, A_ns(4) => SHIFT_n_1_4_port, 
                           A_ns(3) => SHIFT_n_1_3_port, A_ns(2) => 
                           SHIFT_n_1_2_port, A_ns(1) => SHIFT_n_1_1_port, 
                           A_ns(0) => SHIFT_n_1_0_port, B(35) => B(31), B(34) 
                           => B(31), B(33) => B(31), B(32) => B(31), B(31) => 
                           B(31), B(30) => B(30), B(29) => B(29), B(28) => 
                           B(28), B(27) => B(27), B(26) => B(26), B(25) => 
                           B(25), B(24) => B(24), B(23) => B(23), B(22) => 
                           B(22), B(21) => B(21), B(20) => B(20), B(19) => 
                           B(19), B(18) => B(18), B(17) => B(17), B(16) => 
                           B(16), B(15) => B(15), B(14) => B(14), B(13) => 
                           B(13), B(12) => B(12), B(11) => B(11), B(10) => 
                           B(10), B(9) => B(9), B(8) => B(8), B(7) => B(7), 
                           B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3) => 
                           B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           O(35) => OTMP_1_35_port, O(34) => OTMP_1_34_port, 
                           O(33) => OTMP_1_33_port, O(32) => OTMP_1_32_port, 
                           O(31) => OTMP_1_31_port, O(30) => OTMP_1_30_port, 
                           O(29) => OTMP_1_29_port, O(28) => OTMP_1_28_port, 
                           O(27) => OTMP_1_27_port, O(26) => OTMP_1_26_port, 
                           O(25) => OTMP_1_25_port, O(24) => OTMP_1_24_port, 
                           O(23) => OTMP_1_23_port, O(22) => OTMP_1_22_port, 
                           O(21) => OTMP_1_21_port, O(20) => OTMP_1_20_port, 
                           O(19) => OTMP_1_19_port, O(18) => OTMP_1_18_port, 
                           O(17) => OTMP_1_17_port, O(16) => OTMP_1_16_port, 
                           O(15) => OTMP_1_15_port, O(14) => OTMP_1_14_port, 
                           O(13) => OTMP_1_13_port, O(12) => OTMP_1_12_port, 
                           O(11) => OTMP_1_11_port, O(10) => OTMP_1_10_port, 
                           O(9) => OTMP_1_9_port, O(8) => OTMP_1_8_port, O(7) 
                           => OTMP_1_7_port, O(6) => OTMP_1_6_port, O(5) => 
                           OTMP_1_5_port, O(4) => OTMP_1_4_port, O(3) => 
                           OTMP_1_3_port, O(2) => OTMP_1_2_port, O(1) => 
                           OTMP_1_1_port, O(0) => n_1096, A_so(35) => 
                           SHIFT_2_35_port, A_so(34) => SHIFT_2_34_port, 
                           A_so(33) => SHIFT_2_33_port, A_so(32) => 
                           SHIFT_2_32_port, A_so(31) => SHIFT_2_31_port, 
                           A_so(30) => SHIFT_2_30_port, A_so(29) => 
                           SHIFT_2_29_port, A_so(28) => SHIFT_2_28_port, 
                           A_so(27) => SHIFT_2_27_port, A_so(26) => 
                           SHIFT_2_26_port, A_so(25) => SHIFT_2_25_port, 
                           A_so(24) => SHIFT_2_24_port, A_so(23) => 
                           SHIFT_2_23_port, A_so(22) => SHIFT_2_22_port, 
                           A_so(21) => SHIFT_2_21_port, A_so(20) => 
                           SHIFT_2_20_port, A_so(19) => SHIFT_2_19_port, 
                           A_so(18) => SHIFT_2_18_port, A_so(17) => 
                           SHIFT_2_17_port, A_so(16) => SHIFT_2_16_port, 
                           A_so(15) => SHIFT_2_15_port, A_so(14) => 
                           SHIFT_2_14_port, A_so(13) => SHIFT_2_13_port, 
                           A_so(12) => SHIFT_2_12_port, A_so(11) => 
                           SHIFT_2_11_port, A_so(10) => SHIFT_2_10_port, 
                           A_so(9) => SHIFT_2_9_port, A_so(8) => SHIFT_2_8_port
                           , A_so(7) => SHIFT_2_7_port, A_so(6) => 
                           SHIFT_2_6_port, A_so(5) => SHIFT_2_5_port, A_so(4) 
                           => SHIFT_2_4_port, A_so(3) => SHIFT_2_3_port, 
                           A_so(2) => SHIFT_2_2_port, A_so(1) => n_1097, 
                           A_so(0) => n_1098, A_nso(35) => SHIFT_n_2_35_port, 
                           A_nso(34) => SHIFT_n_2_34_port, A_nso(33) => 
                           SHIFT_n_2_33_port, A_nso(32) => SHIFT_n_2_32_port, 
                           A_nso(31) => SHIFT_n_2_31_port, A_nso(30) => 
                           SHIFT_n_2_30_port, A_nso(29) => SHIFT_n_2_29_port, 
                           A_nso(28) => SHIFT_n_2_28_port, A_nso(27) => 
                           SHIFT_n_2_27_port, A_nso(26) => SHIFT_n_2_26_port, 
                           A_nso(25) => SHIFT_n_2_25_port, A_nso(24) => 
                           SHIFT_n_2_24_port, A_nso(23) => SHIFT_n_2_23_port, 
                           A_nso(22) => SHIFT_n_2_22_port, A_nso(21) => 
                           SHIFT_n_2_21_port, A_nso(20) => SHIFT_n_2_20_port, 
                           A_nso(19) => SHIFT_n_2_19_port, A_nso(18) => 
                           SHIFT_n_2_18_port, A_nso(17) => SHIFT_n_2_17_port, 
                           A_nso(16) => SHIFT_n_2_16_port, A_nso(15) => 
                           SHIFT_n_2_15_port, A_nso(14) => SHIFT_n_2_14_port, 
                           A_nso(13) => SHIFT_n_2_13_port, A_nso(12) => 
                           SHIFT_n_2_12_port, A_nso(11) => SHIFT_n_2_11_port, 
                           A_nso(10) => SHIFT_n_2_10_port, A_nso(9) => 
                           SHIFT_n_2_9_port, A_nso(8) => SHIFT_n_2_8_port, 
                           A_nso(7) => SHIFT_n_2_7_port, A_nso(6) => 
                           SHIFT_n_2_6_port, A_nso(5) => SHIFT_n_2_5_port, 
                           A_nso(4) => SHIFT_n_2_4_port, A_nso(3) => 
                           SHIFT_n_2_3_port, A_nso(2) => SHIFT_n_2_2_port, 
                           A_nso(1) => n_1099, A_nso(0) => n_1100);
   ENC_2 : BOOTHENC_NBIT38_i4 port map( A_s(37) => SHIFT_2_35_port, A_s(36) => 
                           SHIFT_2_35_port, A_s(35) => SHIFT_2_35_port, A_s(34)
                           => SHIFT_2_34_port, A_s(33) => SHIFT_2_33_port, 
                           A_s(32) => SHIFT_2_32_port, A_s(31) => 
                           SHIFT_2_31_port, A_s(30) => SHIFT_2_30_port, A_s(29)
                           => SHIFT_2_29_port, A_s(28) => SHIFT_2_28_port, 
                           A_s(27) => SHIFT_2_27_port, A_s(26) => 
                           SHIFT_2_26_port, A_s(25) => SHIFT_2_25_port, A_s(24)
                           => SHIFT_2_24_port, A_s(23) => SHIFT_2_23_port, 
                           A_s(22) => SHIFT_2_22_port, A_s(21) => 
                           SHIFT_2_21_port, A_s(20) => SHIFT_2_20_port, A_s(19)
                           => SHIFT_2_19_port, A_s(18) => SHIFT_2_18_port, 
                           A_s(17) => SHIFT_2_17_port, A_s(16) => 
                           SHIFT_2_16_port, A_s(15) => SHIFT_2_15_port, A_s(14)
                           => SHIFT_2_14_port, A_s(13) => SHIFT_2_13_port, 
                           A_s(12) => SHIFT_2_12_port, A_s(11) => 
                           SHIFT_2_11_port, A_s(10) => SHIFT_2_10_port, A_s(9) 
                           => SHIFT_2_9_port, A_s(8) => SHIFT_2_8_port, A_s(7) 
                           => SHIFT_2_7_port, A_s(6) => SHIFT_2_6_port, A_s(5) 
                           => SHIFT_2_5_port, A_s(4) => SHIFT_2_4_port, A_s(3) 
                           => SHIFT_2_3_port, A_s(2) => SHIFT_2_2_port, A_s(1) 
                           => SHIFT_2_1_port, A_s(0) => SHIFT_2_0_port, 
                           A_ns(37) => SHIFT_n_2_35_port, A_ns(36) => 
                           SHIFT_n_2_35_port, A_ns(35) => SHIFT_n_2_35_port, 
                           A_ns(34) => SHIFT_n_2_34_port, A_ns(33) => 
                           SHIFT_n_2_33_port, A_ns(32) => SHIFT_n_2_32_port, 
                           A_ns(31) => SHIFT_n_2_31_port, A_ns(30) => 
                           SHIFT_n_2_30_port, A_ns(29) => SHIFT_n_2_29_port, 
                           A_ns(28) => SHIFT_n_2_28_port, A_ns(27) => 
                           SHIFT_n_2_27_port, A_ns(26) => SHIFT_n_2_26_port, 
                           A_ns(25) => SHIFT_n_2_25_port, A_ns(24) => 
                           SHIFT_n_2_24_port, A_ns(23) => SHIFT_n_2_23_port, 
                           A_ns(22) => SHIFT_n_2_22_port, A_ns(21) => 
                           SHIFT_n_2_21_port, A_ns(20) => SHIFT_n_2_20_port, 
                           A_ns(19) => SHIFT_n_2_19_port, A_ns(18) => 
                           SHIFT_n_2_18_port, A_ns(17) => SHIFT_n_2_17_port, 
                           A_ns(16) => SHIFT_n_2_16_port, A_ns(15) => 
                           SHIFT_n_2_15_port, A_ns(14) => SHIFT_n_2_14_port, 
                           A_ns(13) => SHIFT_n_2_13_port, A_ns(12) => 
                           SHIFT_n_2_12_port, A_ns(11) => SHIFT_n_2_11_port, 
                           A_ns(10) => SHIFT_n_2_10_port, A_ns(9) => 
                           SHIFT_n_2_9_port, A_ns(8) => SHIFT_n_2_8_port, 
                           A_ns(7) => SHIFT_n_2_7_port, A_ns(6) => 
                           SHIFT_n_2_6_port, A_ns(5) => SHIFT_n_2_5_port, 
                           A_ns(4) => SHIFT_n_2_4_port, A_ns(3) => 
                           SHIFT_n_2_3_port, A_ns(2) => SHIFT_n_2_2_port, 
                           A_ns(1) => SHIFT_n_2_1_port, A_ns(0) => 
                           SHIFT_n_2_0_port, B(37) => B(31), B(36) => B(31), 
                           B(35) => B(31), B(34) => B(31), B(33) => B(31), 
                           B(32) => B(31), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), O(37) => OTMP_2_37_port, O(36) 
                           => OTMP_2_36_port, O(35) => OTMP_2_35_port, O(34) =>
                           OTMP_2_34_port, O(33) => OTMP_2_33_port, O(32) => 
                           OTMP_2_32_port, O(31) => OTMP_2_31_port, O(30) => 
                           OTMP_2_30_port, O(29) => OTMP_2_29_port, O(28) => 
                           OTMP_2_28_port, O(27) => OTMP_2_27_port, O(26) => 
                           OTMP_2_26_port, O(25) => OTMP_2_25_port, O(24) => 
                           OTMP_2_24_port, O(23) => OTMP_2_23_port, O(22) => 
                           OTMP_2_22_port, O(21) => OTMP_2_21_port, O(20) => 
                           OTMP_2_20_port, O(19) => OTMP_2_19_port, O(18) => 
                           OTMP_2_18_port, O(17) => OTMP_2_17_port, O(16) => 
                           OTMP_2_16_port, O(15) => OTMP_2_15_port, O(14) => 
                           OTMP_2_14_port, O(13) => OTMP_2_13_port, O(12) => 
                           OTMP_2_12_port, O(11) => OTMP_2_11_port, O(10) => 
                           OTMP_2_10_port, O(9) => OTMP_2_9_port, O(8) => 
                           OTMP_2_8_port, O(7) => OTMP_2_7_port, O(6) => 
                           OTMP_2_6_port, O(5) => OTMP_2_5_port, O(4) => 
                           OTMP_2_4_port, O(3) => OTMP_2_3_port, O(2) => 
                           OTMP_2_2_port, O(1) => OTMP_2_1_port, O(0) => n_1101
                           , A_so(37) => SHIFT_3_37_port, A_so(36) => 
                           SHIFT_3_36_port, A_so(35) => SHIFT_3_35_port, 
                           A_so(34) => SHIFT_3_34_port, A_so(33) => 
                           SHIFT_3_33_port, A_so(32) => SHIFT_3_32_port, 
                           A_so(31) => SHIFT_3_31_port, A_so(30) => 
                           SHIFT_3_30_port, A_so(29) => SHIFT_3_29_port, 
                           A_so(28) => SHIFT_3_28_port, A_so(27) => 
                           SHIFT_3_27_port, A_so(26) => SHIFT_3_26_port, 
                           A_so(25) => SHIFT_3_25_port, A_so(24) => 
                           SHIFT_3_24_port, A_so(23) => SHIFT_3_23_port, 
                           A_so(22) => SHIFT_3_22_port, A_so(21) => 
                           SHIFT_3_21_port, A_so(20) => SHIFT_3_20_port, 
                           A_so(19) => SHIFT_3_19_port, A_so(18) => 
                           SHIFT_3_18_port, A_so(17) => SHIFT_3_17_port, 
                           A_so(16) => SHIFT_3_16_port, A_so(15) => 
                           SHIFT_3_15_port, A_so(14) => SHIFT_3_14_port, 
                           A_so(13) => SHIFT_3_13_port, A_so(12) => 
                           SHIFT_3_12_port, A_so(11) => SHIFT_3_11_port, 
                           A_so(10) => SHIFT_3_10_port, A_so(9) => 
                           SHIFT_3_9_port, A_so(8) => SHIFT_3_8_port, A_so(7) 
                           => SHIFT_3_7_port, A_so(6) => SHIFT_3_6_port, 
                           A_so(5) => SHIFT_3_5_port, A_so(4) => SHIFT_3_4_port
                           , A_so(3) => SHIFT_3_3_port, A_so(2) => 
                           SHIFT_3_2_port, A_so(1) => n_1102, A_so(0) => n_1103
                           , A_nso(37) => SHIFT_n_3_37_port, A_nso(36) => 
                           SHIFT_n_3_36_port, A_nso(35) => SHIFT_n_3_35_port, 
                           A_nso(34) => SHIFT_n_3_34_port, A_nso(33) => 
                           SHIFT_n_3_33_port, A_nso(32) => SHIFT_n_3_32_port, 
                           A_nso(31) => SHIFT_n_3_31_port, A_nso(30) => 
                           SHIFT_n_3_30_port, A_nso(29) => SHIFT_n_3_29_port, 
                           A_nso(28) => SHIFT_n_3_28_port, A_nso(27) => 
                           SHIFT_n_3_27_port, A_nso(26) => SHIFT_n_3_26_port, 
                           A_nso(25) => SHIFT_n_3_25_port, A_nso(24) => 
                           SHIFT_n_3_24_port, A_nso(23) => SHIFT_n_3_23_port, 
                           A_nso(22) => SHIFT_n_3_22_port, A_nso(21) => 
                           SHIFT_n_3_21_port, A_nso(20) => SHIFT_n_3_20_port, 
                           A_nso(19) => SHIFT_n_3_19_port, A_nso(18) => 
                           SHIFT_n_3_18_port, A_nso(17) => SHIFT_n_3_17_port, 
                           A_nso(16) => SHIFT_n_3_16_port, A_nso(15) => 
                           SHIFT_n_3_15_port, A_nso(14) => SHIFT_n_3_14_port, 
                           A_nso(13) => SHIFT_n_3_13_port, A_nso(12) => 
                           SHIFT_n_3_12_port, A_nso(11) => SHIFT_n_3_11_port, 
                           A_nso(10) => SHIFT_n_3_10_port, A_nso(9) => 
                           SHIFT_n_3_9_port, A_nso(8) => SHIFT_n_3_8_port, 
                           A_nso(7) => SHIFT_n_3_7_port, A_nso(6) => 
                           SHIFT_n_3_6_port, A_nso(5) => SHIFT_n_3_5_port, 
                           A_nso(4) => SHIFT_n_3_4_port, A_nso(3) => 
                           SHIFT_n_3_3_port, A_nso(2) => SHIFT_n_3_2_port, 
                           A_nso(1) => n_1104, A_nso(0) => n_1105);
   ENC_3 : BOOTHENC_NBIT40_i6 port map( A_s(39) => SHIFT_3_37_port, A_s(38) => 
                           SHIFT_3_37_port, A_s(37) => SHIFT_3_37_port, A_s(36)
                           => SHIFT_3_36_port, A_s(35) => SHIFT_3_35_port, 
                           A_s(34) => SHIFT_3_34_port, A_s(33) => 
                           SHIFT_3_33_port, A_s(32) => SHIFT_3_32_port, A_s(31)
                           => SHIFT_3_31_port, A_s(30) => SHIFT_3_30_port, 
                           A_s(29) => SHIFT_3_29_port, A_s(28) => 
                           SHIFT_3_28_port, A_s(27) => SHIFT_3_27_port, A_s(26)
                           => SHIFT_3_26_port, A_s(25) => SHIFT_3_25_port, 
                           A_s(24) => SHIFT_3_24_port, A_s(23) => 
                           SHIFT_3_23_port, A_s(22) => SHIFT_3_22_port, A_s(21)
                           => SHIFT_3_21_port, A_s(20) => SHIFT_3_20_port, 
                           A_s(19) => SHIFT_3_19_port, A_s(18) => 
                           SHIFT_3_18_port, A_s(17) => SHIFT_3_17_port, A_s(16)
                           => SHIFT_3_16_port, A_s(15) => SHIFT_3_15_port, 
                           A_s(14) => SHIFT_3_14_port, A_s(13) => 
                           SHIFT_3_13_port, A_s(12) => SHIFT_3_12_port, A_s(11)
                           => SHIFT_3_11_port, A_s(10) => SHIFT_3_10_port, 
                           A_s(9) => SHIFT_3_9_port, A_s(8) => SHIFT_3_8_port, 
                           A_s(7) => SHIFT_3_7_port, A_s(6) => SHIFT_3_6_port, 
                           A_s(5) => SHIFT_3_5_port, A_s(4) => SHIFT_3_4_port, 
                           A_s(3) => SHIFT_3_3_port, A_s(2) => SHIFT_3_2_port, 
                           A_s(1) => SHIFT_3_1_port, A_s(0) => SHIFT_3_0_port, 
                           A_ns(39) => SHIFT_n_3_37_port, A_ns(38) => 
                           SHIFT_n_3_37_port, A_ns(37) => SHIFT_n_3_37_port, 
                           A_ns(36) => SHIFT_n_3_36_port, A_ns(35) => 
                           SHIFT_n_3_35_port, A_ns(34) => SHIFT_n_3_34_port, 
                           A_ns(33) => SHIFT_n_3_33_port, A_ns(32) => 
                           SHIFT_n_3_32_port, A_ns(31) => SHIFT_n_3_31_port, 
                           A_ns(30) => SHIFT_n_3_30_port, A_ns(29) => 
                           SHIFT_n_3_29_port, A_ns(28) => SHIFT_n_3_28_port, 
                           A_ns(27) => SHIFT_n_3_27_port, A_ns(26) => 
                           SHIFT_n_3_26_port, A_ns(25) => SHIFT_n_3_25_port, 
                           A_ns(24) => SHIFT_n_3_24_port, A_ns(23) => 
                           SHIFT_n_3_23_port, A_ns(22) => SHIFT_n_3_22_port, 
                           A_ns(21) => SHIFT_n_3_21_port, A_ns(20) => 
                           SHIFT_n_3_20_port, A_ns(19) => SHIFT_n_3_19_port, 
                           A_ns(18) => SHIFT_n_3_18_port, A_ns(17) => 
                           SHIFT_n_3_17_port, A_ns(16) => SHIFT_n_3_16_port, 
                           A_ns(15) => SHIFT_n_3_15_port, A_ns(14) => 
                           SHIFT_n_3_14_port, A_ns(13) => SHIFT_n_3_13_port, 
                           A_ns(12) => SHIFT_n_3_12_port, A_ns(11) => 
                           SHIFT_n_3_11_port, A_ns(10) => SHIFT_n_3_10_port, 
                           A_ns(9) => SHIFT_n_3_9_port, A_ns(8) => 
                           SHIFT_n_3_8_port, A_ns(7) => SHIFT_n_3_7_port, 
                           A_ns(6) => SHIFT_n_3_6_port, A_ns(5) => 
                           SHIFT_n_3_5_port, A_ns(4) => SHIFT_n_3_4_port, 
                           A_ns(3) => SHIFT_n_3_3_port, A_ns(2) => 
                           SHIFT_n_3_2_port, A_ns(1) => SHIFT_n_3_1_port, 
                           A_ns(0) => SHIFT_n_3_0_port, B(39) => B(31), B(38) 
                           => B(31), B(37) => B(31), B(36) => B(31), B(35) => 
                           B(31), B(34) => B(31), B(33) => B(31), B(32) => 
                           B(31), B(31) => B(31), B(30) => B(30), B(29) => 
                           B(29), B(28) => B(28), B(27) => B(27), B(26) => 
                           B(26), B(25) => B(25), B(24) => B(24), B(23) => 
                           B(23), B(22) => B(22), B(21) => B(21), B(20) => 
                           B(20), B(19) => B(19), B(18) => B(18), B(17) => 
                           B(17), B(16) => B(16), B(15) => B(15), B(14) => 
                           B(14), B(13) => B(13), B(12) => B(12), B(11) => 
                           B(11), B(10) => B(10), B(9) => B(9), B(8) => B(8), 
                           B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), O(39) => OTMP_3_39_port, O(38) => 
                           OTMP_3_38_port, O(37) => OTMP_3_37_port, O(36) => 
                           OTMP_3_36_port, O(35) => OTMP_3_35_port, O(34) => 
                           OTMP_3_34_port, O(33) => OTMP_3_33_port, O(32) => 
                           OTMP_3_32_port, O(31) => OTMP_3_31_port, O(30) => 
                           OTMP_3_30_port, O(29) => OTMP_3_29_port, O(28) => 
                           OTMP_3_28_port, O(27) => OTMP_3_27_port, O(26) => 
                           OTMP_3_26_port, O(25) => OTMP_3_25_port, O(24) => 
                           OTMP_3_24_port, O(23) => OTMP_3_23_port, O(22) => 
                           OTMP_3_22_port, O(21) => OTMP_3_21_port, O(20) => 
                           OTMP_3_20_port, O(19) => OTMP_3_19_port, O(18) => 
                           OTMP_3_18_port, O(17) => OTMP_3_17_port, O(16) => 
                           OTMP_3_16_port, O(15) => OTMP_3_15_port, O(14) => 
                           OTMP_3_14_port, O(13) => OTMP_3_13_port, O(12) => 
                           OTMP_3_12_port, O(11) => OTMP_3_11_port, O(10) => 
                           OTMP_3_10_port, O(9) => OTMP_3_9_port, O(8) => 
                           OTMP_3_8_port, O(7) => OTMP_3_7_port, O(6) => 
                           OTMP_3_6_port, O(5) => OTMP_3_5_port, O(4) => 
                           OTMP_3_4_port, O(3) => OTMP_3_3_port, O(2) => 
                           OTMP_3_2_port, O(1) => OTMP_3_1_port, O(0) => n_1106
                           , A_so(39) => SHIFT_4_39_port, A_so(38) => 
                           SHIFT_4_38_port, A_so(37) => SHIFT_4_37_port, 
                           A_so(36) => SHIFT_4_36_port, A_so(35) => 
                           SHIFT_4_35_port, A_so(34) => SHIFT_4_34_port, 
                           A_so(33) => SHIFT_4_33_port, A_so(32) => 
                           SHIFT_4_32_port, A_so(31) => SHIFT_4_31_port, 
                           A_so(30) => SHIFT_4_30_port, A_so(29) => 
                           SHIFT_4_29_port, A_so(28) => SHIFT_4_28_port, 
                           A_so(27) => SHIFT_4_27_port, A_so(26) => 
                           SHIFT_4_26_port, A_so(25) => SHIFT_4_25_port, 
                           A_so(24) => SHIFT_4_24_port, A_so(23) => 
                           SHIFT_4_23_port, A_so(22) => SHIFT_4_22_port, 
                           A_so(21) => SHIFT_4_21_port, A_so(20) => 
                           SHIFT_4_20_port, A_so(19) => SHIFT_4_19_port, 
                           A_so(18) => SHIFT_4_18_port, A_so(17) => 
                           SHIFT_4_17_port, A_so(16) => SHIFT_4_16_port, 
                           A_so(15) => SHIFT_4_15_port, A_so(14) => 
                           SHIFT_4_14_port, A_so(13) => SHIFT_4_13_port, 
                           A_so(12) => SHIFT_4_12_port, A_so(11) => 
                           SHIFT_4_11_port, A_so(10) => SHIFT_4_10_port, 
                           A_so(9) => SHIFT_4_9_port, A_so(8) => SHIFT_4_8_port
                           , A_so(7) => SHIFT_4_7_port, A_so(6) => 
                           SHIFT_4_6_port, A_so(5) => SHIFT_4_5_port, A_so(4) 
                           => SHIFT_4_4_port, A_so(3) => SHIFT_4_3_port, 
                           A_so(2) => SHIFT_4_2_port, A_so(1) => n_1107, 
                           A_so(0) => n_1108, A_nso(39) => SHIFT_n_4_39_port, 
                           A_nso(38) => SHIFT_n_4_38_port, A_nso(37) => 
                           SHIFT_n_4_37_port, A_nso(36) => SHIFT_n_4_36_port, 
                           A_nso(35) => SHIFT_n_4_35_port, A_nso(34) => 
                           SHIFT_n_4_34_port, A_nso(33) => SHIFT_n_4_33_port, 
                           A_nso(32) => SHIFT_n_4_32_port, A_nso(31) => 
                           SHIFT_n_4_31_port, A_nso(30) => SHIFT_n_4_30_port, 
                           A_nso(29) => SHIFT_n_4_29_port, A_nso(28) => 
                           SHIFT_n_4_28_port, A_nso(27) => SHIFT_n_4_27_port, 
                           A_nso(26) => SHIFT_n_4_26_port, A_nso(25) => 
                           SHIFT_n_4_25_port, A_nso(24) => SHIFT_n_4_24_port, 
                           A_nso(23) => SHIFT_n_4_23_port, A_nso(22) => 
                           SHIFT_n_4_22_port, A_nso(21) => SHIFT_n_4_21_port, 
                           A_nso(20) => SHIFT_n_4_20_port, A_nso(19) => 
                           SHIFT_n_4_19_port, A_nso(18) => SHIFT_n_4_18_port, 
                           A_nso(17) => SHIFT_n_4_17_port, A_nso(16) => 
                           SHIFT_n_4_16_port, A_nso(15) => SHIFT_n_4_15_port, 
                           A_nso(14) => SHIFT_n_4_14_port, A_nso(13) => 
                           SHIFT_n_4_13_port, A_nso(12) => SHIFT_n_4_12_port, 
                           A_nso(11) => SHIFT_n_4_11_port, A_nso(10) => 
                           SHIFT_n_4_10_port, A_nso(9) => SHIFT_n_4_9_port, 
                           A_nso(8) => SHIFT_n_4_8_port, A_nso(7) => 
                           SHIFT_n_4_7_port, A_nso(6) => SHIFT_n_4_6_port, 
                           A_nso(5) => SHIFT_n_4_5_port, A_nso(4) => 
                           SHIFT_n_4_4_port, A_nso(3) => SHIFT_n_4_3_port, 
                           A_nso(2) => SHIFT_n_4_2_port, A_nso(1) => n_1109, 
                           A_nso(0) => n_1110);
   ENC_4 : BOOTHENC_NBIT42_i8 port map( A_s(41) => SHIFT_4_39_port, A_s(40) => 
                           SHIFT_4_39_port, A_s(39) => SHIFT_4_39_port, A_s(38)
                           => SHIFT_4_38_port, A_s(37) => SHIFT_4_37_port, 
                           A_s(36) => SHIFT_4_36_port, A_s(35) => 
                           SHIFT_4_35_port, A_s(34) => SHIFT_4_34_port, A_s(33)
                           => SHIFT_4_33_port, A_s(32) => SHIFT_4_32_port, 
                           A_s(31) => SHIFT_4_31_port, A_s(30) => 
                           SHIFT_4_30_port, A_s(29) => SHIFT_4_29_port, A_s(28)
                           => SHIFT_4_28_port, A_s(27) => SHIFT_4_27_port, 
                           A_s(26) => SHIFT_4_26_port, A_s(25) => 
                           SHIFT_4_25_port, A_s(24) => SHIFT_4_24_port, A_s(23)
                           => SHIFT_4_23_port, A_s(22) => SHIFT_4_22_port, 
                           A_s(21) => SHIFT_4_21_port, A_s(20) => 
                           SHIFT_4_20_port, A_s(19) => SHIFT_4_19_port, A_s(18)
                           => SHIFT_4_18_port, A_s(17) => SHIFT_4_17_port, 
                           A_s(16) => SHIFT_4_16_port, A_s(15) => 
                           SHIFT_4_15_port, A_s(14) => SHIFT_4_14_port, A_s(13)
                           => SHIFT_4_13_port, A_s(12) => SHIFT_4_12_port, 
                           A_s(11) => SHIFT_4_11_port, A_s(10) => 
                           SHIFT_4_10_port, A_s(9) => SHIFT_4_9_port, A_s(8) =>
                           SHIFT_4_8_port, A_s(7) => SHIFT_4_7_port, A_s(6) => 
                           SHIFT_4_6_port, A_s(5) => SHIFT_4_5_port, A_s(4) => 
                           SHIFT_4_4_port, A_s(3) => SHIFT_4_3_port, A_s(2) => 
                           SHIFT_4_2_port, A_s(1) => SHIFT_4_1_port, A_s(0) => 
                           SHIFT_4_0_port, A_ns(41) => SHIFT_n_4_39_port, 
                           A_ns(40) => SHIFT_n_4_39_port, A_ns(39) => 
                           SHIFT_n_4_39_port, A_ns(38) => SHIFT_n_4_38_port, 
                           A_ns(37) => SHIFT_n_4_37_port, A_ns(36) => 
                           SHIFT_n_4_36_port, A_ns(35) => SHIFT_n_4_35_port, 
                           A_ns(34) => SHIFT_n_4_34_port, A_ns(33) => 
                           SHIFT_n_4_33_port, A_ns(32) => SHIFT_n_4_32_port, 
                           A_ns(31) => SHIFT_n_4_31_port, A_ns(30) => 
                           SHIFT_n_4_30_port, A_ns(29) => SHIFT_n_4_29_port, 
                           A_ns(28) => SHIFT_n_4_28_port, A_ns(27) => 
                           SHIFT_n_4_27_port, A_ns(26) => SHIFT_n_4_26_port, 
                           A_ns(25) => SHIFT_n_4_25_port, A_ns(24) => 
                           SHIFT_n_4_24_port, A_ns(23) => SHIFT_n_4_23_port, 
                           A_ns(22) => SHIFT_n_4_22_port, A_ns(21) => 
                           SHIFT_n_4_21_port, A_ns(20) => SHIFT_n_4_20_port, 
                           A_ns(19) => SHIFT_n_4_19_port, A_ns(18) => 
                           SHIFT_n_4_18_port, A_ns(17) => SHIFT_n_4_17_port, 
                           A_ns(16) => SHIFT_n_4_16_port, A_ns(15) => 
                           SHIFT_n_4_15_port, A_ns(14) => SHIFT_n_4_14_port, 
                           A_ns(13) => SHIFT_n_4_13_port, A_ns(12) => 
                           SHIFT_n_4_12_port, A_ns(11) => SHIFT_n_4_11_port, 
                           A_ns(10) => SHIFT_n_4_10_port, A_ns(9) => 
                           SHIFT_n_4_9_port, A_ns(8) => SHIFT_n_4_8_port, 
                           A_ns(7) => SHIFT_n_4_7_port, A_ns(6) => 
                           SHIFT_n_4_6_port, A_ns(5) => SHIFT_n_4_5_port, 
                           A_ns(4) => SHIFT_n_4_4_port, A_ns(3) => 
                           SHIFT_n_4_3_port, A_ns(2) => SHIFT_n_4_2_port, 
                           A_ns(1) => SHIFT_n_4_1_port, A_ns(0) => 
                           SHIFT_n_4_0_port, B(41) => B(31), B(40) => B(31), 
                           B(39) => B(31), B(38) => B(31), B(37) => B(31), 
                           B(36) => B(31), B(35) => B(31), B(34) => B(31), 
                           B(33) => B(31), B(32) => B(31), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), O(41) => 
                           OTMP_4_41_port, O(40) => OTMP_4_40_port, O(39) => 
                           OTMP_4_39_port, O(38) => OTMP_4_38_port, O(37) => 
                           OTMP_4_37_port, O(36) => OTMP_4_36_port, O(35) => 
                           OTMP_4_35_port, O(34) => OTMP_4_34_port, O(33) => 
                           OTMP_4_33_port, O(32) => OTMP_4_32_port, O(31) => 
                           OTMP_4_31_port, O(30) => OTMP_4_30_port, O(29) => 
                           OTMP_4_29_port, O(28) => OTMP_4_28_port, O(27) => 
                           OTMP_4_27_port, O(26) => OTMP_4_26_port, O(25) => 
                           OTMP_4_25_port, O(24) => OTMP_4_24_port, O(23) => 
                           OTMP_4_23_port, O(22) => OTMP_4_22_port, O(21) => 
                           OTMP_4_21_port, O(20) => OTMP_4_20_port, O(19) => 
                           OTMP_4_19_port, O(18) => OTMP_4_18_port, O(17) => 
                           OTMP_4_17_port, O(16) => OTMP_4_16_port, O(15) => 
                           OTMP_4_15_port, O(14) => OTMP_4_14_port, O(13) => 
                           OTMP_4_13_port, O(12) => OTMP_4_12_port, O(11) => 
                           OTMP_4_11_port, O(10) => OTMP_4_10_port, O(9) => 
                           OTMP_4_9_port, O(8) => OTMP_4_8_port, O(7) => 
                           OTMP_4_7_port, O(6) => OTMP_4_6_port, O(5) => 
                           OTMP_4_5_port, O(4) => OTMP_4_4_port, O(3) => 
                           OTMP_4_3_port, O(2) => OTMP_4_2_port, O(1) => 
                           OTMP_4_1_port, O(0) => n_1111, A_so(41) => 
                           SHIFT_5_41_port, A_so(40) => SHIFT_5_40_port, 
                           A_so(39) => SHIFT_5_39_port, A_so(38) => 
                           SHIFT_5_38_port, A_so(37) => SHIFT_5_37_port, 
                           A_so(36) => SHIFT_5_36_port, A_so(35) => 
                           SHIFT_5_35_port, A_so(34) => SHIFT_5_34_port, 
                           A_so(33) => SHIFT_5_33_port, A_so(32) => 
                           SHIFT_5_32_port, A_so(31) => SHIFT_5_31_port, 
                           A_so(30) => SHIFT_5_30_port, A_so(29) => 
                           SHIFT_5_29_port, A_so(28) => SHIFT_5_28_port, 
                           A_so(27) => SHIFT_5_27_port, A_so(26) => 
                           SHIFT_5_26_port, A_so(25) => SHIFT_5_25_port, 
                           A_so(24) => SHIFT_5_24_port, A_so(23) => 
                           SHIFT_5_23_port, A_so(22) => SHIFT_5_22_port, 
                           A_so(21) => SHIFT_5_21_port, A_so(20) => 
                           SHIFT_5_20_port, A_so(19) => SHIFT_5_19_port, 
                           A_so(18) => SHIFT_5_18_port, A_so(17) => 
                           SHIFT_5_17_port, A_so(16) => SHIFT_5_16_port, 
                           A_so(15) => SHIFT_5_15_port, A_so(14) => 
                           SHIFT_5_14_port, A_so(13) => SHIFT_5_13_port, 
                           A_so(12) => SHIFT_5_12_port, A_so(11) => 
                           SHIFT_5_11_port, A_so(10) => SHIFT_5_10_port, 
                           A_so(9) => SHIFT_5_9_port, A_so(8) => SHIFT_5_8_port
                           , A_so(7) => SHIFT_5_7_port, A_so(6) => 
                           SHIFT_5_6_port, A_so(5) => SHIFT_5_5_port, A_so(4) 
                           => SHIFT_5_4_port, A_so(3) => SHIFT_5_3_port, 
                           A_so(2) => SHIFT_5_2_port, A_so(1) => n_1112, 
                           A_so(0) => n_1113, A_nso(41) => SHIFT_n_5_41_port, 
                           A_nso(40) => SHIFT_n_5_40_port, A_nso(39) => 
                           SHIFT_n_5_39_port, A_nso(38) => SHIFT_n_5_38_port, 
                           A_nso(37) => SHIFT_n_5_37_port, A_nso(36) => 
                           SHIFT_n_5_36_port, A_nso(35) => SHIFT_n_5_35_port, 
                           A_nso(34) => SHIFT_n_5_34_port, A_nso(33) => 
                           SHIFT_n_5_33_port, A_nso(32) => SHIFT_n_5_32_port, 
                           A_nso(31) => SHIFT_n_5_31_port, A_nso(30) => 
                           SHIFT_n_5_30_port, A_nso(29) => SHIFT_n_5_29_port, 
                           A_nso(28) => SHIFT_n_5_28_port, A_nso(27) => 
                           SHIFT_n_5_27_port, A_nso(26) => SHIFT_n_5_26_port, 
                           A_nso(25) => SHIFT_n_5_25_port, A_nso(24) => 
                           SHIFT_n_5_24_port, A_nso(23) => SHIFT_n_5_23_port, 
                           A_nso(22) => SHIFT_n_5_22_port, A_nso(21) => 
                           SHIFT_n_5_21_port, A_nso(20) => SHIFT_n_5_20_port, 
                           A_nso(19) => SHIFT_n_5_19_port, A_nso(18) => 
                           SHIFT_n_5_18_port, A_nso(17) => SHIFT_n_5_17_port, 
                           A_nso(16) => SHIFT_n_5_16_port, A_nso(15) => 
                           SHIFT_n_5_15_port, A_nso(14) => SHIFT_n_5_14_port, 
                           A_nso(13) => SHIFT_n_5_13_port, A_nso(12) => 
                           SHIFT_n_5_12_port, A_nso(11) => SHIFT_n_5_11_port, 
                           A_nso(10) => SHIFT_n_5_10_port, A_nso(9) => 
                           SHIFT_n_5_9_port, A_nso(8) => SHIFT_n_5_8_port, 
                           A_nso(7) => SHIFT_n_5_7_port, A_nso(6) => 
                           SHIFT_n_5_6_port, A_nso(5) => SHIFT_n_5_5_port, 
                           A_nso(4) => SHIFT_n_5_4_port, A_nso(3) => 
                           SHIFT_n_5_3_port, A_nso(2) => SHIFT_n_5_2_port, 
                           A_nso(1) => n_1114, A_nso(0) => n_1115);
   ENC_5 : BOOTHENC_NBIT44_i10 port map( A_s(43) => SHIFT_5_41_port, A_s(42) =>
                           SHIFT_5_41_port, A_s(41) => SHIFT_5_41_port, A_s(40)
                           => SHIFT_5_40_port, A_s(39) => SHIFT_5_39_port, 
                           A_s(38) => SHIFT_5_38_port, A_s(37) => 
                           SHIFT_5_37_port, A_s(36) => SHIFT_5_36_port, A_s(35)
                           => SHIFT_5_35_port, A_s(34) => SHIFT_5_34_port, 
                           A_s(33) => SHIFT_5_33_port, A_s(32) => 
                           SHIFT_5_32_port, A_s(31) => SHIFT_5_31_port, A_s(30)
                           => SHIFT_5_30_port, A_s(29) => SHIFT_5_29_port, 
                           A_s(28) => SHIFT_5_28_port, A_s(27) => 
                           SHIFT_5_27_port, A_s(26) => SHIFT_5_26_port, A_s(25)
                           => SHIFT_5_25_port, A_s(24) => SHIFT_5_24_port, 
                           A_s(23) => SHIFT_5_23_port, A_s(22) => 
                           SHIFT_5_22_port, A_s(21) => SHIFT_5_21_port, A_s(20)
                           => SHIFT_5_20_port, A_s(19) => SHIFT_5_19_port, 
                           A_s(18) => SHIFT_5_18_port, A_s(17) => 
                           SHIFT_5_17_port, A_s(16) => SHIFT_5_16_port, A_s(15)
                           => SHIFT_5_15_port, A_s(14) => SHIFT_5_14_port, 
                           A_s(13) => SHIFT_5_13_port, A_s(12) => 
                           SHIFT_5_12_port, A_s(11) => SHIFT_5_11_port, A_s(10)
                           => SHIFT_5_10_port, A_s(9) => SHIFT_5_9_port, A_s(8)
                           => SHIFT_5_8_port, A_s(7) => SHIFT_5_7_port, A_s(6) 
                           => SHIFT_5_6_port, A_s(5) => SHIFT_5_5_port, A_s(4) 
                           => SHIFT_5_4_port, A_s(3) => SHIFT_5_3_port, A_s(2) 
                           => SHIFT_5_2_port, A_s(1) => SHIFT_5_1_port, A_s(0) 
                           => SHIFT_5_0_port, A_ns(43) => SHIFT_n_5_41_port, 
                           A_ns(42) => SHIFT_n_5_41_port, A_ns(41) => 
                           SHIFT_n_5_41_port, A_ns(40) => SHIFT_n_5_40_port, 
                           A_ns(39) => SHIFT_n_5_39_port, A_ns(38) => 
                           SHIFT_n_5_38_port, A_ns(37) => SHIFT_n_5_37_port, 
                           A_ns(36) => SHIFT_n_5_36_port, A_ns(35) => 
                           SHIFT_n_5_35_port, A_ns(34) => SHIFT_n_5_34_port, 
                           A_ns(33) => SHIFT_n_5_33_port, A_ns(32) => 
                           SHIFT_n_5_32_port, A_ns(31) => SHIFT_n_5_31_port, 
                           A_ns(30) => SHIFT_n_5_30_port, A_ns(29) => 
                           SHIFT_n_5_29_port, A_ns(28) => SHIFT_n_5_28_port, 
                           A_ns(27) => SHIFT_n_5_27_port, A_ns(26) => 
                           SHIFT_n_5_26_port, A_ns(25) => SHIFT_n_5_25_port, 
                           A_ns(24) => SHIFT_n_5_24_port, A_ns(23) => 
                           SHIFT_n_5_23_port, A_ns(22) => SHIFT_n_5_22_port, 
                           A_ns(21) => SHIFT_n_5_21_port, A_ns(20) => 
                           SHIFT_n_5_20_port, A_ns(19) => SHIFT_n_5_19_port, 
                           A_ns(18) => SHIFT_n_5_18_port, A_ns(17) => 
                           SHIFT_n_5_17_port, A_ns(16) => SHIFT_n_5_16_port, 
                           A_ns(15) => SHIFT_n_5_15_port, A_ns(14) => 
                           SHIFT_n_5_14_port, A_ns(13) => SHIFT_n_5_13_port, 
                           A_ns(12) => SHIFT_n_5_12_port, A_ns(11) => 
                           SHIFT_n_5_11_port, A_ns(10) => SHIFT_n_5_10_port, 
                           A_ns(9) => SHIFT_n_5_9_port, A_ns(8) => 
                           SHIFT_n_5_8_port, A_ns(7) => SHIFT_n_5_7_port, 
                           A_ns(6) => SHIFT_n_5_6_port, A_ns(5) => 
                           SHIFT_n_5_5_port, A_ns(4) => SHIFT_n_5_4_port, 
                           A_ns(3) => SHIFT_n_5_3_port, A_ns(2) => 
                           SHIFT_n_5_2_port, A_ns(1) => SHIFT_n_5_1_port, 
                           A_ns(0) => SHIFT_n_5_0_port, B(43) => B(31), B(42) 
                           => B(31), B(41) => B(31), B(40) => B(31), B(39) => 
                           B(31), B(38) => B(31), B(37) => B(31), B(36) => 
                           B(31), B(35) => B(31), B(34) => B(31), B(33) => 
                           B(31), B(32) => B(31), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), O(43) => OTMP_5_43_port, 
                           O(42) => OTMP_5_42_port, O(41) => OTMP_5_41_port, 
                           O(40) => OTMP_5_40_port, O(39) => OTMP_5_39_port, 
                           O(38) => OTMP_5_38_port, O(37) => OTMP_5_37_port, 
                           O(36) => OTMP_5_36_port, O(35) => OTMP_5_35_port, 
                           O(34) => OTMP_5_34_port, O(33) => OTMP_5_33_port, 
                           O(32) => OTMP_5_32_port, O(31) => OTMP_5_31_port, 
                           O(30) => OTMP_5_30_port, O(29) => OTMP_5_29_port, 
                           O(28) => OTMP_5_28_port, O(27) => OTMP_5_27_port, 
                           O(26) => OTMP_5_26_port, O(25) => OTMP_5_25_port, 
                           O(24) => OTMP_5_24_port, O(23) => OTMP_5_23_port, 
                           O(22) => OTMP_5_22_port, O(21) => OTMP_5_21_port, 
                           O(20) => OTMP_5_20_port, O(19) => OTMP_5_19_port, 
                           O(18) => OTMP_5_18_port, O(17) => OTMP_5_17_port, 
                           O(16) => OTMP_5_16_port, O(15) => OTMP_5_15_port, 
                           O(14) => OTMP_5_14_port, O(13) => OTMP_5_13_port, 
                           O(12) => OTMP_5_12_port, O(11) => OTMP_5_11_port, 
                           O(10) => OTMP_5_10_port, O(9) => OTMP_5_9_port, O(8)
                           => OTMP_5_8_port, O(7) => OTMP_5_7_port, O(6) => 
                           OTMP_5_6_port, O(5) => OTMP_5_5_port, O(4) => 
                           OTMP_5_4_port, O(3) => OTMP_5_3_port, O(2) => 
                           OTMP_5_2_port, O(1) => OTMP_5_1_port, O(0) => n_1116
                           , A_so(43) => SHIFT_6_43_port, A_so(42) => 
                           SHIFT_6_42_port, A_so(41) => SHIFT_6_41_port, 
                           A_so(40) => SHIFT_6_40_port, A_so(39) => 
                           SHIFT_6_39_port, A_so(38) => SHIFT_6_38_port, 
                           A_so(37) => SHIFT_6_37_port, A_so(36) => 
                           SHIFT_6_36_port, A_so(35) => SHIFT_6_35_port, 
                           A_so(34) => SHIFT_6_34_port, A_so(33) => 
                           SHIFT_6_33_port, A_so(32) => SHIFT_6_32_port, 
                           A_so(31) => SHIFT_6_31_port, A_so(30) => 
                           SHIFT_6_30_port, A_so(29) => SHIFT_6_29_port, 
                           A_so(28) => SHIFT_6_28_port, A_so(27) => 
                           SHIFT_6_27_port, A_so(26) => SHIFT_6_26_port, 
                           A_so(25) => SHIFT_6_25_port, A_so(24) => 
                           SHIFT_6_24_port, A_so(23) => SHIFT_6_23_port, 
                           A_so(22) => SHIFT_6_22_port, A_so(21) => 
                           SHIFT_6_21_port, A_so(20) => SHIFT_6_20_port, 
                           A_so(19) => SHIFT_6_19_port, A_so(18) => 
                           SHIFT_6_18_port, A_so(17) => SHIFT_6_17_port, 
                           A_so(16) => SHIFT_6_16_port, A_so(15) => 
                           SHIFT_6_15_port, A_so(14) => SHIFT_6_14_port, 
                           A_so(13) => SHIFT_6_13_port, A_so(12) => 
                           SHIFT_6_12_port, A_so(11) => SHIFT_6_11_port, 
                           A_so(10) => SHIFT_6_10_port, A_so(9) => 
                           SHIFT_6_9_port, A_so(8) => SHIFT_6_8_port, A_so(7) 
                           => SHIFT_6_7_port, A_so(6) => SHIFT_6_6_port, 
                           A_so(5) => SHIFT_6_5_port, A_so(4) => SHIFT_6_4_port
                           , A_so(3) => SHIFT_6_3_port, A_so(2) => 
                           SHIFT_6_2_port, A_so(1) => n_1117, A_so(0) => n_1118
                           , A_nso(43) => SHIFT_n_6_43_port, A_nso(42) => 
                           SHIFT_n_6_42_port, A_nso(41) => SHIFT_n_6_41_port, 
                           A_nso(40) => SHIFT_n_6_40_port, A_nso(39) => 
                           SHIFT_n_6_39_port, A_nso(38) => SHIFT_n_6_38_port, 
                           A_nso(37) => SHIFT_n_6_37_port, A_nso(36) => 
                           SHIFT_n_6_36_port, A_nso(35) => SHIFT_n_6_35_port, 
                           A_nso(34) => SHIFT_n_6_34_port, A_nso(33) => 
                           SHIFT_n_6_33_port, A_nso(32) => SHIFT_n_6_32_port, 
                           A_nso(31) => SHIFT_n_6_31_port, A_nso(30) => 
                           SHIFT_n_6_30_port, A_nso(29) => SHIFT_n_6_29_port, 
                           A_nso(28) => SHIFT_n_6_28_port, A_nso(27) => 
                           SHIFT_n_6_27_port, A_nso(26) => SHIFT_n_6_26_port, 
                           A_nso(25) => SHIFT_n_6_25_port, A_nso(24) => 
                           SHIFT_n_6_24_port, A_nso(23) => SHIFT_n_6_23_port, 
                           A_nso(22) => SHIFT_n_6_22_port, A_nso(21) => 
                           SHIFT_n_6_21_port, A_nso(20) => SHIFT_n_6_20_port, 
                           A_nso(19) => SHIFT_n_6_19_port, A_nso(18) => 
                           SHIFT_n_6_18_port, A_nso(17) => SHIFT_n_6_17_port, 
                           A_nso(16) => SHIFT_n_6_16_port, A_nso(15) => 
                           SHIFT_n_6_15_port, A_nso(14) => SHIFT_n_6_14_port, 
                           A_nso(13) => SHIFT_n_6_13_port, A_nso(12) => 
                           SHIFT_n_6_12_port, A_nso(11) => SHIFT_n_6_11_port, 
                           A_nso(10) => SHIFT_n_6_10_port, A_nso(9) => 
                           SHIFT_n_6_9_port, A_nso(8) => SHIFT_n_6_8_port, 
                           A_nso(7) => SHIFT_n_6_7_port, A_nso(6) => 
                           SHIFT_n_6_6_port, A_nso(5) => SHIFT_n_6_5_port, 
                           A_nso(4) => SHIFT_n_6_4_port, A_nso(3) => 
                           SHIFT_n_6_3_port, A_nso(2) => SHIFT_n_6_2_port, 
                           A_nso(1) => n_1119, A_nso(0) => n_1120);
   ENC_6 : BOOTHENC_NBIT46_i12 port map( A_s(45) => SHIFT_6_43_port, A_s(44) =>
                           SHIFT_6_43_port, A_s(43) => SHIFT_6_43_port, A_s(42)
                           => SHIFT_6_42_port, A_s(41) => SHIFT_6_41_port, 
                           A_s(40) => SHIFT_6_40_port, A_s(39) => 
                           SHIFT_6_39_port, A_s(38) => SHIFT_6_38_port, A_s(37)
                           => SHIFT_6_37_port, A_s(36) => SHIFT_6_36_port, 
                           A_s(35) => SHIFT_6_35_port, A_s(34) => 
                           SHIFT_6_34_port, A_s(33) => SHIFT_6_33_port, A_s(32)
                           => SHIFT_6_32_port, A_s(31) => SHIFT_6_31_port, 
                           A_s(30) => SHIFT_6_30_port, A_s(29) => 
                           SHIFT_6_29_port, A_s(28) => SHIFT_6_28_port, A_s(27)
                           => SHIFT_6_27_port, A_s(26) => SHIFT_6_26_port, 
                           A_s(25) => SHIFT_6_25_port, A_s(24) => 
                           SHIFT_6_24_port, A_s(23) => SHIFT_6_23_port, A_s(22)
                           => SHIFT_6_22_port, A_s(21) => SHIFT_6_21_port, 
                           A_s(20) => SHIFT_6_20_port, A_s(19) => 
                           SHIFT_6_19_port, A_s(18) => SHIFT_6_18_port, A_s(17)
                           => SHIFT_6_17_port, A_s(16) => SHIFT_6_16_port, 
                           A_s(15) => SHIFT_6_15_port, A_s(14) => 
                           SHIFT_6_14_port, A_s(13) => SHIFT_6_13_port, A_s(12)
                           => SHIFT_6_12_port, A_s(11) => SHIFT_6_11_port, 
                           A_s(10) => SHIFT_6_10_port, A_s(9) => SHIFT_6_9_port
                           , A_s(8) => SHIFT_6_8_port, A_s(7) => SHIFT_6_7_port
                           , A_s(6) => SHIFT_6_6_port, A_s(5) => SHIFT_6_5_port
                           , A_s(4) => SHIFT_6_4_port, A_s(3) => SHIFT_6_3_port
                           , A_s(2) => SHIFT_6_2_port, A_s(1) => SHIFT_6_1_port
                           , A_s(0) => SHIFT_6_0_port, A_ns(45) => 
                           SHIFT_n_6_43_port, A_ns(44) => SHIFT_n_6_43_port, 
                           A_ns(43) => SHIFT_n_6_43_port, A_ns(42) => 
                           SHIFT_n_6_42_port, A_ns(41) => SHIFT_n_6_41_port, 
                           A_ns(40) => SHIFT_n_6_40_port, A_ns(39) => 
                           SHIFT_n_6_39_port, A_ns(38) => SHIFT_n_6_38_port, 
                           A_ns(37) => SHIFT_n_6_37_port, A_ns(36) => 
                           SHIFT_n_6_36_port, A_ns(35) => SHIFT_n_6_35_port, 
                           A_ns(34) => SHIFT_n_6_34_port, A_ns(33) => 
                           SHIFT_n_6_33_port, A_ns(32) => SHIFT_n_6_32_port, 
                           A_ns(31) => SHIFT_n_6_31_port, A_ns(30) => 
                           SHIFT_n_6_30_port, A_ns(29) => SHIFT_n_6_29_port, 
                           A_ns(28) => SHIFT_n_6_28_port, A_ns(27) => 
                           SHIFT_n_6_27_port, A_ns(26) => SHIFT_n_6_26_port, 
                           A_ns(25) => SHIFT_n_6_25_port, A_ns(24) => 
                           SHIFT_n_6_24_port, A_ns(23) => SHIFT_n_6_23_port, 
                           A_ns(22) => SHIFT_n_6_22_port, A_ns(21) => 
                           SHIFT_n_6_21_port, A_ns(20) => SHIFT_n_6_20_port, 
                           A_ns(19) => SHIFT_n_6_19_port, A_ns(18) => 
                           SHIFT_n_6_18_port, A_ns(17) => SHIFT_n_6_17_port, 
                           A_ns(16) => SHIFT_n_6_16_port, A_ns(15) => 
                           SHIFT_n_6_15_port, A_ns(14) => SHIFT_n_6_14_port, 
                           A_ns(13) => SHIFT_n_6_13_port, A_ns(12) => 
                           SHIFT_n_6_12_port, A_ns(11) => SHIFT_n_6_11_port, 
                           A_ns(10) => SHIFT_n_6_10_port, A_ns(9) => 
                           SHIFT_n_6_9_port, A_ns(8) => SHIFT_n_6_8_port, 
                           A_ns(7) => SHIFT_n_6_7_port, A_ns(6) => 
                           SHIFT_n_6_6_port, A_ns(5) => SHIFT_n_6_5_port, 
                           A_ns(4) => SHIFT_n_6_4_port, A_ns(3) => 
                           SHIFT_n_6_3_port, A_ns(2) => SHIFT_n_6_2_port, 
                           A_ns(1) => SHIFT_n_6_1_port, A_ns(0) => 
                           SHIFT_n_6_0_port, B(45) => B(31), B(44) => B(31), 
                           B(43) => B(31), B(42) => B(31), B(41) => B(31), 
                           B(40) => B(31), B(39) => B(31), B(38) => B(31), 
                           B(37) => B(31), B(36) => B(31), B(35) => B(31), 
                           B(34) => B(31), B(33) => B(31), B(32) => B(31), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           O(45) => OTMP_6_45_port, O(44) => OTMP_6_44_port, 
                           O(43) => OTMP_6_43_port, O(42) => OTMP_6_42_port, 
                           O(41) => OTMP_6_41_port, O(40) => OTMP_6_40_port, 
                           O(39) => OTMP_6_39_port, O(38) => OTMP_6_38_port, 
                           O(37) => OTMP_6_37_port, O(36) => OTMP_6_36_port, 
                           O(35) => OTMP_6_35_port, O(34) => OTMP_6_34_port, 
                           O(33) => OTMP_6_33_port, O(32) => OTMP_6_32_port, 
                           O(31) => OTMP_6_31_port, O(30) => OTMP_6_30_port, 
                           O(29) => OTMP_6_29_port, O(28) => OTMP_6_28_port, 
                           O(27) => OTMP_6_27_port, O(26) => OTMP_6_26_port, 
                           O(25) => OTMP_6_25_port, O(24) => OTMP_6_24_port, 
                           O(23) => OTMP_6_23_port, O(22) => OTMP_6_22_port, 
                           O(21) => OTMP_6_21_port, O(20) => OTMP_6_20_port, 
                           O(19) => OTMP_6_19_port, O(18) => OTMP_6_18_port, 
                           O(17) => OTMP_6_17_port, O(16) => OTMP_6_16_port, 
                           O(15) => OTMP_6_15_port, O(14) => OTMP_6_14_port, 
                           O(13) => OTMP_6_13_port, O(12) => OTMP_6_12_port, 
                           O(11) => OTMP_6_11_port, O(10) => OTMP_6_10_port, 
                           O(9) => OTMP_6_9_port, O(8) => OTMP_6_8_port, O(7) 
                           => OTMP_6_7_port, O(6) => OTMP_6_6_port, O(5) => 
                           OTMP_6_5_port, O(4) => OTMP_6_4_port, O(3) => 
                           OTMP_6_3_port, O(2) => OTMP_6_2_port, O(1) => 
                           OTMP_6_1_port, O(0) => n_1121, A_so(45) => 
                           SHIFT_7_45_port, A_so(44) => SHIFT_7_44_port, 
                           A_so(43) => SHIFT_7_43_port, A_so(42) => 
                           SHIFT_7_42_port, A_so(41) => SHIFT_7_41_port, 
                           A_so(40) => SHIFT_7_40_port, A_so(39) => 
                           SHIFT_7_39_port, A_so(38) => SHIFT_7_38_port, 
                           A_so(37) => SHIFT_7_37_port, A_so(36) => 
                           SHIFT_7_36_port, A_so(35) => SHIFT_7_35_port, 
                           A_so(34) => SHIFT_7_34_port, A_so(33) => 
                           SHIFT_7_33_port, A_so(32) => SHIFT_7_32_port, 
                           A_so(31) => SHIFT_7_31_port, A_so(30) => 
                           SHIFT_7_30_port, A_so(29) => SHIFT_7_29_port, 
                           A_so(28) => SHIFT_7_28_port, A_so(27) => 
                           SHIFT_7_27_port, A_so(26) => SHIFT_7_26_port, 
                           A_so(25) => SHIFT_7_25_port, A_so(24) => 
                           SHIFT_7_24_port, A_so(23) => SHIFT_7_23_port, 
                           A_so(22) => SHIFT_7_22_port, A_so(21) => 
                           SHIFT_7_21_port, A_so(20) => SHIFT_7_20_port, 
                           A_so(19) => SHIFT_7_19_port, A_so(18) => 
                           SHIFT_7_18_port, A_so(17) => SHIFT_7_17_port, 
                           A_so(16) => SHIFT_7_16_port, A_so(15) => 
                           SHIFT_7_15_port, A_so(14) => SHIFT_7_14_port, 
                           A_so(13) => SHIFT_7_13_port, A_so(12) => 
                           SHIFT_7_12_port, A_so(11) => SHIFT_7_11_port, 
                           A_so(10) => SHIFT_7_10_port, A_so(9) => 
                           SHIFT_7_9_port, A_so(8) => SHIFT_7_8_port, A_so(7) 
                           => SHIFT_7_7_port, A_so(6) => SHIFT_7_6_port, 
                           A_so(5) => SHIFT_7_5_port, A_so(4) => SHIFT_7_4_port
                           , A_so(3) => SHIFT_7_3_port, A_so(2) => 
                           SHIFT_7_2_port, A_so(1) => n_1122, A_so(0) => n_1123
                           , A_nso(45) => SHIFT_n_7_45_port, A_nso(44) => 
                           SHIFT_n_7_44_port, A_nso(43) => SHIFT_n_7_43_port, 
                           A_nso(42) => SHIFT_n_7_42_port, A_nso(41) => 
                           SHIFT_n_7_41_port, A_nso(40) => SHIFT_n_7_40_port, 
                           A_nso(39) => SHIFT_n_7_39_port, A_nso(38) => 
                           SHIFT_n_7_38_port, A_nso(37) => SHIFT_n_7_37_port, 
                           A_nso(36) => SHIFT_n_7_36_port, A_nso(35) => 
                           SHIFT_n_7_35_port, A_nso(34) => SHIFT_n_7_34_port, 
                           A_nso(33) => SHIFT_n_7_33_port, A_nso(32) => 
                           SHIFT_n_7_32_port, A_nso(31) => SHIFT_n_7_31_port, 
                           A_nso(30) => SHIFT_n_7_30_port, A_nso(29) => 
                           SHIFT_n_7_29_port, A_nso(28) => SHIFT_n_7_28_port, 
                           A_nso(27) => SHIFT_n_7_27_port, A_nso(26) => 
                           SHIFT_n_7_26_port, A_nso(25) => SHIFT_n_7_25_port, 
                           A_nso(24) => SHIFT_n_7_24_port, A_nso(23) => 
                           SHIFT_n_7_23_port, A_nso(22) => SHIFT_n_7_22_port, 
                           A_nso(21) => SHIFT_n_7_21_port, A_nso(20) => 
                           SHIFT_n_7_20_port, A_nso(19) => SHIFT_n_7_19_port, 
                           A_nso(18) => SHIFT_n_7_18_port, A_nso(17) => 
                           SHIFT_n_7_17_port, A_nso(16) => SHIFT_n_7_16_port, 
                           A_nso(15) => SHIFT_n_7_15_port, A_nso(14) => 
                           SHIFT_n_7_14_port, A_nso(13) => SHIFT_n_7_13_port, 
                           A_nso(12) => SHIFT_n_7_12_port, A_nso(11) => 
                           SHIFT_n_7_11_port, A_nso(10) => SHIFT_n_7_10_port, 
                           A_nso(9) => SHIFT_n_7_9_port, A_nso(8) => 
                           SHIFT_n_7_8_port, A_nso(7) => SHIFT_n_7_7_port, 
                           A_nso(6) => SHIFT_n_7_6_port, A_nso(5) => 
                           SHIFT_n_7_5_port, A_nso(4) => SHIFT_n_7_4_port, 
                           A_nso(3) => SHIFT_n_7_3_port, A_nso(2) => 
                           SHIFT_n_7_2_port, A_nso(1) => n_1124, A_nso(0) => 
                           n_1125);
   ENC_7 : BOOTHENC_NBIT48_i14 port map( A_s(47) => SHIFT_7_45_port, A_s(46) =>
                           SHIFT_7_45_port, A_s(45) => SHIFT_7_45_port, A_s(44)
                           => SHIFT_7_44_port, A_s(43) => SHIFT_7_43_port, 
                           A_s(42) => SHIFT_7_42_port, A_s(41) => 
                           SHIFT_7_41_port, A_s(40) => SHIFT_7_40_port, A_s(39)
                           => SHIFT_7_39_port, A_s(38) => SHIFT_7_38_port, 
                           A_s(37) => SHIFT_7_37_port, A_s(36) => 
                           SHIFT_7_36_port, A_s(35) => SHIFT_7_35_port, A_s(34)
                           => SHIFT_7_34_port, A_s(33) => SHIFT_7_33_port, 
                           A_s(32) => SHIFT_7_32_port, A_s(31) => 
                           SHIFT_7_31_port, A_s(30) => SHIFT_7_30_port, A_s(29)
                           => SHIFT_7_29_port, A_s(28) => SHIFT_7_28_port, 
                           A_s(27) => SHIFT_7_27_port, A_s(26) => 
                           SHIFT_7_26_port, A_s(25) => SHIFT_7_25_port, A_s(24)
                           => SHIFT_7_24_port, A_s(23) => SHIFT_7_23_port, 
                           A_s(22) => SHIFT_7_22_port, A_s(21) => 
                           SHIFT_7_21_port, A_s(20) => SHIFT_7_20_port, A_s(19)
                           => SHIFT_7_19_port, A_s(18) => SHIFT_7_18_port, 
                           A_s(17) => SHIFT_7_17_port, A_s(16) => 
                           SHIFT_7_16_port, A_s(15) => SHIFT_7_15_port, A_s(14)
                           => SHIFT_7_14_port, A_s(13) => SHIFT_7_13_port, 
                           A_s(12) => SHIFT_7_12_port, A_s(11) => 
                           SHIFT_7_11_port, A_s(10) => SHIFT_7_10_port, A_s(9) 
                           => SHIFT_7_9_port, A_s(8) => SHIFT_7_8_port, A_s(7) 
                           => SHIFT_7_7_port, A_s(6) => SHIFT_7_6_port, A_s(5) 
                           => SHIFT_7_5_port, A_s(4) => SHIFT_7_4_port, A_s(3) 
                           => SHIFT_7_3_port, A_s(2) => SHIFT_7_2_port, A_s(1) 
                           => SHIFT_7_1_port, A_s(0) => SHIFT_7_0_port, 
                           A_ns(47) => SHIFT_n_7_45_port, A_ns(46) => 
                           SHIFT_n_7_45_port, A_ns(45) => SHIFT_n_7_45_port, 
                           A_ns(44) => SHIFT_n_7_44_port, A_ns(43) => 
                           SHIFT_n_7_43_port, A_ns(42) => SHIFT_n_7_42_port, 
                           A_ns(41) => SHIFT_n_7_41_port, A_ns(40) => 
                           SHIFT_n_7_40_port, A_ns(39) => SHIFT_n_7_39_port, 
                           A_ns(38) => SHIFT_n_7_38_port, A_ns(37) => 
                           SHIFT_n_7_37_port, A_ns(36) => SHIFT_n_7_36_port, 
                           A_ns(35) => SHIFT_n_7_35_port, A_ns(34) => 
                           SHIFT_n_7_34_port, A_ns(33) => SHIFT_n_7_33_port, 
                           A_ns(32) => SHIFT_n_7_32_port, A_ns(31) => 
                           SHIFT_n_7_31_port, A_ns(30) => SHIFT_n_7_30_port, 
                           A_ns(29) => SHIFT_n_7_29_port, A_ns(28) => 
                           SHIFT_n_7_28_port, A_ns(27) => SHIFT_n_7_27_port, 
                           A_ns(26) => SHIFT_n_7_26_port, A_ns(25) => 
                           SHIFT_n_7_25_port, A_ns(24) => SHIFT_n_7_24_port, 
                           A_ns(23) => SHIFT_n_7_23_port, A_ns(22) => 
                           SHIFT_n_7_22_port, A_ns(21) => SHIFT_n_7_21_port, 
                           A_ns(20) => SHIFT_n_7_20_port, A_ns(19) => 
                           SHIFT_n_7_19_port, A_ns(18) => SHIFT_n_7_18_port, 
                           A_ns(17) => SHIFT_n_7_17_port, A_ns(16) => 
                           SHIFT_n_7_16_port, A_ns(15) => SHIFT_n_7_15_port, 
                           A_ns(14) => SHIFT_n_7_14_port, A_ns(13) => 
                           SHIFT_n_7_13_port, A_ns(12) => SHIFT_n_7_12_port, 
                           A_ns(11) => SHIFT_n_7_11_port, A_ns(10) => 
                           SHIFT_n_7_10_port, A_ns(9) => SHIFT_n_7_9_port, 
                           A_ns(8) => SHIFT_n_7_8_port, A_ns(7) => 
                           SHIFT_n_7_7_port, A_ns(6) => SHIFT_n_7_6_port, 
                           A_ns(5) => SHIFT_n_7_5_port, A_ns(4) => 
                           SHIFT_n_7_4_port, A_ns(3) => SHIFT_n_7_3_port, 
                           A_ns(2) => SHIFT_n_7_2_port, A_ns(1) => 
                           SHIFT_n_7_1_port, A_ns(0) => SHIFT_n_7_0_port, B(47)
                           => B(31), B(46) => B(31), B(45) => B(31), B(44) => 
                           B(31), B(43) => B(31), B(42) => B(31), B(41) => 
                           B(31), B(40) => B(31), B(39) => B(31), B(38) => 
                           B(31), B(37) => B(31), B(36) => B(31), B(35) => 
                           B(31), B(34) => B(31), B(33) => B(31), B(32) => 
                           B(31), B(31) => B(31), B(30) => B(30), B(29) => 
                           B(29), B(28) => B(28), B(27) => B(27), B(26) => 
                           B(26), B(25) => B(25), B(24) => B(24), B(23) => 
                           B(23), B(22) => B(22), B(21) => B(21), B(20) => 
                           B(20), B(19) => B(19), B(18) => B(18), B(17) => 
                           B(17), B(16) => B(16), B(15) => B(15), B(14) => 
                           B(14), B(13) => B(13), B(12) => B(12), B(11) => 
                           B(11), B(10) => B(10), B(9) => B(9), B(8) => B(8), 
                           B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), O(47) => OTMP_7_47_port, O(46) => 
                           OTMP_7_46_port, O(45) => OTMP_7_45_port, O(44) => 
                           OTMP_7_44_port, O(43) => OTMP_7_43_port, O(42) => 
                           OTMP_7_42_port, O(41) => OTMP_7_41_port, O(40) => 
                           OTMP_7_40_port, O(39) => OTMP_7_39_port, O(38) => 
                           OTMP_7_38_port, O(37) => OTMP_7_37_port, O(36) => 
                           OTMP_7_36_port, O(35) => OTMP_7_35_port, O(34) => 
                           OTMP_7_34_port, O(33) => OTMP_7_33_port, O(32) => 
                           OTMP_7_32_port, O(31) => OTMP_7_31_port, O(30) => 
                           OTMP_7_30_port, O(29) => OTMP_7_29_port, O(28) => 
                           OTMP_7_28_port, O(27) => OTMP_7_27_port, O(26) => 
                           OTMP_7_26_port, O(25) => OTMP_7_25_port, O(24) => 
                           OTMP_7_24_port, O(23) => OTMP_7_23_port, O(22) => 
                           OTMP_7_22_port, O(21) => OTMP_7_21_port, O(20) => 
                           OTMP_7_20_port, O(19) => OTMP_7_19_port, O(18) => 
                           OTMP_7_18_port, O(17) => OTMP_7_17_port, O(16) => 
                           OTMP_7_16_port, O(15) => OTMP_7_15_port, O(14) => 
                           OTMP_7_14_port, O(13) => OTMP_7_13_port, O(12) => 
                           OTMP_7_12_port, O(11) => OTMP_7_11_port, O(10) => 
                           OTMP_7_10_port, O(9) => OTMP_7_9_port, O(8) => 
                           OTMP_7_8_port, O(7) => OTMP_7_7_port, O(6) => 
                           OTMP_7_6_port, O(5) => OTMP_7_5_port, O(4) => 
                           OTMP_7_4_port, O(3) => OTMP_7_3_port, O(2) => 
                           OTMP_7_2_port, O(1) => OTMP_7_1_port, O(0) => n_1126
                           , A_so(47) => SHIFT_8_47_port, A_so(46) => 
                           SHIFT_8_46_port, A_so(45) => SHIFT_8_45_port, 
                           A_so(44) => SHIFT_8_44_port, A_so(43) => 
                           SHIFT_8_43_port, A_so(42) => SHIFT_8_42_port, 
                           A_so(41) => SHIFT_8_41_port, A_so(40) => 
                           SHIFT_8_40_port, A_so(39) => SHIFT_8_39_port, 
                           A_so(38) => SHIFT_8_38_port, A_so(37) => 
                           SHIFT_8_37_port, A_so(36) => SHIFT_8_36_port, 
                           A_so(35) => SHIFT_8_35_port, A_so(34) => 
                           SHIFT_8_34_port, A_so(33) => SHIFT_8_33_port, 
                           A_so(32) => SHIFT_8_32_port, A_so(31) => 
                           SHIFT_8_31_port, A_so(30) => SHIFT_8_30_port, 
                           A_so(29) => SHIFT_8_29_port, A_so(28) => 
                           SHIFT_8_28_port, A_so(27) => SHIFT_8_27_port, 
                           A_so(26) => SHIFT_8_26_port, A_so(25) => 
                           SHIFT_8_25_port, A_so(24) => SHIFT_8_24_port, 
                           A_so(23) => SHIFT_8_23_port, A_so(22) => 
                           SHIFT_8_22_port, A_so(21) => SHIFT_8_21_port, 
                           A_so(20) => SHIFT_8_20_port, A_so(19) => 
                           SHIFT_8_19_port, A_so(18) => SHIFT_8_18_port, 
                           A_so(17) => SHIFT_8_17_port, A_so(16) => 
                           SHIFT_8_16_port, A_so(15) => SHIFT_8_15_port, 
                           A_so(14) => SHIFT_8_14_port, A_so(13) => 
                           SHIFT_8_13_port, A_so(12) => SHIFT_8_12_port, 
                           A_so(11) => SHIFT_8_11_port, A_so(10) => 
                           SHIFT_8_10_port, A_so(9) => SHIFT_8_9_port, A_so(8) 
                           => SHIFT_8_8_port, A_so(7) => SHIFT_8_7_port, 
                           A_so(6) => SHIFT_8_6_port, A_so(5) => SHIFT_8_5_port
                           , A_so(4) => SHIFT_8_4_port, A_so(3) => 
                           SHIFT_8_3_port, A_so(2) => SHIFT_8_2_port, A_so(1) 
                           => n_1127, A_so(0) => n_1128, A_nso(47) => 
                           SHIFT_n_8_47_port, A_nso(46) => SHIFT_n_8_46_port, 
                           A_nso(45) => SHIFT_n_8_45_port, A_nso(44) => 
                           SHIFT_n_8_44_port, A_nso(43) => SHIFT_n_8_43_port, 
                           A_nso(42) => SHIFT_n_8_42_port, A_nso(41) => 
                           SHIFT_n_8_41_port, A_nso(40) => SHIFT_n_8_40_port, 
                           A_nso(39) => SHIFT_n_8_39_port, A_nso(38) => 
                           SHIFT_n_8_38_port, A_nso(37) => SHIFT_n_8_37_port, 
                           A_nso(36) => SHIFT_n_8_36_port, A_nso(35) => 
                           SHIFT_n_8_35_port, A_nso(34) => SHIFT_n_8_34_port, 
                           A_nso(33) => SHIFT_n_8_33_port, A_nso(32) => 
                           SHIFT_n_8_32_port, A_nso(31) => SHIFT_n_8_31_port, 
                           A_nso(30) => SHIFT_n_8_30_port, A_nso(29) => 
                           SHIFT_n_8_29_port, A_nso(28) => SHIFT_n_8_28_port, 
                           A_nso(27) => SHIFT_n_8_27_port, A_nso(26) => 
                           SHIFT_n_8_26_port, A_nso(25) => SHIFT_n_8_25_port, 
                           A_nso(24) => SHIFT_n_8_24_port, A_nso(23) => 
                           SHIFT_n_8_23_port, A_nso(22) => SHIFT_n_8_22_port, 
                           A_nso(21) => SHIFT_n_8_21_port, A_nso(20) => 
                           SHIFT_n_8_20_port, A_nso(19) => SHIFT_n_8_19_port, 
                           A_nso(18) => SHIFT_n_8_18_port, A_nso(17) => 
                           SHIFT_n_8_17_port, A_nso(16) => SHIFT_n_8_16_port, 
                           A_nso(15) => SHIFT_n_8_15_port, A_nso(14) => 
                           SHIFT_n_8_14_port, A_nso(13) => SHIFT_n_8_13_port, 
                           A_nso(12) => SHIFT_n_8_12_port, A_nso(11) => 
                           SHIFT_n_8_11_port, A_nso(10) => SHIFT_n_8_10_port, 
                           A_nso(9) => SHIFT_n_8_9_port, A_nso(8) => 
                           SHIFT_n_8_8_port, A_nso(7) => SHIFT_n_8_7_port, 
                           A_nso(6) => SHIFT_n_8_6_port, A_nso(5) => 
                           SHIFT_n_8_5_port, A_nso(4) => SHIFT_n_8_4_port, 
                           A_nso(3) => SHIFT_n_8_3_port, A_nso(2) => 
                           SHIFT_n_8_2_port, A_nso(1) => n_1129, A_nso(0) => 
                           n_1130);
   ENC_8 : BOOTHENC_NBIT50_i16 port map( A_s(49) => SHIFT_8_47_port, A_s(48) =>
                           SHIFT_8_47_port, A_s(47) => SHIFT_8_47_port, A_s(46)
                           => SHIFT_8_46_port, A_s(45) => SHIFT_8_45_port, 
                           A_s(44) => SHIFT_8_44_port, A_s(43) => 
                           SHIFT_8_43_port, A_s(42) => SHIFT_8_42_port, A_s(41)
                           => SHIFT_8_41_port, A_s(40) => SHIFT_8_40_port, 
                           A_s(39) => SHIFT_8_39_port, A_s(38) => 
                           SHIFT_8_38_port, A_s(37) => SHIFT_8_37_port, A_s(36)
                           => SHIFT_8_36_port, A_s(35) => SHIFT_8_35_port, 
                           A_s(34) => SHIFT_8_34_port, A_s(33) => 
                           SHIFT_8_33_port, A_s(32) => SHIFT_8_32_port, A_s(31)
                           => SHIFT_8_31_port, A_s(30) => SHIFT_8_30_port, 
                           A_s(29) => SHIFT_8_29_port, A_s(28) => 
                           SHIFT_8_28_port, A_s(27) => SHIFT_8_27_port, A_s(26)
                           => SHIFT_8_26_port, A_s(25) => SHIFT_8_25_port, 
                           A_s(24) => SHIFT_8_24_port, A_s(23) => 
                           SHIFT_8_23_port, A_s(22) => SHIFT_8_22_port, A_s(21)
                           => SHIFT_8_21_port, A_s(20) => SHIFT_8_20_port, 
                           A_s(19) => SHIFT_8_19_port, A_s(18) => 
                           SHIFT_8_18_port, A_s(17) => SHIFT_8_17_port, A_s(16)
                           => SHIFT_8_16_port, A_s(15) => SHIFT_8_15_port, 
                           A_s(14) => SHIFT_8_14_port, A_s(13) => 
                           SHIFT_8_13_port, A_s(12) => SHIFT_8_12_port, A_s(11)
                           => SHIFT_8_11_port, A_s(10) => SHIFT_8_10_port, 
                           A_s(9) => SHIFT_8_9_port, A_s(8) => SHIFT_8_8_port, 
                           A_s(7) => SHIFT_8_7_port, A_s(6) => SHIFT_8_6_port, 
                           A_s(5) => SHIFT_8_5_port, A_s(4) => SHIFT_8_4_port, 
                           A_s(3) => SHIFT_8_3_port, A_s(2) => SHIFT_8_2_port, 
                           A_s(1) => SHIFT_8_1_port, A_s(0) => SHIFT_8_0_port, 
                           A_ns(49) => SHIFT_n_8_47_port, A_ns(48) => 
                           SHIFT_n_8_47_port, A_ns(47) => SHIFT_n_8_47_port, 
                           A_ns(46) => SHIFT_n_8_46_port, A_ns(45) => 
                           SHIFT_n_8_45_port, A_ns(44) => SHIFT_n_8_44_port, 
                           A_ns(43) => SHIFT_n_8_43_port, A_ns(42) => 
                           SHIFT_n_8_42_port, A_ns(41) => SHIFT_n_8_41_port, 
                           A_ns(40) => SHIFT_n_8_40_port, A_ns(39) => 
                           SHIFT_n_8_39_port, A_ns(38) => SHIFT_n_8_38_port, 
                           A_ns(37) => SHIFT_n_8_37_port, A_ns(36) => 
                           SHIFT_n_8_36_port, A_ns(35) => SHIFT_n_8_35_port, 
                           A_ns(34) => SHIFT_n_8_34_port, A_ns(33) => 
                           SHIFT_n_8_33_port, A_ns(32) => SHIFT_n_8_32_port, 
                           A_ns(31) => SHIFT_n_8_31_port, A_ns(30) => 
                           SHIFT_n_8_30_port, A_ns(29) => SHIFT_n_8_29_port, 
                           A_ns(28) => SHIFT_n_8_28_port, A_ns(27) => 
                           SHIFT_n_8_27_port, A_ns(26) => SHIFT_n_8_26_port, 
                           A_ns(25) => SHIFT_n_8_25_port, A_ns(24) => 
                           SHIFT_n_8_24_port, A_ns(23) => SHIFT_n_8_23_port, 
                           A_ns(22) => SHIFT_n_8_22_port, A_ns(21) => 
                           SHIFT_n_8_21_port, A_ns(20) => SHIFT_n_8_20_port, 
                           A_ns(19) => SHIFT_n_8_19_port, A_ns(18) => 
                           SHIFT_n_8_18_port, A_ns(17) => SHIFT_n_8_17_port, 
                           A_ns(16) => SHIFT_n_8_16_port, A_ns(15) => 
                           SHIFT_n_8_15_port, A_ns(14) => SHIFT_n_8_14_port, 
                           A_ns(13) => SHIFT_n_8_13_port, A_ns(12) => 
                           SHIFT_n_8_12_port, A_ns(11) => SHIFT_n_8_11_port, 
                           A_ns(10) => SHIFT_n_8_10_port, A_ns(9) => 
                           SHIFT_n_8_9_port, A_ns(8) => SHIFT_n_8_8_port, 
                           A_ns(7) => SHIFT_n_8_7_port, A_ns(6) => 
                           SHIFT_n_8_6_port, A_ns(5) => SHIFT_n_8_5_port, 
                           A_ns(4) => SHIFT_n_8_4_port, A_ns(3) => 
                           SHIFT_n_8_3_port, A_ns(2) => SHIFT_n_8_2_port, 
                           A_ns(1) => SHIFT_n_8_1_port, A_ns(0) => 
                           SHIFT_n_8_0_port, B(49) => B(31), B(48) => B(31), 
                           B(47) => B(31), B(46) => B(31), B(45) => B(31), 
                           B(44) => B(31), B(43) => B(31), B(42) => B(31), 
                           B(41) => B(31), B(40) => B(31), B(39) => B(31), 
                           B(38) => B(31), B(37) => B(31), B(36) => B(31), 
                           B(35) => B(31), B(34) => B(31), B(33) => B(31), 
                           B(32) => B(31), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), O(49) => OTMP_8_49_port, O(48) 
                           => OTMP_8_48_port, O(47) => OTMP_8_47_port, O(46) =>
                           OTMP_8_46_port, O(45) => OTMP_8_45_port, O(44) => 
                           OTMP_8_44_port, O(43) => OTMP_8_43_port, O(42) => 
                           OTMP_8_42_port, O(41) => OTMP_8_41_port, O(40) => 
                           OTMP_8_40_port, O(39) => OTMP_8_39_port, O(38) => 
                           OTMP_8_38_port, O(37) => OTMP_8_37_port, O(36) => 
                           OTMP_8_36_port, O(35) => OTMP_8_35_port, O(34) => 
                           OTMP_8_34_port, O(33) => OTMP_8_33_port, O(32) => 
                           OTMP_8_32_port, O(31) => OTMP_8_31_port, O(30) => 
                           OTMP_8_30_port, O(29) => OTMP_8_29_port, O(28) => 
                           OTMP_8_28_port, O(27) => OTMP_8_27_port, O(26) => 
                           OTMP_8_26_port, O(25) => OTMP_8_25_port, O(24) => 
                           OTMP_8_24_port, O(23) => OTMP_8_23_port, O(22) => 
                           OTMP_8_22_port, O(21) => OTMP_8_21_port, O(20) => 
                           OTMP_8_20_port, O(19) => OTMP_8_19_port, O(18) => 
                           OTMP_8_18_port, O(17) => OTMP_8_17_port, O(16) => 
                           OTMP_8_16_port, O(15) => OTMP_8_15_port, O(14) => 
                           OTMP_8_14_port, O(13) => OTMP_8_13_port, O(12) => 
                           OTMP_8_12_port, O(11) => OTMP_8_11_port, O(10) => 
                           OTMP_8_10_port, O(9) => OTMP_8_9_port, O(8) => 
                           OTMP_8_8_port, O(7) => OTMP_8_7_port, O(6) => 
                           OTMP_8_6_port, O(5) => OTMP_8_5_port, O(4) => 
                           OTMP_8_4_port, O(3) => OTMP_8_3_port, O(2) => 
                           OTMP_8_2_port, O(1) => OTMP_8_1_port, O(0) => n_1131
                           , A_so(49) => SHIFT_9_49_port, A_so(48) => 
                           SHIFT_9_48_port, A_so(47) => SHIFT_9_47_port, 
                           A_so(46) => SHIFT_9_46_port, A_so(45) => 
                           SHIFT_9_45_port, A_so(44) => SHIFT_9_44_port, 
                           A_so(43) => SHIFT_9_43_port, A_so(42) => 
                           SHIFT_9_42_port, A_so(41) => SHIFT_9_41_port, 
                           A_so(40) => SHIFT_9_40_port, A_so(39) => 
                           SHIFT_9_39_port, A_so(38) => SHIFT_9_38_port, 
                           A_so(37) => SHIFT_9_37_port, A_so(36) => 
                           SHIFT_9_36_port, A_so(35) => SHIFT_9_35_port, 
                           A_so(34) => SHIFT_9_34_port, A_so(33) => 
                           SHIFT_9_33_port, A_so(32) => SHIFT_9_32_port, 
                           A_so(31) => SHIFT_9_31_port, A_so(30) => 
                           SHIFT_9_30_port, A_so(29) => SHIFT_9_29_port, 
                           A_so(28) => SHIFT_9_28_port, A_so(27) => 
                           SHIFT_9_27_port, A_so(26) => SHIFT_9_26_port, 
                           A_so(25) => SHIFT_9_25_port, A_so(24) => 
                           SHIFT_9_24_port, A_so(23) => SHIFT_9_23_port, 
                           A_so(22) => SHIFT_9_22_port, A_so(21) => 
                           SHIFT_9_21_port, A_so(20) => SHIFT_9_20_port, 
                           A_so(19) => SHIFT_9_19_port, A_so(18) => 
                           SHIFT_9_18_port, A_so(17) => SHIFT_9_17_port, 
                           A_so(16) => SHIFT_9_16_port, A_so(15) => 
                           SHIFT_9_15_port, A_so(14) => SHIFT_9_14_port, 
                           A_so(13) => SHIFT_9_13_port, A_so(12) => 
                           SHIFT_9_12_port, A_so(11) => SHIFT_9_11_port, 
                           A_so(10) => SHIFT_9_10_port, A_so(9) => 
                           SHIFT_9_9_port, A_so(8) => SHIFT_9_8_port, A_so(7) 
                           => SHIFT_9_7_port, A_so(6) => SHIFT_9_6_port, 
                           A_so(5) => SHIFT_9_5_port, A_so(4) => SHIFT_9_4_port
                           , A_so(3) => SHIFT_9_3_port, A_so(2) => 
                           SHIFT_9_2_port, A_so(1) => n_1132, A_so(0) => n_1133
                           , A_nso(49) => SHIFT_n_9_49_port, A_nso(48) => 
                           SHIFT_n_9_48_port, A_nso(47) => SHIFT_n_9_47_port, 
                           A_nso(46) => SHIFT_n_9_46_port, A_nso(45) => 
                           SHIFT_n_9_45_port, A_nso(44) => SHIFT_n_9_44_port, 
                           A_nso(43) => SHIFT_n_9_43_port, A_nso(42) => 
                           SHIFT_n_9_42_port, A_nso(41) => SHIFT_n_9_41_port, 
                           A_nso(40) => SHIFT_n_9_40_port, A_nso(39) => 
                           SHIFT_n_9_39_port, A_nso(38) => SHIFT_n_9_38_port, 
                           A_nso(37) => SHIFT_n_9_37_port, A_nso(36) => 
                           SHIFT_n_9_36_port, A_nso(35) => SHIFT_n_9_35_port, 
                           A_nso(34) => SHIFT_n_9_34_port, A_nso(33) => 
                           SHIFT_n_9_33_port, A_nso(32) => SHIFT_n_9_32_port, 
                           A_nso(31) => SHIFT_n_9_31_port, A_nso(30) => 
                           SHIFT_n_9_30_port, A_nso(29) => SHIFT_n_9_29_port, 
                           A_nso(28) => SHIFT_n_9_28_port, A_nso(27) => 
                           SHIFT_n_9_27_port, A_nso(26) => SHIFT_n_9_26_port, 
                           A_nso(25) => SHIFT_n_9_25_port, A_nso(24) => 
                           SHIFT_n_9_24_port, A_nso(23) => SHIFT_n_9_23_port, 
                           A_nso(22) => SHIFT_n_9_22_port, A_nso(21) => 
                           SHIFT_n_9_21_port, A_nso(20) => SHIFT_n_9_20_port, 
                           A_nso(19) => SHIFT_n_9_19_port, A_nso(18) => 
                           SHIFT_n_9_18_port, A_nso(17) => SHIFT_n_9_17_port, 
                           A_nso(16) => SHIFT_n_9_16_port, A_nso(15) => 
                           SHIFT_n_9_15_port, A_nso(14) => SHIFT_n_9_14_port, 
                           A_nso(13) => SHIFT_n_9_13_port, A_nso(12) => 
                           SHIFT_n_9_12_port, A_nso(11) => SHIFT_n_9_11_port, 
                           A_nso(10) => SHIFT_n_9_10_port, A_nso(9) => 
                           SHIFT_n_9_9_port, A_nso(8) => SHIFT_n_9_8_port, 
                           A_nso(7) => SHIFT_n_9_7_port, A_nso(6) => 
                           SHIFT_n_9_6_port, A_nso(5) => SHIFT_n_9_5_port, 
                           A_nso(4) => SHIFT_n_9_4_port, A_nso(3) => 
                           SHIFT_n_9_3_port, A_nso(2) => SHIFT_n_9_2_port, 
                           A_nso(1) => n_1134, A_nso(0) => n_1135);
   ENC_9 : BOOTHENC_NBIT52_i18 port map( A_s(51) => SHIFT_9_49_port, A_s(50) =>
                           SHIFT_9_49_port, A_s(49) => SHIFT_9_49_port, A_s(48)
                           => SHIFT_9_48_port, A_s(47) => SHIFT_9_47_port, 
                           A_s(46) => SHIFT_9_46_port, A_s(45) => 
                           SHIFT_9_45_port, A_s(44) => SHIFT_9_44_port, A_s(43)
                           => SHIFT_9_43_port, A_s(42) => SHIFT_9_42_port, 
                           A_s(41) => SHIFT_9_41_port, A_s(40) => 
                           SHIFT_9_40_port, A_s(39) => SHIFT_9_39_port, A_s(38)
                           => SHIFT_9_38_port, A_s(37) => SHIFT_9_37_port, 
                           A_s(36) => SHIFT_9_36_port, A_s(35) => 
                           SHIFT_9_35_port, A_s(34) => SHIFT_9_34_port, A_s(33)
                           => SHIFT_9_33_port, A_s(32) => SHIFT_9_32_port, 
                           A_s(31) => SHIFT_9_31_port, A_s(30) => 
                           SHIFT_9_30_port, A_s(29) => SHIFT_9_29_port, A_s(28)
                           => SHIFT_9_28_port, A_s(27) => SHIFT_9_27_port, 
                           A_s(26) => SHIFT_9_26_port, A_s(25) => 
                           SHIFT_9_25_port, A_s(24) => SHIFT_9_24_port, A_s(23)
                           => SHIFT_9_23_port, A_s(22) => SHIFT_9_22_port, 
                           A_s(21) => SHIFT_9_21_port, A_s(20) => 
                           SHIFT_9_20_port, A_s(19) => SHIFT_9_19_port, A_s(18)
                           => SHIFT_9_18_port, A_s(17) => SHIFT_9_17_port, 
                           A_s(16) => SHIFT_9_16_port, A_s(15) => 
                           SHIFT_9_15_port, A_s(14) => SHIFT_9_14_port, A_s(13)
                           => SHIFT_9_13_port, A_s(12) => SHIFT_9_12_port, 
                           A_s(11) => SHIFT_9_11_port, A_s(10) => 
                           SHIFT_9_10_port, A_s(9) => SHIFT_9_9_port, A_s(8) =>
                           SHIFT_9_8_port, A_s(7) => SHIFT_9_7_port, A_s(6) => 
                           SHIFT_9_6_port, A_s(5) => SHIFT_9_5_port, A_s(4) => 
                           SHIFT_9_4_port, A_s(3) => SHIFT_9_3_port, A_s(2) => 
                           SHIFT_9_2_port, A_s(1) => SHIFT_9_1_port, A_s(0) => 
                           SHIFT_9_0_port, A_ns(51) => SHIFT_n_9_49_port, 
                           A_ns(50) => SHIFT_n_9_49_port, A_ns(49) => 
                           SHIFT_n_9_49_port, A_ns(48) => SHIFT_n_9_48_port, 
                           A_ns(47) => SHIFT_n_9_47_port, A_ns(46) => 
                           SHIFT_n_9_46_port, A_ns(45) => SHIFT_n_9_45_port, 
                           A_ns(44) => SHIFT_n_9_44_port, A_ns(43) => 
                           SHIFT_n_9_43_port, A_ns(42) => SHIFT_n_9_42_port, 
                           A_ns(41) => SHIFT_n_9_41_port, A_ns(40) => 
                           SHIFT_n_9_40_port, A_ns(39) => SHIFT_n_9_39_port, 
                           A_ns(38) => SHIFT_n_9_38_port, A_ns(37) => 
                           SHIFT_n_9_37_port, A_ns(36) => SHIFT_n_9_36_port, 
                           A_ns(35) => SHIFT_n_9_35_port, A_ns(34) => 
                           SHIFT_n_9_34_port, A_ns(33) => SHIFT_n_9_33_port, 
                           A_ns(32) => SHIFT_n_9_32_port, A_ns(31) => 
                           SHIFT_n_9_31_port, A_ns(30) => SHIFT_n_9_30_port, 
                           A_ns(29) => SHIFT_n_9_29_port, A_ns(28) => 
                           SHIFT_n_9_28_port, A_ns(27) => SHIFT_n_9_27_port, 
                           A_ns(26) => SHIFT_n_9_26_port, A_ns(25) => 
                           SHIFT_n_9_25_port, A_ns(24) => SHIFT_n_9_24_port, 
                           A_ns(23) => SHIFT_n_9_23_port, A_ns(22) => 
                           SHIFT_n_9_22_port, A_ns(21) => SHIFT_n_9_21_port, 
                           A_ns(20) => SHIFT_n_9_20_port, A_ns(19) => 
                           SHIFT_n_9_19_port, A_ns(18) => SHIFT_n_9_18_port, 
                           A_ns(17) => SHIFT_n_9_17_port, A_ns(16) => 
                           SHIFT_n_9_16_port, A_ns(15) => SHIFT_n_9_15_port, 
                           A_ns(14) => SHIFT_n_9_14_port, A_ns(13) => 
                           SHIFT_n_9_13_port, A_ns(12) => SHIFT_n_9_12_port, 
                           A_ns(11) => SHIFT_n_9_11_port, A_ns(10) => 
                           SHIFT_n_9_10_port, A_ns(9) => SHIFT_n_9_9_port, 
                           A_ns(8) => SHIFT_n_9_8_port, A_ns(7) => 
                           SHIFT_n_9_7_port, A_ns(6) => SHIFT_n_9_6_port, 
                           A_ns(5) => SHIFT_n_9_5_port, A_ns(4) => 
                           SHIFT_n_9_4_port, A_ns(3) => SHIFT_n_9_3_port, 
                           A_ns(2) => SHIFT_n_9_2_port, A_ns(1) => 
                           SHIFT_n_9_1_port, A_ns(0) => SHIFT_n_9_0_port, B(51)
                           => B(31), B(50) => B(31), B(49) => B(31), B(48) => 
                           B(31), B(47) => B(31), B(46) => B(31), B(45) => 
                           B(31), B(44) => B(31), B(43) => B(31), B(42) => 
                           B(31), B(41) => B(31), B(40) => B(31), B(39) => 
                           B(31), B(38) => B(31), B(37) => B(31), B(36) => 
                           B(31), B(35) => B(31), B(34) => B(31), B(33) => 
                           B(31), B(32) => B(31), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), O(51) => OTMP_9_51_port, 
                           O(50) => OTMP_9_50_port, O(49) => OTMP_9_49_port, 
                           O(48) => OTMP_9_48_port, O(47) => OTMP_9_47_port, 
                           O(46) => OTMP_9_46_port, O(45) => OTMP_9_45_port, 
                           O(44) => OTMP_9_44_port, O(43) => OTMP_9_43_port, 
                           O(42) => OTMP_9_42_port, O(41) => OTMP_9_41_port, 
                           O(40) => OTMP_9_40_port, O(39) => OTMP_9_39_port, 
                           O(38) => OTMP_9_38_port, O(37) => OTMP_9_37_port, 
                           O(36) => OTMP_9_36_port, O(35) => OTMP_9_35_port, 
                           O(34) => OTMP_9_34_port, O(33) => OTMP_9_33_port, 
                           O(32) => OTMP_9_32_port, O(31) => OTMP_9_31_port, 
                           O(30) => OTMP_9_30_port, O(29) => OTMP_9_29_port, 
                           O(28) => OTMP_9_28_port, O(27) => OTMP_9_27_port, 
                           O(26) => OTMP_9_26_port, O(25) => OTMP_9_25_port, 
                           O(24) => OTMP_9_24_port, O(23) => OTMP_9_23_port, 
                           O(22) => OTMP_9_22_port, O(21) => OTMP_9_21_port, 
                           O(20) => OTMP_9_20_port, O(19) => OTMP_9_19_port, 
                           O(18) => OTMP_9_18_port, O(17) => OTMP_9_17_port, 
                           O(16) => OTMP_9_16_port, O(15) => OTMP_9_15_port, 
                           O(14) => OTMP_9_14_port, O(13) => OTMP_9_13_port, 
                           O(12) => OTMP_9_12_port, O(11) => OTMP_9_11_port, 
                           O(10) => OTMP_9_10_port, O(9) => OTMP_9_9_port, O(8)
                           => OTMP_9_8_port, O(7) => OTMP_9_7_port, O(6) => 
                           OTMP_9_6_port, O(5) => OTMP_9_5_port, O(4) => 
                           OTMP_9_4_port, O(3) => OTMP_9_3_port, O(2) => 
                           OTMP_9_2_port, O(1) => OTMP_9_1_port, O(0) => n_1136
                           , A_so(51) => SHIFT_10_51_port, A_so(50) => 
                           SHIFT_10_50_port, A_so(49) => SHIFT_10_49_port, 
                           A_so(48) => SHIFT_10_48_port, A_so(47) => 
                           SHIFT_10_47_port, A_so(46) => SHIFT_10_46_port, 
                           A_so(45) => SHIFT_10_45_port, A_so(44) => 
                           SHIFT_10_44_port, A_so(43) => SHIFT_10_43_port, 
                           A_so(42) => SHIFT_10_42_port, A_so(41) => 
                           SHIFT_10_41_port, A_so(40) => SHIFT_10_40_port, 
                           A_so(39) => SHIFT_10_39_port, A_so(38) => 
                           SHIFT_10_38_port, A_so(37) => SHIFT_10_37_port, 
                           A_so(36) => SHIFT_10_36_port, A_so(35) => 
                           SHIFT_10_35_port, A_so(34) => SHIFT_10_34_port, 
                           A_so(33) => SHIFT_10_33_port, A_so(32) => 
                           SHIFT_10_32_port, A_so(31) => SHIFT_10_31_port, 
                           A_so(30) => SHIFT_10_30_port, A_so(29) => 
                           SHIFT_10_29_port, A_so(28) => SHIFT_10_28_port, 
                           A_so(27) => SHIFT_10_27_port, A_so(26) => 
                           SHIFT_10_26_port, A_so(25) => SHIFT_10_25_port, 
                           A_so(24) => SHIFT_10_24_port, A_so(23) => 
                           SHIFT_10_23_port, A_so(22) => SHIFT_10_22_port, 
                           A_so(21) => SHIFT_10_21_port, A_so(20) => 
                           SHIFT_10_20_port, A_so(19) => SHIFT_10_19_port, 
                           A_so(18) => SHIFT_10_18_port, A_so(17) => 
                           SHIFT_10_17_port, A_so(16) => SHIFT_10_16_port, 
                           A_so(15) => SHIFT_10_15_port, A_so(14) => 
                           SHIFT_10_14_port, A_so(13) => SHIFT_10_13_port, 
                           A_so(12) => SHIFT_10_12_port, A_so(11) => 
                           SHIFT_10_11_port, A_so(10) => SHIFT_10_10_port, 
                           A_so(9) => SHIFT_10_9_port, A_so(8) => 
                           SHIFT_10_8_port, A_so(7) => SHIFT_10_7_port, A_so(6)
                           => SHIFT_10_6_port, A_so(5) => SHIFT_10_5_port, 
                           A_so(4) => SHIFT_10_4_port, A_so(3) => 
                           SHIFT_10_3_port, A_so(2) => SHIFT_10_2_port, A_so(1)
                           => n_1137, A_so(0) => n_1138, A_nso(51) => 
                           SHIFT_n_10_51_port, A_nso(50) => SHIFT_n_10_50_port,
                           A_nso(49) => SHIFT_n_10_49_port, A_nso(48) => 
                           SHIFT_n_10_48_port, A_nso(47) => SHIFT_n_10_47_port,
                           A_nso(46) => SHIFT_n_10_46_port, A_nso(45) => 
                           SHIFT_n_10_45_port, A_nso(44) => SHIFT_n_10_44_port,
                           A_nso(43) => SHIFT_n_10_43_port, A_nso(42) => 
                           SHIFT_n_10_42_port, A_nso(41) => SHIFT_n_10_41_port,
                           A_nso(40) => SHIFT_n_10_40_port, A_nso(39) => 
                           SHIFT_n_10_39_port, A_nso(38) => SHIFT_n_10_38_port,
                           A_nso(37) => SHIFT_n_10_37_port, A_nso(36) => 
                           SHIFT_n_10_36_port, A_nso(35) => SHIFT_n_10_35_port,
                           A_nso(34) => SHIFT_n_10_34_port, A_nso(33) => 
                           SHIFT_n_10_33_port, A_nso(32) => SHIFT_n_10_32_port,
                           A_nso(31) => SHIFT_n_10_31_port, A_nso(30) => 
                           SHIFT_n_10_30_port, A_nso(29) => SHIFT_n_10_29_port,
                           A_nso(28) => SHIFT_n_10_28_port, A_nso(27) => 
                           SHIFT_n_10_27_port, A_nso(26) => SHIFT_n_10_26_port,
                           A_nso(25) => SHIFT_n_10_25_port, A_nso(24) => 
                           SHIFT_n_10_24_port, A_nso(23) => SHIFT_n_10_23_port,
                           A_nso(22) => SHIFT_n_10_22_port, A_nso(21) => 
                           SHIFT_n_10_21_port, A_nso(20) => SHIFT_n_10_20_port,
                           A_nso(19) => SHIFT_n_10_19_port, A_nso(18) => 
                           SHIFT_n_10_18_port, A_nso(17) => SHIFT_n_10_17_port,
                           A_nso(16) => SHIFT_n_10_16_port, A_nso(15) => 
                           SHIFT_n_10_15_port, A_nso(14) => SHIFT_n_10_14_port,
                           A_nso(13) => SHIFT_n_10_13_port, A_nso(12) => 
                           SHIFT_n_10_12_port, A_nso(11) => SHIFT_n_10_11_port,
                           A_nso(10) => SHIFT_n_10_10_port, A_nso(9) => 
                           SHIFT_n_10_9_port, A_nso(8) => SHIFT_n_10_8_port, 
                           A_nso(7) => SHIFT_n_10_7_port, A_nso(6) => 
                           SHIFT_n_10_6_port, A_nso(5) => SHIFT_n_10_5_port, 
                           A_nso(4) => SHIFT_n_10_4_port, A_nso(3) => 
                           SHIFT_n_10_3_port, A_nso(2) => SHIFT_n_10_2_port, 
                           A_nso(1) => n_1139, A_nso(0) => n_1140);
   ENC_10 : BOOTHENC_NBIT54_i20 port map( A_s(53) => SHIFT_10_51_port, A_s(52) 
                           => SHIFT_10_51_port, A_s(51) => SHIFT_10_51_port, 
                           A_s(50) => SHIFT_10_50_port, A_s(49) => 
                           SHIFT_10_49_port, A_s(48) => SHIFT_10_48_port, 
                           A_s(47) => SHIFT_10_47_port, A_s(46) => 
                           SHIFT_10_46_port, A_s(45) => SHIFT_10_45_port, 
                           A_s(44) => SHIFT_10_44_port, A_s(43) => 
                           SHIFT_10_43_port, A_s(42) => SHIFT_10_42_port, 
                           A_s(41) => SHIFT_10_41_port, A_s(40) => 
                           SHIFT_10_40_port, A_s(39) => SHIFT_10_39_port, 
                           A_s(38) => SHIFT_10_38_port, A_s(37) => 
                           SHIFT_10_37_port, A_s(36) => SHIFT_10_36_port, 
                           A_s(35) => SHIFT_10_35_port, A_s(34) => 
                           SHIFT_10_34_port, A_s(33) => SHIFT_10_33_port, 
                           A_s(32) => SHIFT_10_32_port, A_s(31) => 
                           SHIFT_10_31_port, A_s(30) => SHIFT_10_30_port, 
                           A_s(29) => SHIFT_10_29_port, A_s(28) => 
                           SHIFT_10_28_port, A_s(27) => SHIFT_10_27_port, 
                           A_s(26) => SHIFT_10_26_port, A_s(25) => 
                           SHIFT_10_25_port, A_s(24) => SHIFT_10_24_port, 
                           A_s(23) => SHIFT_10_23_port, A_s(22) => 
                           SHIFT_10_22_port, A_s(21) => SHIFT_10_21_port, 
                           A_s(20) => SHIFT_10_20_port, A_s(19) => 
                           SHIFT_10_19_port, A_s(18) => SHIFT_10_18_port, 
                           A_s(17) => SHIFT_10_17_port, A_s(16) => 
                           SHIFT_10_16_port, A_s(15) => SHIFT_10_15_port, 
                           A_s(14) => SHIFT_10_14_port, A_s(13) => 
                           SHIFT_10_13_port, A_s(12) => SHIFT_10_12_port, 
                           A_s(11) => SHIFT_10_11_port, A_s(10) => 
                           SHIFT_10_10_port, A_s(9) => SHIFT_10_9_port, A_s(8) 
                           => SHIFT_10_8_port, A_s(7) => SHIFT_10_7_port, 
                           A_s(6) => SHIFT_10_6_port, A_s(5) => SHIFT_10_5_port
                           , A_s(4) => SHIFT_10_4_port, A_s(3) => 
                           SHIFT_10_3_port, A_s(2) => SHIFT_10_2_port, A_s(1) 
                           => SHIFT_10_1_port, A_s(0) => SHIFT_10_0_port, 
                           A_ns(53) => SHIFT_n_10_51_port, A_ns(52) => 
                           SHIFT_n_10_51_port, A_ns(51) => SHIFT_n_10_51_port, 
                           A_ns(50) => SHIFT_n_10_50_port, A_ns(49) => 
                           SHIFT_n_10_49_port, A_ns(48) => SHIFT_n_10_48_port, 
                           A_ns(47) => SHIFT_n_10_47_port, A_ns(46) => 
                           SHIFT_n_10_46_port, A_ns(45) => SHIFT_n_10_45_port, 
                           A_ns(44) => SHIFT_n_10_44_port, A_ns(43) => 
                           SHIFT_n_10_43_port, A_ns(42) => SHIFT_n_10_42_port, 
                           A_ns(41) => SHIFT_n_10_41_port, A_ns(40) => 
                           SHIFT_n_10_40_port, A_ns(39) => SHIFT_n_10_39_port, 
                           A_ns(38) => SHIFT_n_10_38_port, A_ns(37) => 
                           SHIFT_n_10_37_port, A_ns(36) => SHIFT_n_10_36_port, 
                           A_ns(35) => SHIFT_n_10_35_port, A_ns(34) => 
                           SHIFT_n_10_34_port, A_ns(33) => SHIFT_n_10_33_port, 
                           A_ns(32) => SHIFT_n_10_32_port, A_ns(31) => 
                           SHIFT_n_10_31_port, A_ns(30) => SHIFT_n_10_30_port, 
                           A_ns(29) => SHIFT_n_10_29_port, A_ns(28) => 
                           SHIFT_n_10_28_port, A_ns(27) => SHIFT_n_10_27_port, 
                           A_ns(26) => SHIFT_n_10_26_port, A_ns(25) => 
                           SHIFT_n_10_25_port, A_ns(24) => SHIFT_n_10_24_port, 
                           A_ns(23) => SHIFT_n_10_23_port, A_ns(22) => 
                           SHIFT_n_10_22_port, A_ns(21) => SHIFT_n_10_21_port, 
                           A_ns(20) => SHIFT_n_10_20_port, A_ns(19) => 
                           SHIFT_n_10_19_port, A_ns(18) => SHIFT_n_10_18_port, 
                           A_ns(17) => SHIFT_n_10_17_port, A_ns(16) => 
                           SHIFT_n_10_16_port, A_ns(15) => SHIFT_n_10_15_port, 
                           A_ns(14) => SHIFT_n_10_14_port, A_ns(13) => 
                           SHIFT_n_10_13_port, A_ns(12) => SHIFT_n_10_12_port, 
                           A_ns(11) => SHIFT_n_10_11_port, A_ns(10) => 
                           SHIFT_n_10_10_port, A_ns(9) => SHIFT_n_10_9_port, 
                           A_ns(8) => SHIFT_n_10_8_port, A_ns(7) => 
                           SHIFT_n_10_7_port, A_ns(6) => SHIFT_n_10_6_port, 
                           A_ns(5) => SHIFT_n_10_5_port, A_ns(4) => 
                           SHIFT_n_10_4_port, A_ns(3) => SHIFT_n_10_3_port, 
                           A_ns(2) => SHIFT_n_10_2_port, A_ns(1) => 
                           SHIFT_n_10_1_port, A_ns(0) => SHIFT_n_10_0_port, 
                           B(53) => B(31), B(52) => B(31), B(51) => B(31), 
                           B(50) => B(31), B(49) => B(31), B(48) => B(31), 
                           B(47) => B(31), B(46) => B(31), B(45) => B(31), 
                           B(44) => B(31), B(43) => B(31), B(42) => B(31), 
                           B(41) => B(31), B(40) => B(31), B(39) => B(31), 
                           B(38) => B(31), B(37) => B(31), B(36) => B(31), 
                           B(35) => B(31), B(34) => B(31), B(33) => B(31), 
                           B(32) => B(31), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), O(53) => OTMP_10_53_port, O(52) 
                           => OTMP_10_52_port, O(51) => OTMP_10_51_port, O(50) 
                           => OTMP_10_50_port, O(49) => OTMP_10_49_port, O(48) 
                           => OTMP_10_48_port, O(47) => OTMP_10_47_port, O(46) 
                           => OTMP_10_46_port, O(45) => OTMP_10_45_port, O(44) 
                           => OTMP_10_44_port, O(43) => OTMP_10_43_port, O(42) 
                           => OTMP_10_42_port, O(41) => OTMP_10_41_port, O(40) 
                           => OTMP_10_40_port, O(39) => OTMP_10_39_port, O(38) 
                           => OTMP_10_38_port, O(37) => OTMP_10_37_port, O(36) 
                           => OTMP_10_36_port, O(35) => OTMP_10_35_port, O(34) 
                           => OTMP_10_34_port, O(33) => OTMP_10_33_port, O(32) 
                           => OTMP_10_32_port, O(31) => OTMP_10_31_port, O(30) 
                           => OTMP_10_30_port, O(29) => OTMP_10_29_port, O(28) 
                           => OTMP_10_28_port, O(27) => OTMP_10_27_port, O(26) 
                           => OTMP_10_26_port, O(25) => OTMP_10_25_port, O(24) 
                           => OTMP_10_24_port, O(23) => OTMP_10_23_port, O(22) 
                           => OTMP_10_22_port, O(21) => OTMP_10_21_port, O(20) 
                           => OTMP_10_20_port, O(19) => OTMP_10_19_port, O(18) 
                           => OTMP_10_18_port, O(17) => OTMP_10_17_port, O(16) 
                           => OTMP_10_16_port, O(15) => OTMP_10_15_port, O(14) 
                           => OTMP_10_14_port, O(13) => OTMP_10_13_port, O(12) 
                           => OTMP_10_12_port, O(11) => OTMP_10_11_port, O(10) 
                           => OTMP_10_10_port, O(9) => OTMP_10_9_port, O(8) => 
                           OTMP_10_8_port, O(7) => OTMP_10_7_port, O(6) => 
                           OTMP_10_6_port, O(5) => OTMP_10_5_port, O(4) => 
                           OTMP_10_4_port, O(3) => OTMP_10_3_port, O(2) => 
                           OTMP_10_2_port, O(1) => OTMP_10_1_port, O(0) => 
                           n_1141, A_so(53) => SHIFT_11_53_port, A_so(52) => 
                           SHIFT_11_52_port, A_so(51) => SHIFT_11_51_port, 
                           A_so(50) => SHIFT_11_50_port, A_so(49) => 
                           SHIFT_11_49_port, A_so(48) => SHIFT_11_48_port, 
                           A_so(47) => SHIFT_11_47_port, A_so(46) => 
                           SHIFT_11_46_port, A_so(45) => SHIFT_11_45_port, 
                           A_so(44) => SHIFT_11_44_port, A_so(43) => 
                           SHIFT_11_43_port, A_so(42) => SHIFT_11_42_port, 
                           A_so(41) => SHIFT_11_41_port, A_so(40) => 
                           SHIFT_11_40_port, A_so(39) => SHIFT_11_39_port, 
                           A_so(38) => SHIFT_11_38_port, A_so(37) => 
                           SHIFT_11_37_port, A_so(36) => SHIFT_11_36_port, 
                           A_so(35) => SHIFT_11_35_port, A_so(34) => 
                           SHIFT_11_34_port, A_so(33) => SHIFT_11_33_port, 
                           A_so(32) => SHIFT_11_32_port, A_so(31) => 
                           SHIFT_11_31_port, A_so(30) => SHIFT_11_30_port, 
                           A_so(29) => SHIFT_11_29_port, A_so(28) => 
                           SHIFT_11_28_port, A_so(27) => SHIFT_11_27_port, 
                           A_so(26) => SHIFT_11_26_port, A_so(25) => 
                           SHIFT_11_25_port, A_so(24) => SHIFT_11_24_port, 
                           A_so(23) => SHIFT_11_23_port, A_so(22) => 
                           SHIFT_11_22_port, A_so(21) => SHIFT_11_21_port, 
                           A_so(20) => SHIFT_11_20_port, A_so(19) => 
                           SHIFT_11_19_port, A_so(18) => SHIFT_11_18_port, 
                           A_so(17) => SHIFT_11_17_port, A_so(16) => 
                           SHIFT_11_16_port, A_so(15) => SHIFT_11_15_port, 
                           A_so(14) => SHIFT_11_14_port, A_so(13) => 
                           SHIFT_11_13_port, A_so(12) => SHIFT_11_12_port, 
                           A_so(11) => SHIFT_11_11_port, A_so(10) => 
                           SHIFT_11_10_port, A_so(9) => SHIFT_11_9_port, 
                           A_so(8) => SHIFT_11_8_port, A_so(7) => 
                           SHIFT_11_7_port, A_so(6) => SHIFT_11_6_port, A_so(5)
                           => SHIFT_11_5_port, A_so(4) => SHIFT_11_4_port, 
                           A_so(3) => SHIFT_11_3_port, A_so(2) => 
                           SHIFT_11_2_port, A_so(1) => n_1142, A_so(0) => 
                           n_1143, A_nso(53) => SHIFT_n_11_53_port, A_nso(52) 
                           => SHIFT_n_11_52_port, A_nso(51) => 
                           SHIFT_n_11_51_port, A_nso(50) => SHIFT_n_11_50_port,
                           A_nso(49) => SHIFT_n_11_49_port, A_nso(48) => 
                           SHIFT_n_11_48_port, A_nso(47) => SHIFT_n_11_47_port,
                           A_nso(46) => SHIFT_n_11_46_port, A_nso(45) => 
                           SHIFT_n_11_45_port, A_nso(44) => SHIFT_n_11_44_port,
                           A_nso(43) => SHIFT_n_11_43_port, A_nso(42) => 
                           SHIFT_n_11_42_port, A_nso(41) => SHIFT_n_11_41_port,
                           A_nso(40) => SHIFT_n_11_40_port, A_nso(39) => 
                           SHIFT_n_11_39_port, A_nso(38) => SHIFT_n_11_38_port,
                           A_nso(37) => SHIFT_n_11_37_port, A_nso(36) => 
                           SHIFT_n_11_36_port, A_nso(35) => SHIFT_n_11_35_port,
                           A_nso(34) => SHIFT_n_11_34_port, A_nso(33) => 
                           SHIFT_n_11_33_port, A_nso(32) => SHIFT_n_11_32_port,
                           A_nso(31) => SHIFT_n_11_31_port, A_nso(30) => 
                           SHIFT_n_11_30_port, A_nso(29) => SHIFT_n_11_29_port,
                           A_nso(28) => SHIFT_n_11_28_port, A_nso(27) => 
                           SHIFT_n_11_27_port, A_nso(26) => SHIFT_n_11_26_port,
                           A_nso(25) => SHIFT_n_11_25_port, A_nso(24) => 
                           SHIFT_n_11_24_port, A_nso(23) => SHIFT_n_11_23_port,
                           A_nso(22) => SHIFT_n_11_22_port, A_nso(21) => 
                           SHIFT_n_11_21_port, A_nso(20) => SHIFT_n_11_20_port,
                           A_nso(19) => SHIFT_n_11_19_port, A_nso(18) => 
                           SHIFT_n_11_18_port, A_nso(17) => SHIFT_n_11_17_port,
                           A_nso(16) => SHIFT_n_11_16_port, A_nso(15) => 
                           SHIFT_n_11_15_port, A_nso(14) => SHIFT_n_11_14_port,
                           A_nso(13) => SHIFT_n_11_13_port, A_nso(12) => 
                           SHIFT_n_11_12_port, A_nso(11) => SHIFT_n_11_11_port,
                           A_nso(10) => SHIFT_n_11_10_port, A_nso(9) => 
                           SHIFT_n_11_9_port, A_nso(8) => SHIFT_n_11_8_port, 
                           A_nso(7) => SHIFT_n_11_7_port, A_nso(6) => 
                           SHIFT_n_11_6_port, A_nso(5) => SHIFT_n_11_5_port, 
                           A_nso(4) => SHIFT_n_11_4_port, A_nso(3) => 
                           SHIFT_n_11_3_port, A_nso(2) => SHIFT_n_11_2_port, 
                           A_nso(1) => n_1144, A_nso(0) => n_1145);
   ENC_11 : BOOTHENC_NBIT56_i22 port map( A_s(55) => SHIFT_11_53_port, A_s(54) 
                           => SHIFT_11_53_port, A_s(53) => SHIFT_11_53_port, 
                           A_s(52) => SHIFT_11_52_port, A_s(51) => 
                           SHIFT_11_51_port, A_s(50) => SHIFT_11_50_port, 
                           A_s(49) => SHIFT_11_49_port, A_s(48) => 
                           SHIFT_11_48_port, A_s(47) => SHIFT_11_47_port, 
                           A_s(46) => SHIFT_11_46_port, A_s(45) => 
                           SHIFT_11_45_port, A_s(44) => SHIFT_11_44_port, 
                           A_s(43) => SHIFT_11_43_port, A_s(42) => 
                           SHIFT_11_42_port, A_s(41) => SHIFT_11_41_port, 
                           A_s(40) => SHIFT_11_40_port, A_s(39) => 
                           SHIFT_11_39_port, A_s(38) => SHIFT_11_38_port, 
                           A_s(37) => SHIFT_11_37_port, A_s(36) => 
                           SHIFT_11_36_port, A_s(35) => SHIFT_11_35_port, 
                           A_s(34) => SHIFT_11_34_port, A_s(33) => 
                           SHIFT_11_33_port, A_s(32) => SHIFT_11_32_port, 
                           A_s(31) => SHIFT_11_31_port, A_s(30) => 
                           SHIFT_11_30_port, A_s(29) => SHIFT_11_29_port, 
                           A_s(28) => SHIFT_11_28_port, A_s(27) => 
                           SHIFT_11_27_port, A_s(26) => SHIFT_11_26_port, 
                           A_s(25) => SHIFT_11_25_port, A_s(24) => 
                           SHIFT_11_24_port, A_s(23) => SHIFT_11_23_port, 
                           A_s(22) => SHIFT_11_22_port, A_s(21) => 
                           SHIFT_11_21_port, A_s(20) => SHIFT_11_20_port, 
                           A_s(19) => SHIFT_11_19_port, A_s(18) => 
                           SHIFT_11_18_port, A_s(17) => SHIFT_11_17_port, 
                           A_s(16) => SHIFT_11_16_port, A_s(15) => 
                           SHIFT_11_15_port, A_s(14) => SHIFT_11_14_port, 
                           A_s(13) => SHIFT_11_13_port, A_s(12) => 
                           SHIFT_11_12_port, A_s(11) => SHIFT_11_11_port, 
                           A_s(10) => SHIFT_11_10_port, A_s(9) => 
                           SHIFT_11_9_port, A_s(8) => SHIFT_11_8_port, A_s(7) 
                           => SHIFT_11_7_port, A_s(6) => SHIFT_11_6_port, 
                           A_s(5) => SHIFT_11_5_port, A_s(4) => SHIFT_11_4_port
                           , A_s(3) => SHIFT_11_3_port, A_s(2) => 
                           SHIFT_11_2_port, A_s(1) => SHIFT_11_1_port, A_s(0) 
                           => SHIFT_11_0_port, A_ns(55) => SHIFT_n_11_53_port, 
                           A_ns(54) => SHIFT_n_11_53_port, A_ns(53) => 
                           SHIFT_n_11_53_port, A_ns(52) => SHIFT_n_11_52_port, 
                           A_ns(51) => SHIFT_n_11_51_port, A_ns(50) => 
                           SHIFT_n_11_50_port, A_ns(49) => SHIFT_n_11_49_port, 
                           A_ns(48) => SHIFT_n_11_48_port, A_ns(47) => 
                           SHIFT_n_11_47_port, A_ns(46) => SHIFT_n_11_46_port, 
                           A_ns(45) => SHIFT_n_11_45_port, A_ns(44) => 
                           SHIFT_n_11_44_port, A_ns(43) => SHIFT_n_11_43_port, 
                           A_ns(42) => SHIFT_n_11_42_port, A_ns(41) => 
                           SHIFT_n_11_41_port, A_ns(40) => SHIFT_n_11_40_port, 
                           A_ns(39) => SHIFT_n_11_39_port, A_ns(38) => 
                           SHIFT_n_11_38_port, A_ns(37) => SHIFT_n_11_37_port, 
                           A_ns(36) => SHIFT_n_11_36_port, A_ns(35) => 
                           SHIFT_n_11_35_port, A_ns(34) => SHIFT_n_11_34_port, 
                           A_ns(33) => SHIFT_n_11_33_port, A_ns(32) => 
                           SHIFT_n_11_32_port, A_ns(31) => SHIFT_n_11_31_port, 
                           A_ns(30) => SHIFT_n_11_30_port, A_ns(29) => 
                           SHIFT_n_11_29_port, A_ns(28) => SHIFT_n_11_28_port, 
                           A_ns(27) => SHIFT_n_11_27_port, A_ns(26) => 
                           SHIFT_n_11_26_port, A_ns(25) => SHIFT_n_11_25_port, 
                           A_ns(24) => SHIFT_n_11_24_port, A_ns(23) => 
                           SHIFT_n_11_23_port, A_ns(22) => SHIFT_n_11_22_port, 
                           A_ns(21) => SHIFT_n_11_21_port, A_ns(20) => 
                           SHIFT_n_11_20_port, A_ns(19) => SHIFT_n_11_19_port, 
                           A_ns(18) => SHIFT_n_11_18_port, A_ns(17) => 
                           SHIFT_n_11_17_port, A_ns(16) => SHIFT_n_11_16_port, 
                           A_ns(15) => SHIFT_n_11_15_port, A_ns(14) => 
                           SHIFT_n_11_14_port, A_ns(13) => SHIFT_n_11_13_port, 
                           A_ns(12) => SHIFT_n_11_12_port, A_ns(11) => 
                           SHIFT_n_11_11_port, A_ns(10) => SHIFT_n_11_10_port, 
                           A_ns(9) => SHIFT_n_11_9_port, A_ns(8) => 
                           SHIFT_n_11_8_port, A_ns(7) => SHIFT_n_11_7_port, 
                           A_ns(6) => SHIFT_n_11_6_port, A_ns(5) => 
                           SHIFT_n_11_5_port, A_ns(4) => SHIFT_n_11_4_port, 
                           A_ns(3) => SHIFT_n_11_3_port, A_ns(2) => 
                           SHIFT_n_11_2_port, A_ns(1) => SHIFT_n_11_1_port, 
                           A_ns(0) => SHIFT_n_11_0_port, B(55) => B(31), B(54) 
                           => B(31), B(53) => B(31), B(52) => B(31), B(51) => 
                           B(31), B(50) => B(31), B(49) => B(31), B(48) => 
                           B(31), B(47) => B(31), B(46) => B(31), B(45) => 
                           B(31), B(44) => B(31), B(43) => B(31), B(42) => 
                           B(31), B(41) => B(31), B(40) => B(31), B(39) => 
                           B(31), B(38) => B(31), B(37) => B(31), B(36) => 
                           B(31), B(35) => B(31), B(34) => B(31), B(33) => 
                           B(31), B(32) => B(31), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), O(55) => OTMP_11_55_port, 
                           O(54) => OTMP_11_54_port, O(53) => OTMP_11_53_port, 
                           O(52) => OTMP_11_52_port, O(51) => OTMP_11_51_port, 
                           O(50) => OTMP_11_50_port, O(49) => OTMP_11_49_port, 
                           O(48) => OTMP_11_48_port, O(47) => OTMP_11_47_port, 
                           O(46) => OTMP_11_46_port, O(45) => OTMP_11_45_port, 
                           O(44) => OTMP_11_44_port, O(43) => OTMP_11_43_port, 
                           O(42) => OTMP_11_42_port, O(41) => OTMP_11_41_port, 
                           O(40) => OTMP_11_40_port, O(39) => OTMP_11_39_port, 
                           O(38) => OTMP_11_38_port, O(37) => OTMP_11_37_port, 
                           O(36) => OTMP_11_36_port, O(35) => OTMP_11_35_port, 
                           O(34) => OTMP_11_34_port, O(33) => OTMP_11_33_port, 
                           O(32) => OTMP_11_32_port, O(31) => OTMP_11_31_port, 
                           O(30) => OTMP_11_30_port, O(29) => OTMP_11_29_port, 
                           O(28) => OTMP_11_28_port, O(27) => OTMP_11_27_port, 
                           O(26) => OTMP_11_26_port, O(25) => OTMP_11_25_port, 
                           O(24) => OTMP_11_24_port, O(23) => OTMP_11_23_port, 
                           O(22) => OTMP_11_22_port, O(21) => OTMP_11_21_port, 
                           O(20) => OTMP_11_20_port, O(19) => OTMP_11_19_port, 
                           O(18) => OTMP_11_18_port, O(17) => OTMP_11_17_port, 
                           O(16) => OTMP_11_16_port, O(15) => OTMP_11_15_port, 
                           O(14) => OTMP_11_14_port, O(13) => OTMP_11_13_port, 
                           O(12) => OTMP_11_12_port, O(11) => OTMP_11_11_port, 
                           O(10) => OTMP_11_10_port, O(9) => OTMP_11_9_port, 
                           O(8) => OTMP_11_8_port, O(7) => OTMP_11_7_port, O(6)
                           => OTMP_11_6_port, O(5) => OTMP_11_5_port, O(4) => 
                           OTMP_11_4_port, O(3) => OTMP_11_3_port, O(2) => 
                           OTMP_11_2_port, O(1) => OTMP_11_1_port, O(0) => 
                           n_1146, A_so(55) => SHIFT_12_55_port, A_so(54) => 
                           SHIFT_12_54_port, A_so(53) => SHIFT_12_53_port, 
                           A_so(52) => SHIFT_12_52_port, A_so(51) => 
                           SHIFT_12_51_port, A_so(50) => SHIFT_12_50_port, 
                           A_so(49) => SHIFT_12_49_port, A_so(48) => 
                           SHIFT_12_48_port, A_so(47) => SHIFT_12_47_port, 
                           A_so(46) => SHIFT_12_46_port, A_so(45) => 
                           SHIFT_12_45_port, A_so(44) => SHIFT_12_44_port, 
                           A_so(43) => SHIFT_12_43_port, A_so(42) => 
                           SHIFT_12_42_port, A_so(41) => SHIFT_12_41_port, 
                           A_so(40) => SHIFT_12_40_port, A_so(39) => 
                           SHIFT_12_39_port, A_so(38) => SHIFT_12_38_port, 
                           A_so(37) => SHIFT_12_37_port, A_so(36) => 
                           SHIFT_12_36_port, A_so(35) => SHIFT_12_35_port, 
                           A_so(34) => SHIFT_12_34_port, A_so(33) => 
                           SHIFT_12_33_port, A_so(32) => SHIFT_12_32_port, 
                           A_so(31) => SHIFT_12_31_port, A_so(30) => 
                           SHIFT_12_30_port, A_so(29) => SHIFT_12_29_port, 
                           A_so(28) => SHIFT_12_28_port, A_so(27) => 
                           SHIFT_12_27_port, A_so(26) => SHIFT_12_26_port, 
                           A_so(25) => SHIFT_12_25_port, A_so(24) => 
                           SHIFT_12_24_port, A_so(23) => SHIFT_12_23_port, 
                           A_so(22) => SHIFT_12_22_port, A_so(21) => 
                           SHIFT_12_21_port, A_so(20) => SHIFT_12_20_port, 
                           A_so(19) => SHIFT_12_19_port, A_so(18) => 
                           SHIFT_12_18_port, A_so(17) => SHIFT_12_17_port, 
                           A_so(16) => SHIFT_12_16_port, A_so(15) => 
                           SHIFT_12_15_port, A_so(14) => SHIFT_12_14_port, 
                           A_so(13) => SHIFT_12_13_port, A_so(12) => 
                           SHIFT_12_12_port, A_so(11) => SHIFT_12_11_port, 
                           A_so(10) => SHIFT_12_10_port, A_so(9) => 
                           SHIFT_12_9_port, A_so(8) => SHIFT_12_8_port, A_so(7)
                           => SHIFT_12_7_port, A_so(6) => SHIFT_12_6_port, 
                           A_so(5) => SHIFT_12_5_port, A_so(4) => 
                           SHIFT_12_4_port, A_so(3) => SHIFT_12_3_port, A_so(2)
                           => SHIFT_12_2_port, A_so(1) => n_1147, A_so(0) => 
                           n_1148, A_nso(55) => SHIFT_n_12_55_port, A_nso(54) 
                           => SHIFT_n_12_54_port, A_nso(53) => 
                           SHIFT_n_12_53_port, A_nso(52) => SHIFT_n_12_52_port,
                           A_nso(51) => SHIFT_n_12_51_port, A_nso(50) => 
                           SHIFT_n_12_50_port, A_nso(49) => SHIFT_n_12_49_port,
                           A_nso(48) => SHIFT_n_12_48_port, A_nso(47) => 
                           SHIFT_n_12_47_port, A_nso(46) => SHIFT_n_12_46_port,
                           A_nso(45) => SHIFT_n_12_45_port, A_nso(44) => 
                           SHIFT_n_12_44_port, A_nso(43) => SHIFT_n_12_43_port,
                           A_nso(42) => SHIFT_n_12_42_port, A_nso(41) => 
                           SHIFT_n_12_41_port, A_nso(40) => SHIFT_n_12_40_port,
                           A_nso(39) => SHIFT_n_12_39_port, A_nso(38) => 
                           SHIFT_n_12_38_port, A_nso(37) => SHIFT_n_12_37_port,
                           A_nso(36) => SHIFT_n_12_36_port, A_nso(35) => 
                           SHIFT_n_12_35_port, A_nso(34) => SHIFT_n_12_34_port,
                           A_nso(33) => SHIFT_n_12_33_port, A_nso(32) => 
                           SHIFT_n_12_32_port, A_nso(31) => SHIFT_n_12_31_port,
                           A_nso(30) => SHIFT_n_12_30_port, A_nso(29) => 
                           SHIFT_n_12_29_port, A_nso(28) => SHIFT_n_12_28_port,
                           A_nso(27) => SHIFT_n_12_27_port, A_nso(26) => 
                           SHIFT_n_12_26_port, A_nso(25) => SHIFT_n_12_25_port,
                           A_nso(24) => SHIFT_n_12_24_port, A_nso(23) => 
                           SHIFT_n_12_23_port, A_nso(22) => SHIFT_n_12_22_port,
                           A_nso(21) => SHIFT_n_12_21_port, A_nso(20) => 
                           SHIFT_n_12_20_port, A_nso(19) => SHIFT_n_12_19_port,
                           A_nso(18) => SHIFT_n_12_18_port, A_nso(17) => 
                           SHIFT_n_12_17_port, A_nso(16) => SHIFT_n_12_16_port,
                           A_nso(15) => SHIFT_n_12_15_port, A_nso(14) => 
                           SHIFT_n_12_14_port, A_nso(13) => SHIFT_n_12_13_port,
                           A_nso(12) => SHIFT_n_12_12_port, A_nso(11) => 
                           SHIFT_n_12_11_port, A_nso(10) => SHIFT_n_12_10_port,
                           A_nso(9) => SHIFT_n_12_9_port, A_nso(8) => 
                           SHIFT_n_12_8_port, A_nso(7) => SHIFT_n_12_7_port, 
                           A_nso(6) => SHIFT_n_12_6_port, A_nso(5) => 
                           SHIFT_n_12_5_port, A_nso(4) => SHIFT_n_12_4_port, 
                           A_nso(3) => SHIFT_n_12_3_port, A_nso(2) => 
                           SHIFT_n_12_2_port, A_nso(1) => n_1149, A_nso(0) => 
                           n_1150);
   ENC_12 : BOOTHENC_NBIT58_i24 port map( A_s(57) => SHIFT_12_55_port, A_s(56) 
                           => SHIFT_12_55_port, A_s(55) => SHIFT_12_55_port, 
                           A_s(54) => SHIFT_12_54_port, A_s(53) => 
                           SHIFT_12_53_port, A_s(52) => SHIFT_12_52_port, 
                           A_s(51) => SHIFT_12_51_port, A_s(50) => 
                           SHIFT_12_50_port, A_s(49) => SHIFT_12_49_port, 
                           A_s(48) => SHIFT_12_48_port, A_s(47) => 
                           SHIFT_12_47_port, A_s(46) => SHIFT_12_46_port, 
                           A_s(45) => SHIFT_12_45_port, A_s(44) => 
                           SHIFT_12_44_port, A_s(43) => SHIFT_12_43_port, 
                           A_s(42) => SHIFT_12_42_port, A_s(41) => 
                           SHIFT_12_41_port, A_s(40) => SHIFT_12_40_port, 
                           A_s(39) => SHIFT_12_39_port, A_s(38) => 
                           SHIFT_12_38_port, A_s(37) => SHIFT_12_37_port, 
                           A_s(36) => SHIFT_12_36_port, A_s(35) => 
                           SHIFT_12_35_port, A_s(34) => SHIFT_12_34_port, 
                           A_s(33) => SHIFT_12_33_port, A_s(32) => 
                           SHIFT_12_32_port, A_s(31) => SHIFT_12_31_port, 
                           A_s(30) => SHIFT_12_30_port, A_s(29) => 
                           SHIFT_12_29_port, A_s(28) => SHIFT_12_28_port, 
                           A_s(27) => SHIFT_12_27_port, A_s(26) => 
                           SHIFT_12_26_port, A_s(25) => SHIFT_12_25_port, 
                           A_s(24) => SHIFT_12_24_port, A_s(23) => 
                           SHIFT_12_23_port, A_s(22) => SHIFT_12_22_port, 
                           A_s(21) => SHIFT_12_21_port, A_s(20) => 
                           SHIFT_12_20_port, A_s(19) => SHIFT_12_19_port, 
                           A_s(18) => SHIFT_12_18_port, A_s(17) => 
                           SHIFT_12_17_port, A_s(16) => SHIFT_12_16_port, 
                           A_s(15) => SHIFT_12_15_port, A_s(14) => 
                           SHIFT_12_14_port, A_s(13) => SHIFT_12_13_port, 
                           A_s(12) => SHIFT_12_12_port, A_s(11) => 
                           SHIFT_12_11_port, A_s(10) => SHIFT_12_10_port, 
                           A_s(9) => SHIFT_12_9_port, A_s(8) => SHIFT_12_8_port
                           , A_s(7) => SHIFT_12_7_port, A_s(6) => 
                           SHIFT_12_6_port, A_s(5) => SHIFT_12_5_port, A_s(4) 
                           => SHIFT_12_4_port, A_s(3) => SHIFT_12_3_port, 
                           A_s(2) => SHIFT_12_2_port, A_s(1) => SHIFT_12_1_port
                           , A_s(0) => SHIFT_12_0_port, A_ns(57) => 
                           SHIFT_n_12_55_port, A_ns(56) => SHIFT_n_12_55_port, 
                           A_ns(55) => SHIFT_n_12_55_port, A_ns(54) => 
                           SHIFT_n_12_54_port, A_ns(53) => SHIFT_n_12_53_port, 
                           A_ns(52) => SHIFT_n_12_52_port, A_ns(51) => 
                           SHIFT_n_12_51_port, A_ns(50) => SHIFT_n_12_50_port, 
                           A_ns(49) => SHIFT_n_12_49_port, A_ns(48) => 
                           SHIFT_n_12_48_port, A_ns(47) => SHIFT_n_12_47_port, 
                           A_ns(46) => SHIFT_n_12_46_port, A_ns(45) => 
                           SHIFT_n_12_45_port, A_ns(44) => SHIFT_n_12_44_port, 
                           A_ns(43) => SHIFT_n_12_43_port, A_ns(42) => 
                           SHIFT_n_12_42_port, A_ns(41) => SHIFT_n_12_41_port, 
                           A_ns(40) => SHIFT_n_12_40_port, A_ns(39) => 
                           SHIFT_n_12_39_port, A_ns(38) => SHIFT_n_12_38_port, 
                           A_ns(37) => SHIFT_n_12_37_port, A_ns(36) => 
                           SHIFT_n_12_36_port, A_ns(35) => SHIFT_n_12_35_port, 
                           A_ns(34) => SHIFT_n_12_34_port, A_ns(33) => 
                           SHIFT_n_12_33_port, A_ns(32) => SHIFT_n_12_32_port, 
                           A_ns(31) => SHIFT_n_12_31_port, A_ns(30) => 
                           SHIFT_n_12_30_port, A_ns(29) => SHIFT_n_12_29_port, 
                           A_ns(28) => SHIFT_n_12_28_port, A_ns(27) => 
                           SHIFT_n_12_27_port, A_ns(26) => SHIFT_n_12_26_port, 
                           A_ns(25) => SHIFT_n_12_25_port, A_ns(24) => 
                           SHIFT_n_12_24_port, A_ns(23) => SHIFT_n_12_23_port, 
                           A_ns(22) => SHIFT_n_12_22_port, A_ns(21) => 
                           SHIFT_n_12_21_port, A_ns(20) => SHIFT_n_12_20_port, 
                           A_ns(19) => SHIFT_n_12_19_port, A_ns(18) => 
                           SHIFT_n_12_18_port, A_ns(17) => SHIFT_n_12_17_port, 
                           A_ns(16) => SHIFT_n_12_16_port, A_ns(15) => 
                           SHIFT_n_12_15_port, A_ns(14) => SHIFT_n_12_14_port, 
                           A_ns(13) => SHIFT_n_12_13_port, A_ns(12) => 
                           SHIFT_n_12_12_port, A_ns(11) => SHIFT_n_12_11_port, 
                           A_ns(10) => SHIFT_n_12_10_port, A_ns(9) => 
                           SHIFT_n_12_9_port, A_ns(8) => SHIFT_n_12_8_port, 
                           A_ns(7) => SHIFT_n_12_7_port, A_ns(6) => 
                           SHIFT_n_12_6_port, A_ns(5) => SHIFT_n_12_5_port, 
                           A_ns(4) => SHIFT_n_12_4_port, A_ns(3) => 
                           SHIFT_n_12_3_port, A_ns(2) => SHIFT_n_12_2_port, 
                           A_ns(1) => SHIFT_n_12_1_port, A_ns(0) => 
                           SHIFT_n_12_0_port, B(57) => B(31), B(56) => B(31), 
                           B(55) => B(31), B(54) => B(31), B(53) => B(31), 
                           B(52) => B(31), B(51) => B(31), B(50) => B(31), 
                           B(49) => B(31), B(48) => B(31), B(47) => B(31), 
                           B(46) => B(31), B(45) => B(31), B(44) => B(31), 
                           B(43) => B(31), B(42) => B(31), B(41) => B(31), 
                           B(40) => B(31), B(39) => B(31), B(38) => B(31), 
                           B(37) => B(31), B(36) => B(31), B(35) => B(31), 
                           B(34) => B(31), B(33) => B(31), B(32) => B(31), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           O(57) => OTMP_12_57_port, O(56) => OTMP_12_56_port, 
                           O(55) => OTMP_12_55_port, O(54) => OTMP_12_54_port, 
                           O(53) => OTMP_12_53_port, O(52) => OTMP_12_52_port, 
                           O(51) => OTMP_12_51_port, O(50) => OTMP_12_50_port, 
                           O(49) => OTMP_12_49_port, O(48) => OTMP_12_48_port, 
                           O(47) => OTMP_12_47_port, O(46) => OTMP_12_46_port, 
                           O(45) => OTMP_12_45_port, O(44) => OTMP_12_44_port, 
                           O(43) => OTMP_12_43_port, O(42) => OTMP_12_42_port, 
                           O(41) => OTMP_12_41_port, O(40) => OTMP_12_40_port, 
                           O(39) => OTMP_12_39_port, O(38) => OTMP_12_38_port, 
                           O(37) => OTMP_12_37_port, O(36) => OTMP_12_36_port, 
                           O(35) => OTMP_12_35_port, O(34) => OTMP_12_34_port, 
                           O(33) => OTMP_12_33_port, O(32) => OTMP_12_32_port, 
                           O(31) => OTMP_12_31_port, O(30) => OTMP_12_30_port, 
                           O(29) => OTMP_12_29_port, O(28) => OTMP_12_28_port, 
                           O(27) => OTMP_12_27_port, O(26) => OTMP_12_26_port, 
                           O(25) => OTMP_12_25_port, O(24) => OTMP_12_24_port, 
                           O(23) => OTMP_12_23_port, O(22) => OTMP_12_22_port, 
                           O(21) => OTMP_12_21_port, O(20) => OTMP_12_20_port, 
                           O(19) => OTMP_12_19_port, O(18) => OTMP_12_18_port, 
                           O(17) => OTMP_12_17_port, O(16) => OTMP_12_16_port, 
                           O(15) => OTMP_12_15_port, O(14) => OTMP_12_14_port, 
                           O(13) => OTMP_12_13_port, O(12) => OTMP_12_12_port, 
                           O(11) => OTMP_12_11_port, O(10) => OTMP_12_10_port, 
                           O(9) => OTMP_12_9_port, O(8) => OTMP_12_8_port, O(7)
                           => OTMP_12_7_port, O(6) => OTMP_12_6_port, O(5) => 
                           OTMP_12_5_port, O(4) => OTMP_12_4_port, O(3) => 
                           OTMP_12_3_port, O(2) => OTMP_12_2_port, O(1) => 
                           OTMP_12_1_port, O(0) => n_1151, A_so(57) => 
                           SHIFT_13_57_port, A_so(56) => SHIFT_13_56_port, 
                           A_so(55) => SHIFT_13_55_port, A_so(54) => 
                           SHIFT_13_54_port, A_so(53) => SHIFT_13_53_port, 
                           A_so(52) => SHIFT_13_52_port, A_so(51) => 
                           SHIFT_13_51_port, A_so(50) => SHIFT_13_50_port, 
                           A_so(49) => SHIFT_13_49_port, A_so(48) => 
                           SHIFT_13_48_port, A_so(47) => SHIFT_13_47_port, 
                           A_so(46) => SHIFT_13_46_port, A_so(45) => 
                           SHIFT_13_45_port, A_so(44) => SHIFT_13_44_port, 
                           A_so(43) => SHIFT_13_43_port, A_so(42) => 
                           SHIFT_13_42_port, A_so(41) => SHIFT_13_41_port, 
                           A_so(40) => SHIFT_13_40_port, A_so(39) => 
                           SHIFT_13_39_port, A_so(38) => SHIFT_13_38_port, 
                           A_so(37) => SHIFT_13_37_port, A_so(36) => 
                           SHIFT_13_36_port, A_so(35) => SHIFT_13_35_port, 
                           A_so(34) => SHIFT_13_34_port, A_so(33) => 
                           SHIFT_13_33_port, A_so(32) => SHIFT_13_32_port, 
                           A_so(31) => SHIFT_13_31_port, A_so(30) => 
                           SHIFT_13_30_port, A_so(29) => SHIFT_13_29_port, 
                           A_so(28) => SHIFT_13_28_port, A_so(27) => 
                           SHIFT_13_27_port, A_so(26) => SHIFT_13_26_port, 
                           A_so(25) => SHIFT_13_25_port, A_so(24) => 
                           SHIFT_13_24_port, A_so(23) => SHIFT_13_23_port, 
                           A_so(22) => SHIFT_13_22_port, A_so(21) => 
                           SHIFT_13_21_port, A_so(20) => SHIFT_13_20_port, 
                           A_so(19) => SHIFT_13_19_port, A_so(18) => 
                           SHIFT_13_18_port, A_so(17) => SHIFT_13_17_port, 
                           A_so(16) => SHIFT_13_16_port, A_so(15) => 
                           SHIFT_13_15_port, A_so(14) => SHIFT_13_14_port, 
                           A_so(13) => SHIFT_13_13_port, A_so(12) => 
                           SHIFT_13_12_port, A_so(11) => SHIFT_13_11_port, 
                           A_so(10) => SHIFT_13_10_port, A_so(9) => 
                           SHIFT_13_9_port, A_so(8) => SHIFT_13_8_port, A_so(7)
                           => SHIFT_13_7_port, A_so(6) => SHIFT_13_6_port, 
                           A_so(5) => SHIFT_13_5_port, A_so(4) => 
                           SHIFT_13_4_port, A_so(3) => SHIFT_13_3_port, A_so(2)
                           => SHIFT_13_2_port, A_so(1) => n_1152, A_so(0) => 
                           n_1153, A_nso(57) => SHIFT_n_13_57_port, A_nso(56) 
                           => SHIFT_n_13_56_port, A_nso(55) => 
                           SHIFT_n_13_55_port, A_nso(54) => SHIFT_n_13_54_port,
                           A_nso(53) => SHIFT_n_13_53_port, A_nso(52) => 
                           SHIFT_n_13_52_port, A_nso(51) => SHIFT_n_13_51_port,
                           A_nso(50) => SHIFT_n_13_50_port, A_nso(49) => 
                           SHIFT_n_13_49_port, A_nso(48) => SHIFT_n_13_48_port,
                           A_nso(47) => SHIFT_n_13_47_port, A_nso(46) => 
                           SHIFT_n_13_46_port, A_nso(45) => SHIFT_n_13_45_port,
                           A_nso(44) => SHIFT_n_13_44_port, A_nso(43) => 
                           SHIFT_n_13_43_port, A_nso(42) => SHIFT_n_13_42_port,
                           A_nso(41) => SHIFT_n_13_41_port, A_nso(40) => 
                           SHIFT_n_13_40_port, A_nso(39) => SHIFT_n_13_39_port,
                           A_nso(38) => SHIFT_n_13_38_port, A_nso(37) => 
                           SHIFT_n_13_37_port, A_nso(36) => SHIFT_n_13_36_port,
                           A_nso(35) => SHIFT_n_13_35_port, A_nso(34) => 
                           SHIFT_n_13_34_port, A_nso(33) => SHIFT_n_13_33_port,
                           A_nso(32) => SHIFT_n_13_32_port, A_nso(31) => 
                           SHIFT_n_13_31_port, A_nso(30) => SHIFT_n_13_30_port,
                           A_nso(29) => SHIFT_n_13_29_port, A_nso(28) => 
                           SHIFT_n_13_28_port, A_nso(27) => SHIFT_n_13_27_port,
                           A_nso(26) => SHIFT_n_13_26_port, A_nso(25) => 
                           SHIFT_n_13_25_port, A_nso(24) => SHIFT_n_13_24_port,
                           A_nso(23) => SHIFT_n_13_23_port, A_nso(22) => 
                           SHIFT_n_13_22_port, A_nso(21) => SHIFT_n_13_21_port,
                           A_nso(20) => SHIFT_n_13_20_port, A_nso(19) => 
                           SHIFT_n_13_19_port, A_nso(18) => SHIFT_n_13_18_port,
                           A_nso(17) => SHIFT_n_13_17_port, A_nso(16) => 
                           SHIFT_n_13_16_port, A_nso(15) => SHIFT_n_13_15_port,
                           A_nso(14) => SHIFT_n_13_14_port, A_nso(13) => 
                           SHIFT_n_13_13_port, A_nso(12) => SHIFT_n_13_12_port,
                           A_nso(11) => SHIFT_n_13_11_port, A_nso(10) => 
                           SHIFT_n_13_10_port, A_nso(9) => SHIFT_n_13_9_port, 
                           A_nso(8) => SHIFT_n_13_8_port, A_nso(7) => 
                           SHIFT_n_13_7_port, A_nso(6) => SHIFT_n_13_6_port, 
                           A_nso(5) => SHIFT_n_13_5_port, A_nso(4) => 
                           SHIFT_n_13_4_port, A_nso(3) => SHIFT_n_13_3_port, 
                           A_nso(2) => SHIFT_n_13_2_port, A_nso(1) => n_1154, 
                           A_nso(0) => n_1155);
   ENC_13 : BOOTHENC_NBIT60_i26 port map( A_s(59) => SHIFT_13_57_port, A_s(58) 
                           => SHIFT_13_57_port, A_s(57) => SHIFT_13_57_port, 
                           A_s(56) => SHIFT_13_56_port, A_s(55) => 
                           SHIFT_13_55_port, A_s(54) => SHIFT_13_54_port, 
                           A_s(53) => SHIFT_13_53_port, A_s(52) => 
                           SHIFT_13_52_port, A_s(51) => SHIFT_13_51_port, 
                           A_s(50) => SHIFT_13_50_port, A_s(49) => 
                           SHIFT_13_49_port, A_s(48) => SHIFT_13_48_port, 
                           A_s(47) => SHIFT_13_47_port, A_s(46) => 
                           SHIFT_13_46_port, A_s(45) => SHIFT_13_45_port, 
                           A_s(44) => SHIFT_13_44_port, A_s(43) => 
                           SHIFT_13_43_port, A_s(42) => SHIFT_13_42_port, 
                           A_s(41) => SHIFT_13_41_port, A_s(40) => 
                           SHIFT_13_40_port, A_s(39) => SHIFT_13_39_port, 
                           A_s(38) => SHIFT_13_38_port, A_s(37) => 
                           SHIFT_13_37_port, A_s(36) => SHIFT_13_36_port, 
                           A_s(35) => SHIFT_13_35_port, A_s(34) => 
                           SHIFT_13_34_port, A_s(33) => SHIFT_13_33_port, 
                           A_s(32) => SHIFT_13_32_port, A_s(31) => 
                           SHIFT_13_31_port, A_s(30) => SHIFT_13_30_port, 
                           A_s(29) => SHIFT_13_29_port, A_s(28) => 
                           SHIFT_13_28_port, A_s(27) => SHIFT_13_27_port, 
                           A_s(26) => SHIFT_13_26_port, A_s(25) => 
                           SHIFT_13_25_port, A_s(24) => SHIFT_13_24_port, 
                           A_s(23) => SHIFT_13_23_port, A_s(22) => 
                           SHIFT_13_22_port, A_s(21) => SHIFT_13_21_port, 
                           A_s(20) => SHIFT_13_20_port, A_s(19) => 
                           SHIFT_13_19_port, A_s(18) => SHIFT_13_18_port, 
                           A_s(17) => SHIFT_13_17_port, A_s(16) => 
                           SHIFT_13_16_port, A_s(15) => SHIFT_13_15_port, 
                           A_s(14) => SHIFT_13_14_port, A_s(13) => 
                           SHIFT_13_13_port, A_s(12) => SHIFT_13_12_port, 
                           A_s(11) => SHIFT_13_11_port, A_s(10) => 
                           SHIFT_13_10_port, A_s(9) => SHIFT_13_9_port, A_s(8) 
                           => SHIFT_13_8_port, A_s(7) => SHIFT_13_7_port, 
                           A_s(6) => SHIFT_13_6_port, A_s(5) => SHIFT_13_5_port
                           , A_s(4) => SHIFT_13_4_port, A_s(3) => 
                           SHIFT_13_3_port, A_s(2) => SHIFT_13_2_port, A_s(1) 
                           => SHIFT_13_1_port, A_s(0) => SHIFT_13_0_port, 
                           A_ns(59) => SHIFT_n_13_57_port, A_ns(58) => 
                           SHIFT_n_13_57_port, A_ns(57) => SHIFT_n_13_57_port, 
                           A_ns(56) => SHIFT_n_13_56_port, A_ns(55) => 
                           SHIFT_n_13_55_port, A_ns(54) => SHIFT_n_13_54_port, 
                           A_ns(53) => SHIFT_n_13_53_port, A_ns(52) => 
                           SHIFT_n_13_52_port, A_ns(51) => SHIFT_n_13_51_port, 
                           A_ns(50) => SHIFT_n_13_50_port, A_ns(49) => 
                           SHIFT_n_13_49_port, A_ns(48) => SHIFT_n_13_48_port, 
                           A_ns(47) => SHIFT_n_13_47_port, A_ns(46) => 
                           SHIFT_n_13_46_port, A_ns(45) => SHIFT_n_13_45_port, 
                           A_ns(44) => SHIFT_n_13_44_port, A_ns(43) => 
                           SHIFT_n_13_43_port, A_ns(42) => SHIFT_n_13_42_port, 
                           A_ns(41) => SHIFT_n_13_41_port, A_ns(40) => 
                           SHIFT_n_13_40_port, A_ns(39) => SHIFT_n_13_39_port, 
                           A_ns(38) => SHIFT_n_13_38_port, A_ns(37) => 
                           SHIFT_n_13_37_port, A_ns(36) => SHIFT_n_13_36_port, 
                           A_ns(35) => SHIFT_n_13_35_port, A_ns(34) => 
                           SHIFT_n_13_34_port, A_ns(33) => SHIFT_n_13_33_port, 
                           A_ns(32) => SHIFT_n_13_32_port, A_ns(31) => 
                           SHIFT_n_13_31_port, A_ns(30) => SHIFT_n_13_30_port, 
                           A_ns(29) => SHIFT_n_13_29_port, A_ns(28) => 
                           SHIFT_n_13_28_port, A_ns(27) => SHIFT_n_13_27_port, 
                           A_ns(26) => SHIFT_n_13_26_port, A_ns(25) => 
                           SHIFT_n_13_25_port, A_ns(24) => SHIFT_n_13_24_port, 
                           A_ns(23) => SHIFT_n_13_23_port, A_ns(22) => 
                           SHIFT_n_13_22_port, A_ns(21) => SHIFT_n_13_21_port, 
                           A_ns(20) => SHIFT_n_13_20_port, A_ns(19) => 
                           SHIFT_n_13_19_port, A_ns(18) => SHIFT_n_13_18_port, 
                           A_ns(17) => SHIFT_n_13_17_port, A_ns(16) => 
                           SHIFT_n_13_16_port, A_ns(15) => SHIFT_n_13_15_port, 
                           A_ns(14) => SHIFT_n_13_14_port, A_ns(13) => 
                           SHIFT_n_13_13_port, A_ns(12) => SHIFT_n_13_12_port, 
                           A_ns(11) => SHIFT_n_13_11_port, A_ns(10) => 
                           SHIFT_n_13_10_port, A_ns(9) => SHIFT_n_13_9_port, 
                           A_ns(8) => SHIFT_n_13_8_port, A_ns(7) => 
                           SHIFT_n_13_7_port, A_ns(6) => SHIFT_n_13_6_port, 
                           A_ns(5) => SHIFT_n_13_5_port, A_ns(4) => 
                           SHIFT_n_13_4_port, A_ns(3) => SHIFT_n_13_3_port, 
                           A_ns(2) => SHIFT_n_13_2_port, A_ns(1) => 
                           SHIFT_n_13_1_port, A_ns(0) => SHIFT_n_13_0_port, 
                           B(59) => B(31), B(58) => B(31), B(57) => B(31), 
                           B(56) => B(31), B(55) => B(31), B(54) => B(31), 
                           B(53) => B(31), B(52) => B(31), B(51) => B(31), 
                           B(50) => B(31), B(49) => B(31), B(48) => B(31), 
                           B(47) => B(31), B(46) => B(31), B(45) => B(31), 
                           B(44) => B(31), B(43) => B(31), B(42) => B(31), 
                           B(41) => B(31), B(40) => B(31), B(39) => B(31), 
                           B(38) => B(31), B(37) => B(31), B(36) => B(31), 
                           B(35) => B(31), B(34) => B(31), B(33) => B(31), 
                           B(32) => B(31), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), O(59) => OTMP_13_59_port, O(58) 
                           => OTMP_13_58_port, O(57) => OTMP_13_57_port, O(56) 
                           => OTMP_13_56_port, O(55) => OTMP_13_55_port, O(54) 
                           => OTMP_13_54_port, O(53) => OTMP_13_53_port, O(52) 
                           => OTMP_13_52_port, O(51) => OTMP_13_51_port, O(50) 
                           => OTMP_13_50_port, O(49) => OTMP_13_49_port, O(48) 
                           => OTMP_13_48_port, O(47) => OTMP_13_47_port, O(46) 
                           => OTMP_13_46_port, O(45) => OTMP_13_45_port, O(44) 
                           => OTMP_13_44_port, O(43) => OTMP_13_43_port, O(42) 
                           => OTMP_13_42_port, O(41) => OTMP_13_41_port, O(40) 
                           => OTMP_13_40_port, O(39) => OTMP_13_39_port, O(38) 
                           => OTMP_13_38_port, O(37) => OTMP_13_37_port, O(36) 
                           => OTMP_13_36_port, O(35) => OTMP_13_35_port, O(34) 
                           => OTMP_13_34_port, O(33) => OTMP_13_33_port, O(32) 
                           => OTMP_13_32_port, O(31) => OTMP_13_31_port, O(30) 
                           => OTMP_13_30_port, O(29) => OTMP_13_29_port, O(28) 
                           => OTMP_13_28_port, O(27) => OTMP_13_27_port, O(26) 
                           => OTMP_13_26_port, O(25) => OTMP_13_25_port, O(24) 
                           => OTMP_13_24_port, O(23) => OTMP_13_23_port, O(22) 
                           => OTMP_13_22_port, O(21) => OTMP_13_21_port, O(20) 
                           => OTMP_13_20_port, O(19) => OTMP_13_19_port, O(18) 
                           => OTMP_13_18_port, O(17) => OTMP_13_17_port, O(16) 
                           => OTMP_13_16_port, O(15) => OTMP_13_15_port, O(14) 
                           => OTMP_13_14_port, O(13) => OTMP_13_13_port, O(12) 
                           => OTMP_13_12_port, O(11) => OTMP_13_11_port, O(10) 
                           => OTMP_13_10_port, O(9) => OTMP_13_9_port, O(8) => 
                           OTMP_13_8_port, O(7) => OTMP_13_7_port, O(6) => 
                           OTMP_13_6_port, O(5) => OTMP_13_5_port, O(4) => 
                           OTMP_13_4_port, O(3) => OTMP_13_3_port, O(2) => 
                           OTMP_13_2_port, O(1) => OTMP_13_1_port, O(0) => 
                           n_1156, A_so(59) => SHIFT_14_59_port, A_so(58) => 
                           SHIFT_14_58_port, A_so(57) => SHIFT_14_57_port, 
                           A_so(56) => SHIFT_14_56_port, A_so(55) => 
                           SHIFT_14_55_port, A_so(54) => SHIFT_14_54_port, 
                           A_so(53) => SHIFT_14_53_port, A_so(52) => 
                           SHIFT_14_52_port, A_so(51) => SHIFT_14_51_port, 
                           A_so(50) => SHIFT_14_50_port, A_so(49) => 
                           SHIFT_14_49_port, A_so(48) => SHIFT_14_48_port, 
                           A_so(47) => SHIFT_14_47_port, A_so(46) => 
                           SHIFT_14_46_port, A_so(45) => SHIFT_14_45_port, 
                           A_so(44) => SHIFT_14_44_port, A_so(43) => 
                           SHIFT_14_43_port, A_so(42) => SHIFT_14_42_port, 
                           A_so(41) => SHIFT_14_41_port, A_so(40) => 
                           SHIFT_14_40_port, A_so(39) => SHIFT_14_39_port, 
                           A_so(38) => SHIFT_14_38_port, A_so(37) => 
                           SHIFT_14_37_port, A_so(36) => SHIFT_14_36_port, 
                           A_so(35) => SHIFT_14_35_port, A_so(34) => 
                           SHIFT_14_34_port, A_so(33) => SHIFT_14_33_port, 
                           A_so(32) => SHIFT_14_32_port, A_so(31) => 
                           SHIFT_14_31_port, A_so(30) => SHIFT_14_30_port, 
                           A_so(29) => SHIFT_14_29_port, A_so(28) => 
                           SHIFT_14_28_port, A_so(27) => SHIFT_14_27_port, 
                           A_so(26) => SHIFT_14_26_port, A_so(25) => 
                           SHIFT_14_25_port, A_so(24) => SHIFT_14_24_port, 
                           A_so(23) => SHIFT_14_23_port, A_so(22) => 
                           SHIFT_14_22_port, A_so(21) => SHIFT_14_21_port, 
                           A_so(20) => SHIFT_14_20_port, A_so(19) => 
                           SHIFT_14_19_port, A_so(18) => SHIFT_14_18_port, 
                           A_so(17) => SHIFT_14_17_port, A_so(16) => 
                           SHIFT_14_16_port, A_so(15) => SHIFT_14_15_port, 
                           A_so(14) => SHIFT_14_14_port, A_so(13) => 
                           SHIFT_14_13_port, A_so(12) => SHIFT_14_12_port, 
                           A_so(11) => SHIFT_14_11_port, A_so(10) => 
                           SHIFT_14_10_port, A_so(9) => SHIFT_14_9_port, 
                           A_so(8) => SHIFT_14_8_port, A_so(7) => 
                           SHIFT_14_7_port, A_so(6) => SHIFT_14_6_port, A_so(5)
                           => SHIFT_14_5_port, A_so(4) => SHIFT_14_4_port, 
                           A_so(3) => SHIFT_14_3_port, A_so(2) => 
                           SHIFT_14_2_port, A_so(1) => n_1157, A_so(0) => 
                           n_1158, A_nso(59) => SHIFT_n_14_59_port, A_nso(58) 
                           => SHIFT_n_14_58_port, A_nso(57) => 
                           SHIFT_n_14_57_port, A_nso(56) => SHIFT_n_14_56_port,
                           A_nso(55) => SHIFT_n_14_55_port, A_nso(54) => 
                           SHIFT_n_14_54_port, A_nso(53) => SHIFT_n_14_53_port,
                           A_nso(52) => SHIFT_n_14_52_port, A_nso(51) => 
                           SHIFT_n_14_51_port, A_nso(50) => SHIFT_n_14_50_port,
                           A_nso(49) => SHIFT_n_14_49_port, A_nso(48) => 
                           SHIFT_n_14_48_port, A_nso(47) => SHIFT_n_14_47_port,
                           A_nso(46) => SHIFT_n_14_46_port, A_nso(45) => 
                           SHIFT_n_14_45_port, A_nso(44) => SHIFT_n_14_44_port,
                           A_nso(43) => SHIFT_n_14_43_port, A_nso(42) => 
                           SHIFT_n_14_42_port, A_nso(41) => SHIFT_n_14_41_port,
                           A_nso(40) => SHIFT_n_14_40_port, A_nso(39) => 
                           SHIFT_n_14_39_port, A_nso(38) => SHIFT_n_14_38_port,
                           A_nso(37) => SHIFT_n_14_37_port, A_nso(36) => 
                           SHIFT_n_14_36_port, A_nso(35) => SHIFT_n_14_35_port,
                           A_nso(34) => SHIFT_n_14_34_port, A_nso(33) => 
                           SHIFT_n_14_33_port, A_nso(32) => SHIFT_n_14_32_port,
                           A_nso(31) => SHIFT_n_14_31_port, A_nso(30) => 
                           SHIFT_n_14_30_port, A_nso(29) => SHIFT_n_14_29_port,
                           A_nso(28) => SHIFT_n_14_28_port, A_nso(27) => 
                           SHIFT_n_14_27_port, A_nso(26) => SHIFT_n_14_26_port,
                           A_nso(25) => SHIFT_n_14_25_port, A_nso(24) => 
                           SHIFT_n_14_24_port, A_nso(23) => SHIFT_n_14_23_port,
                           A_nso(22) => SHIFT_n_14_22_port, A_nso(21) => 
                           SHIFT_n_14_21_port, A_nso(20) => SHIFT_n_14_20_port,
                           A_nso(19) => SHIFT_n_14_19_port, A_nso(18) => 
                           SHIFT_n_14_18_port, A_nso(17) => SHIFT_n_14_17_port,
                           A_nso(16) => SHIFT_n_14_16_port, A_nso(15) => 
                           SHIFT_n_14_15_port, A_nso(14) => SHIFT_n_14_14_port,
                           A_nso(13) => SHIFT_n_14_13_port, A_nso(12) => 
                           SHIFT_n_14_12_port, A_nso(11) => SHIFT_n_14_11_port,
                           A_nso(10) => SHIFT_n_14_10_port, A_nso(9) => 
                           SHIFT_n_14_9_port, A_nso(8) => SHIFT_n_14_8_port, 
                           A_nso(7) => SHIFT_n_14_7_port, A_nso(6) => 
                           SHIFT_n_14_6_port, A_nso(5) => SHIFT_n_14_5_port, 
                           A_nso(4) => SHIFT_n_14_4_port, A_nso(3) => 
                           SHIFT_n_14_3_port, A_nso(2) => SHIFT_n_14_2_port, 
                           A_nso(1) => n_1159, A_nso(0) => n_1160);
   ENC_14 : BOOTHENC_NBIT62_i28 port map( A_s(61) => SHIFT_14_59_port, A_s(60) 
                           => SHIFT_14_59_port, A_s(59) => SHIFT_14_59_port, 
                           A_s(58) => SHIFT_14_58_port, A_s(57) => 
                           SHIFT_14_57_port, A_s(56) => SHIFT_14_56_port, 
                           A_s(55) => SHIFT_14_55_port, A_s(54) => 
                           SHIFT_14_54_port, A_s(53) => SHIFT_14_53_port, 
                           A_s(52) => SHIFT_14_52_port, A_s(51) => 
                           SHIFT_14_51_port, A_s(50) => SHIFT_14_50_port, 
                           A_s(49) => SHIFT_14_49_port, A_s(48) => 
                           SHIFT_14_48_port, A_s(47) => SHIFT_14_47_port, 
                           A_s(46) => SHIFT_14_46_port, A_s(45) => 
                           SHIFT_14_45_port, A_s(44) => SHIFT_14_44_port, 
                           A_s(43) => SHIFT_14_43_port, A_s(42) => 
                           SHIFT_14_42_port, A_s(41) => SHIFT_14_41_port, 
                           A_s(40) => SHIFT_14_40_port, A_s(39) => 
                           SHIFT_14_39_port, A_s(38) => SHIFT_14_38_port, 
                           A_s(37) => SHIFT_14_37_port, A_s(36) => 
                           SHIFT_14_36_port, A_s(35) => SHIFT_14_35_port, 
                           A_s(34) => SHIFT_14_34_port, A_s(33) => 
                           SHIFT_14_33_port, A_s(32) => SHIFT_14_32_port, 
                           A_s(31) => SHIFT_14_31_port, A_s(30) => 
                           SHIFT_14_30_port, A_s(29) => SHIFT_14_29_port, 
                           A_s(28) => SHIFT_14_28_port, A_s(27) => 
                           SHIFT_14_27_port, A_s(26) => SHIFT_14_26_port, 
                           A_s(25) => SHIFT_14_25_port, A_s(24) => 
                           SHIFT_14_24_port, A_s(23) => SHIFT_14_23_port, 
                           A_s(22) => SHIFT_14_22_port, A_s(21) => 
                           SHIFT_14_21_port, A_s(20) => SHIFT_14_20_port, 
                           A_s(19) => SHIFT_14_19_port, A_s(18) => 
                           SHIFT_14_18_port, A_s(17) => SHIFT_14_17_port, 
                           A_s(16) => SHIFT_14_16_port, A_s(15) => 
                           SHIFT_14_15_port, A_s(14) => SHIFT_14_14_port, 
                           A_s(13) => SHIFT_14_13_port, A_s(12) => 
                           SHIFT_14_12_port, A_s(11) => SHIFT_14_11_port, 
                           A_s(10) => SHIFT_14_10_port, A_s(9) => 
                           SHIFT_14_9_port, A_s(8) => SHIFT_14_8_port, A_s(7) 
                           => SHIFT_14_7_port, A_s(6) => SHIFT_14_6_port, 
                           A_s(5) => SHIFT_14_5_port, A_s(4) => SHIFT_14_4_port
                           , A_s(3) => SHIFT_14_3_port, A_s(2) => 
                           SHIFT_14_2_port, A_s(1) => SHIFT_14_1_port, A_s(0) 
                           => SHIFT_14_0_port, A_ns(61) => SHIFT_n_14_59_port, 
                           A_ns(60) => SHIFT_n_14_59_port, A_ns(59) => 
                           SHIFT_n_14_59_port, A_ns(58) => SHIFT_n_14_58_port, 
                           A_ns(57) => SHIFT_n_14_57_port, A_ns(56) => 
                           SHIFT_n_14_56_port, A_ns(55) => SHIFT_n_14_55_port, 
                           A_ns(54) => SHIFT_n_14_54_port, A_ns(53) => 
                           SHIFT_n_14_53_port, A_ns(52) => SHIFT_n_14_52_port, 
                           A_ns(51) => SHIFT_n_14_51_port, A_ns(50) => 
                           SHIFT_n_14_50_port, A_ns(49) => SHIFT_n_14_49_port, 
                           A_ns(48) => SHIFT_n_14_48_port, A_ns(47) => 
                           SHIFT_n_14_47_port, A_ns(46) => SHIFT_n_14_46_port, 
                           A_ns(45) => SHIFT_n_14_45_port, A_ns(44) => 
                           SHIFT_n_14_44_port, A_ns(43) => SHIFT_n_14_43_port, 
                           A_ns(42) => SHIFT_n_14_42_port, A_ns(41) => 
                           SHIFT_n_14_41_port, A_ns(40) => SHIFT_n_14_40_port, 
                           A_ns(39) => SHIFT_n_14_39_port, A_ns(38) => 
                           SHIFT_n_14_38_port, A_ns(37) => SHIFT_n_14_37_port, 
                           A_ns(36) => SHIFT_n_14_36_port, A_ns(35) => 
                           SHIFT_n_14_35_port, A_ns(34) => SHIFT_n_14_34_port, 
                           A_ns(33) => SHIFT_n_14_33_port, A_ns(32) => 
                           SHIFT_n_14_32_port, A_ns(31) => SHIFT_n_14_31_port, 
                           A_ns(30) => SHIFT_n_14_30_port, A_ns(29) => 
                           SHIFT_n_14_29_port, A_ns(28) => SHIFT_n_14_28_port, 
                           A_ns(27) => SHIFT_n_14_27_port, A_ns(26) => 
                           SHIFT_n_14_26_port, A_ns(25) => SHIFT_n_14_25_port, 
                           A_ns(24) => SHIFT_n_14_24_port, A_ns(23) => 
                           SHIFT_n_14_23_port, A_ns(22) => SHIFT_n_14_22_port, 
                           A_ns(21) => SHIFT_n_14_21_port, A_ns(20) => 
                           SHIFT_n_14_20_port, A_ns(19) => SHIFT_n_14_19_port, 
                           A_ns(18) => SHIFT_n_14_18_port, A_ns(17) => 
                           SHIFT_n_14_17_port, A_ns(16) => SHIFT_n_14_16_port, 
                           A_ns(15) => SHIFT_n_14_15_port, A_ns(14) => 
                           SHIFT_n_14_14_port, A_ns(13) => SHIFT_n_14_13_port, 
                           A_ns(12) => SHIFT_n_14_12_port, A_ns(11) => 
                           SHIFT_n_14_11_port, A_ns(10) => SHIFT_n_14_10_port, 
                           A_ns(9) => SHIFT_n_14_9_port, A_ns(8) => 
                           SHIFT_n_14_8_port, A_ns(7) => SHIFT_n_14_7_port, 
                           A_ns(6) => SHIFT_n_14_6_port, A_ns(5) => 
                           SHIFT_n_14_5_port, A_ns(4) => SHIFT_n_14_4_port, 
                           A_ns(3) => SHIFT_n_14_3_port, A_ns(2) => 
                           SHIFT_n_14_2_port, A_ns(1) => SHIFT_n_14_1_port, 
                           A_ns(0) => SHIFT_n_14_0_port, B(61) => B(31), B(60) 
                           => B(31), B(59) => B(31), B(58) => B(31), B(57) => 
                           B(31), B(56) => B(31), B(55) => B(31), B(54) => 
                           B(31), B(53) => B(31), B(52) => B(31), B(51) => 
                           B(31), B(50) => B(31), B(49) => B(31), B(48) => 
                           B(31), B(47) => B(31), B(46) => B(31), B(45) => 
                           B(31), B(44) => B(31), B(43) => B(31), B(42) => 
                           B(31), B(41) => B(31), B(40) => B(31), B(39) => 
                           B(31), B(38) => B(31), B(37) => B(31), B(36) => 
                           B(31), B(35) => B(31), B(34) => B(31), B(33) => 
                           B(31), B(32) => B(31), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), O(61) => OTMP_14_61_port, 
                           O(60) => OTMP_14_60_port, O(59) => OTMP_14_59_port, 
                           O(58) => OTMP_14_58_port, O(57) => OTMP_14_57_port, 
                           O(56) => OTMP_14_56_port, O(55) => OTMP_14_55_port, 
                           O(54) => OTMP_14_54_port, O(53) => OTMP_14_53_port, 
                           O(52) => OTMP_14_52_port, O(51) => OTMP_14_51_port, 
                           O(50) => OTMP_14_50_port, O(49) => OTMP_14_49_port, 
                           O(48) => OTMP_14_48_port, O(47) => OTMP_14_47_port, 
                           O(46) => OTMP_14_46_port, O(45) => OTMP_14_45_port, 
                           O(44) => OTMP_14_44_port, O(43) => OTMP_14_43_port, 
                           O(42) => OTMP_14_42_port, O(41) => OTMP_14_41_port, 
                           O(40) => OTMP_14_40_port, O(39) => OTMP_14_39_port, 
                           O(38) => OTMP_14_38_port, O(37) => OTMP_14_37_port, 
                           O(36) => OTMP_14_36_port, O(35) => OTMP_14_35_port, 
                           O(34) => OTMP_14_34_port, O(33) => OTMP_14_33_port, 
                           O(32) => OTMP_14_32_port, O(31) => OTMP_14_31_port, 
                           O(30) => OTMP_14_30_port, O(29) => OTMP_14_29_port, 
                           O(28) => OTMP_14_28_port, O(27) => OTMP_14_27_port, 
                           O(26) => OTMP_14_26_port, O(25) => OTMP_14_25_port, 
                           O(24) => OTMP_14_24_port, O(23) => OTMP_14_23_port, 
                           O(22) => OTMP_14_22_port, O(21) => OTMP_14_21_port, 
                           O(20) => OTMP_14_20_port, O(19) => OTMP_14_19_port, 
                           O(18) => OTMP_14_18_port, O(17) => OTMP_14_17_port, 
                           O(16) => OTMP_14_16_port, O(15) => OTMP_14_15_port, 
                           O(14) => OTMP_14_14_port, O(13) => OTMP_14_13_port, 
                           O(12) => OTMP_14_12_port, O(11) => OTMP_14_11_port, 
                           O(10) => OTMP_14_10_port, O(9) => OTMP_14_9_port, 
                           O(8) => OTMP_14_8_port, O(7) => OTMP_14_7_port, O(6)
                           => OTMP_14_6_port, O(5) => OTMP_14_5_port, O(4) => 
                           OTMP_14_4_port, O(3) => OTMP_14_3_port, O(2) => 
                           OTMP_14_2_port, O(1) => OTMP_14_1_port, O(0) => 
                           n_1161, A_so(61) => SHIFT_15_61_port, A_so(60) => 
                           SHIFT_15_60_port, A_so(59) => SHIFT_15_59_port, 
                           A_so(58) => SHIFT_15_58_port, A_so(57) => 
                           SHIFT_15_57_port, A_so(56) => SHIFT_15_56_port, 
                           A_so(55) => SHIFT_15_55_port, A_so(54) => 
                           SHIFT_15_54_port, A_so(53) => SHIFT_15_53_port, 
                           A_so(52) => SHIFT_15_52_port, A_so(51) => 
                           SHIFT_15_51_port, A_so(50) => SHIFT_15_50_port, 
                           A_so(49) => SHIFT_15_49_port, A_so(48) => 
                           SHIFT_15_48_port, A_so(47) => SHIFT_15_47_port, 
                           A_so(46) => SHIFT_15_46_port, A_so(45) => 
                           SHIFT_15_45_port, A_so(44) => SHIFT_15_44_port, 
                           A_so(43) => SHIFT_15_43_port, A_so(42) => 
                           SHIFT_15_42_port, A_so(41) => SHIFT_15_41_port, 
                           A_so(40) => SHIFT_15_40_port, A_so(39) => 
                           SHIFT_15_39_port, A_so(38) => SHIFT_15_38_port, 
                           A_so(37) => SHIFT_15_37_port, A_so(36) => 
                           SHIFT_15_36_port, A_so(35) => SHIFT_15_35_port, 
                           A_so(34) => SHIFT_15_34_port, A_so(33) => 
                           SHIFT_15_33_port, A_so(32) => SHIFT_15_32_port, 
                           A_so(31) => SHIFT_15_31_port, A_so(30) => 
                           SHIFT_15_30_port, A_so(29) => SHIFT_15_29_port, 
                           A_so(28) => SHIFT_15_28_port, A_so(27) => 
                           SHIFT_15_27_port, A_so(26) => SHIFT_15_26_port, 
                           A_so(25) => SHIFT_15_25_port, A_so(24) => 
                           SHIFT_15_24_port, A_so(23) => SHIFT_15_23_port, 
                           A_so(22) => SHIFT_15_22_port, A_so(21) => 
                           SHIFT_15_21_port, A_so(20) => SHIFT_15_20_port, 
                           A_so(19) => SHIFT_15_19_port, A_so(18) => 
                           SHIFT_15_18_port, A_so(17) => SHIFT_15_17_port, 
                           A_so(16) => SHIFT_15_16_port, A_so(15) => 
                           SHIFT_15_15_port, A_so(14) => SHIFT_15_14_port, 
                           A_so(13) => SHIFT_15_13_port, A_so(12) => 
                           SHIFT_15_12_port, A_so(11) => SHIFT_15_11_port, 
                           A_so(10) => SHIFT_15_10_port, A_so(9) => 
                           SHIFT_15_9_port, A_so(8) => SHIFT_15_8_port, A_so(7)
                           => SHIFT_15_7_port, A_so(6) => SHIFT_15_6_port, 
                           A_so(5) => SHIFT_15_5_port, A_so(4) => 
                           SHIFT_15_4_port, A_so(3) => SHIFT_15_3_port, A_so(2)
                           => SHIFT_15_2_port, A_so(1) => n_1162, A_so(0) => 
                           n_1163, A_nso(61) => SHIFT_n_15_61_port, A_nso(60) 
                           => SHIFT_n_15_60_port, A_nso(59) => 
                           SHIFT_n_15_59_port, A_nso(58) => SHIFT_n_15_58_port,
                           A_nso(57) => SHIFT_n_15_57_port, A_nso(56) => 
                           SHIFT_n_15_56_port, A_nso(55) => SHIFT_n_15_55_port,
                           A_nso(54) => SHIFT_n_15_54_port, A_nso(53) => 
                           SHIFT_n_15_53_port, A_nso(52) => SHIFT_n_15_52_port,
                           A_nso(51) => SHIFT_n_15_51_port, A_nso(50) => 
                           SHIFT_n_15_50_port, A_nso(49) => SHIFT_n_15_49_port,
                           A_nso(48) => SHIFT_n_15_48_port, A_nso(47) => 
                           SHIFT_n_15_47_port, A_nso(46) => SHIFT_n_15_46_port,
                           A_nso(45) => SHIFT_n_15_45_port, A_nso(44) => 
                           SHIFT_n_15_44_port, A_nso(43) => SHIFT_n_15_43_port,
                           A_nso(42) => SHIFT_n_15_42_port, A_nso(41) => 
                           SHIFT_n_15_41_port, A_nso(40) => SHIFT_n_15_40_port,
                           A_nso(39) => SHIFT_n_15_39_port, A_nso(38) => 
                           SHIFT_n_15_38_port, A_nso(37) => SHIFT_n_15_37_port,
                           A_nso(36) => SHIFT_n_15_36_port, A_nso(35) => 
                           SHIFT_n_15_35_port, A_nso(34) => SHIFT_n_15_34_port,
                           A_nso(33) => SHIFT_n_15_33_port, A_nso(32) => 
                           SHIFT_n_15_32_port, A_nso(31) => SHIFT_n_15_31_port,
                           A_nso(30) => SHIFT_n_15_30_port, A_nso(29) => 
                           SHIFT_n_15_29_port, A_nso(28) => SHIFT_n_15_28_port,
                           A_nso(27) => SHIFT_n_15_27_port, A_nso(26) => 
                           SHIFT_n_15_26_port, A_nso(25) => SHIFT_n_15_25_port,
                           A_nso(24) => SHIFT_n_15_24_port, A_nso(23) => 
                           SHIFT_n_15_23_port, A_nso(22) => SHIFT_n_15_22_port,
                           A_nso(21) => SHIFT_n_15_21_port, A_nso(20) => 
                           SHIFT_n_15_20_port, A_nso(19) => SHIFT_n_15_19_port,
                           A_nso(18) => SHIFT_n_15_18_port, A_nso(17) => 
                           SHIFT_n_15_17_port, A_nso(16) => SHIFT_n_15_16_port,
                           A_nso(15) => SHIFT_n_15_15_port, A_nso(14) => 
                           SHIFT_n_15_14_port, A_nso(13) => SHIFT_n_15_13_port,
                           A_nso(12) => SHIFT_n_15_12_port, A_nso(11) => 
                           SHIFT_n_15_11_port, A_nso(10) => SHIFT_n_15_10_port,
                           A_nso(9) => SHIFT_n_15_9_port, A_nso(8) => 
                           SHIFT_n_15_8_port, A_nso(7) => SHIFT_n_15_7_port, 
                           A_nso(6) => SHIFT_n_15_6_port, A_nso(5) => 
                           SHIFT_n_15_5_port, A_nso(4) => SHIFT_n_15_4_port, 
                           A_nso(3) => SHIFT_n_15_3_port, A_nso(2) => 
                           SHIFT_n_15_2_port, A_nso(1) => n_1164, A_nso(0) => 
                           n_1165);
   ENC_15 : BOOTHENC_NBIT64_i30 port map( A_s(63) => SHIFT_15_61_port, A_s(62) 
                           => SHIFT_15_61_port, A_s(61) => SHIFT_15_61_port, 
                           A_s(60) => SHIFT_15_60_port, A_s(59) => 
                           SHIFT_15_59_port, A_s(58) => SHIFT_15_58_port, 
                           A_s(57) => SHIFT_15_57_port, A_s(56) => 
                           SHIFT_15_56_port, A_s(55) => SHIFT_15_55_port, 
                           A_s(54) => SHIFT_15_54_port, A_s(53) => 
                           SHIFT_15_53_port, A_s(52) => SHIFT_15_52_port, 
                           A_s(51) => SHIFT_15_51_port, A_s(50) => 
                           SHIFT_15_50_port, A_s(49) => SHIFT_15_49_port, 
                           A_s(48) => SHIFT_15_48_port, A_s(47) => 
                           SHIFT_15_47_port, A_s(46) => SHIFT_15_46_port, 
                           A_s(45) => SHIFT_15_45_port, A_s(44) => 
                           SHIFT_15_44_port, A_s(43) => SHIFT_15_43_port, 
                           A_s(42) => SHIFT_15_42_port, A_s(41) => 
                           SHIFT_15_41_port, A_s(40) => SHIFT_15_40_port, 
                           A_s(39) => SHIFT_15_39_port, A_s(38) => 
                           SHIFT_15_38_port, A_s(37) => SHIFT_15_37_port, 
                           A_s(36) => SHIFT_15_36_port, A_s(35) => 
                           SHIFT_15_35_port, A_s(34) => SHIFT_15_34_port, 
                           A_s(33) => SHIFT_15_33_port, A_s(32) => 
                           SHIFT_15_32_port, A_s(31) => SHIFT_15_31_port, 
                           A_s(30) => SHIFT_15_30_port, A_s(29) => 
                           SHIFT_15_29_port, A_s(28) => SHIFT_15_28_port, 
                           A_s(27) => SHIFT_15_27_port, A_s(26) => 
                           SHIFT_15_26_port, A_s(25) => SHIFT_15_25_port, 
                           A_s(24) => SHIFT_15_24_port, A_s(23) => 
                           SHIFT_15_23_port, A_s(22) => SHIFT_15_22_port, 
                           A_s(21) => SHIFT_15_21_port, A_s(20) => 
                           SHIFT_15_20_port, A_s(19) => SHIFT_15_19_port, 
                           A_s(18) => SHIFT_15_18_port, A_s(17) => 
                           SHIFT_15_17_port, A_s(16) => SHIFT_15_16_port, 
                           A_s(15) => SHIFT_15_15_port, A_s(14) => 
                           SHIFT_15_14_port, A_s(13) => SHIFT_15_13_port, 
                           A_s(12) => SHIFT_15_12_port, A_s(11) => 
                           SHIFT_15_11_port, A_s(10) => SHIFT_15_10_port, 
                           A_s(9) => SHIFT_15_9_port, A_s(8) => SHIFT_15_8_port
                           , A_s(7) => SHIFT_15_7_port, A_s(6) => 
                           SHIFT_15_6_port, A_s(5) => SHIFT_15_5_port, A_s(4) 
                           => SHIFT_15_4_port, A_s(3) => SHIFT_15_3_port, 
                           A_s(2) => SHIFT_15_2_port, A_s(1) => SHIFT_15_1_port
                           , A_s(0) => SHIFT_15_0_port, A_ns(63) => 
                           SHIFT_n_15_61_port, A_ns(62) => SHIFT_n_15_61_port, 
                           A_ns(61) => SHIFT_n_15_61_port, A_ns(60) => 
                           SHIFT_n_15_60_port, A_ns(59) => SHIFT_n_15_59_port, 
                           A_ns(58) => SHIFT_n_15_58_port, A_ns(57) => 
                           SHIFT_n_15_57_port, A_ns(56) => SHIFT_n_15_56_port, 
                           A_ns(55) => SHIFT_n_15_55_port, A_ns(54) => 
                           SHIFT_n_15_54_port, A_ns(53) => SHIFT_n_15_53_port, 
                           A_ns(52) => SHIFT_n_15_52_port, A_ns(51) => 
                           SHIFT_n_15_51_port, A_ns(50) => SHIFT_n_15_50_port, 
                           A_ns(49) => SHIFT_n_15_49_port, A_ns(48) => 
                           SHIFT_n_15_48_port, A_ns(47) => SHIFT_n_15_47_port, 
                           A_ns(46) => SHIFT_n_15_46_port, A_ns(45) => 
                           SHIFT_n_15_45_port, A_ns(44) => SHIFT_n_15_44_port, 
                           A_ns(43) => SHIFT_n_15_43_port, A_ns(42) => 
                           SHIFT_n_15_42_port, A_ns(41) => SHIFT_n_15_41_port, 
                           A_ns(40) => SHIFT_n_15_40_port, A_ns(39) => 
                           SHIFT_n_15_39_port, A_ns(38) => SHIFT_n_15_38_port, 
                           A_ns(37) => SHIFT_n_15_37_port, A_ns(36) => 
                           SHIFT_n_15_36_port, A_ns(35) => SHIFT_n_15_35_port, 
                           A_ns(34) => SHIFT_n_15_34_port, A_ns(33) => 
                           SHIFT_n_15_33_port, A_ns(32) => SHIFT_n_15_32_port, 
                           A_ns(31) => SHIFT_n_15_31_port, A_ns(30) => 
                           SHIFT_n_15_30_port, A_ns(29) => SHIFT_n_15_29_port, 
                           A_ns(28) => SHIFT_n_15_28_port, A_ns(27) => 
                           SHIFT_n_15_27_port, A_ns(26) => SHIFT_n_15_26_port, 
                           A_ns(25) => SHIFT_n_15_25_port, A_ns(24) => 
                           SHIFT_n_15_24_port, A_ns(23) => SHIFT_n_15_23_port, 
                           A_ns(22) => SHIFT_n_15_22_port, A_ns(21) => 
                           SHIFT_n_15_21_port, A_ns(20) => SHIFT_n_15_20_port, 
                           A_ns(19) => SHIFT_n_15_19_port, A_ns(18) => 
                           SHIFT_n_15_18_port, A_ns(17) => SHIFT_n_15_17_port, 
                           A_ns(16) => SHIFT_n_15_16_port, A_ns(15) => 
                           SHIFT_n_15_15_port, A_ns(14) => SHIFT_n_15_14_port, 
                           A_ns(13) => SHIFT_n_15_13_port, A_ns(12) => 
                           SHIFT_n_15_12_port, A_ns(11) => SHIFT_n_15_11_port, 
                           A_ns(10) => SHIFT_n_15_10_port, A_ns(9) => 
                           SHIFT_n_15_9_port, A_ns(8) => SHIFT_n_15_8_port, 
                           A_ns(7) => SHIFT_n_15_7_port, A_ns(6) => 
                           SHIFT_n_15_6_port, A_ns(5) => SHIFT_n_15_5_port, 
                           A_ns(4) => SHIFT_n_15_4_port, A_ns(3) => 
                           SHIFT_n_15_3_port, A_ns(2) => SHIFT_n_15_2_port, 
                           A_ns(1) => SHIFT_n_15_1_port, A_ns(0) => 
                           SHIFT_n_15_0_port, B(63) => B(31), B(62) => B(31), 
                           B(61) => B(31), B(60) => B(31), B(59) => B(31), 
                           B(58) => B(31), B(57) => B(31), B(56) => B(31), 
                           B(55) => B(31), B(54) => B(31), B(53) => B(31), 
                           B(52) => B(31), B(51) => B(31), B(50) => B(31), 
                           B(49) => B(31), B(48) => B(31), B(47) => B(31), 
                           B(46) => B(31), B(45) => B(31), B(44) => B(31), 
                           B(43) => B(31), B(42) => B(31), B(41) => B(31), 
                           B(40) => B(31), B(39) => B(31), B(38) => B(31), 
                           B(37) => B(31), B(36) => B(31), B(35) => B(31), 
                           B(34) => B(31), B(33) => B(31), B(32) => B(31), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           O(63) => OTMP_15_63_port, O(62) => OTMP_15_62_port, 
                           O(61) => OTMP_15_61_port, O(60) => OTMP_15_60_port, 
                           O(59) => OTMP_15_59_port, O(58) => OTMP_15_58_port, 
                           O(57) => OTMP_15_57_port, O(56) => OTMP_15_56_port, 
                           O(55) => OTMP_15_55_port, O(54) => OTMP_15_54_port, 
                           O(53) => OTMP_15_53_port, O(52) => OTMP_15_52_port, 
                           O(51) => OTMP_15_51_port, O(50) => OTMP_15_50_port, 
                           O(49) => OTMP_15_49_port, O(48) => OTMP_15_48_port, 
                           O(47) => OTMP_15_47_port, O(46) => OTMP_15_46_port, 
                           O(45) => OTMP_15_45_port, O(44) => OTMP_15_44_port, 
                           O(43) => OTMP_15_43_port, O(42) => OTMP_15_42_port, 
                           O(41) => OTMP_15_41_port, O(40) => OTMP_15_40_port, 
                           O(39) => OTMP_15_39_port, O(38) => OTMP_15_38_port, 
                           O(37) => OTMP_15_37_port, O(36) => OTMP_15_36_port, 
                           O(35) => OTMP_15_35_port, O(34) => OTMP_15_34_port, 
                           O(33) => OTMP_15_33_port, O(32) => OTMP_15_32_port, 
                           O(31) => OTMP_15_31_port, O(30) => OTMP_15_30_port, 
                           O(29) => OTMP_15_29_port, O(28) => OTMP_15_28_port, 
                           O(27) => OTMP_15_27_port, O(26) => OTMP_15_26_port, 
                           O(25) => OTMP_15_25_port, O(24) => OTMP_15_24_port, 
                           O(23) => OTMP_15_23_port, O(22) => OTMP_15_22_port, 
                           O(21) => OTMP_15_21_port, O(20) => OTMP_15_20_port, 
                           O(19) => OTMP_15_19_port, O(18) => OTMP_15_18_port, 
                           O(17) => OTMP_15_17_port, O(16) => OTMP_15_16_port, 
                           O(15) => OTMP_15_15_port, O(14) => OTMP_15_14_port, 
                           O(13) => OTMP_15_13_port, O(12) => OTMP_15_12_port, 
                           O(11) => OTMP_15_11_port, O(10) => OTMP_15_10_port, 
                           O(9) => OTMP_15_9_port, O(8) => OTMP_15_8_port, O(7)
                           => OTMP_15_7_port, O(6) => OTMP_15_6_port, O(5) => 
                           OTMP_15_5_port, O(4) => OTMP_15_4_port, O(3) => 
                           OTMP_15_3_port, O(2) => OTMP_15_2_port, O(1) => 
                           OTMP_15_1_port, O(0) => n_1166, A_so(63) => n_1167, 
                           A_so(62) => n_1168, A_so(61) => n_1169, A_so(60) => 
                           n_1170, A_so(59) => n_1171, A_so(58) => n_1172, 
                           A_so(57) => n_1173, A_so(56) => n_1174, A_so(55) => 
                           n_1175, A_so(54) => n_1176, A_so(53) => n_1177, 
                           A_so(52) => n_1178, A_so(51) => n_1179, A_so(50) => 
                           n_1180, A_so(49) => n_1181, A_so(48) => n_1182, 
                           A_so(47) => n_1183, A_so(46) => n_1184, A_so(45) => 
                           n_1185, A_so(44) => n_1186, A_so(43) => n_1187, 
                           A_so(42) => n_1188, A_so(41) => n_1189, A_so(40) => 
                           n_1190, A_so(39) => n_1191, A_so(38) => n_1192, 
                           A_so(37) => n_1193, A_so(36) => n_1194, A_so(35) => 
                           n_1195, A_so(34) => n_1196, A_so(33) => n_1197, 
                           A_so(32) => n_1198, A_so(31) => n_1199, A_so(30) => 
                           n_1200, A_so(29) => n_1201, A_so(28) => n_1202, 
                           A_so(27) => n_1203, A_so(26) => n_1204, A_so(25) => 
                           n_1205, A_so(24) => n_1206, A_so(23) => n_1207, 
                           A_so(22) => n_1208, A_so(21) => n_1209, A_so(20) => 
                           n_1210, A_so(19) => n_1211, A_so(18) => n_1212, 
                           A_so(17) => n_1213, A_so(16) => n_1214, A_so(15) => 
                           n_1215, A_so(14) => n_1216, A_so(13) => n_1217, 
                           A_so(12) => n_1218, A_so(11) => n_1219, A_so(10) => 
                           n_1220, A_so(9) => n_1221, A_so(8) => n_1222, 
                           A_so(7) => n_1223, A_so(6) => n_1224, A_so(5) => 
                           n_1225, A_so(4) => n_1226, A_so(3) => n_1227, 
                           A_so(2) => n_1228, A_so(1) => n_1229, A_so(0) => 
                           n_1230, A_nso(63) => n_1231, A_nso(62) => n_1232, 
                           A_nso(61) => n_1233, A_nso(60) => n_1234, A_nso(59) 
                           => n_1235, A_nso(58) => n_1236, A_nso(57) => n_1237,
                           A_nso(56) => n_1238, A_nso(55) => n_1239, A_nso(54) 
                           => n_1240, A_nso(53) => n_1241, A_nso(52) => n_1242,
                           A_nso(51) => n_1243, A_nso(50) => n_1244, A_nso(49) 
                           => n_1245, A_nso(48) => n_1246, A_nso(47) => n_1247,
                           A_nso(46) => n_1248, A_nso(45) => n_1249, A_nso(44) 
                           => n_1250, A_nso(43) => n_1251, A_nso(42) => n_1252,
                           A_nso(41) => n_1253, A_nso(40) => n_1254, A_nso(39) 
                           => n_1255, A_nso(38) => n_1256, A_nso(37) => n_1257,
                           A_nso(36) => n_1258, A_nso(35) => n_1259, A_nso(34) 
                           => n_1260, A_nso(33) => n_1261, A_nso(32) => n_1262,
                           A_nso(31) => n_1263, A_nso(30) => n_1264, A_nso(29) 
                           => n_1265, A_nso(28) => n_1266, A_nso(27) => n_1267,
                           A_nso(26) => n_1268, A_nso(25) => n_1269, A_nso(24) 
                           => n_1270, A_nso(23) => n_1271, A_nso(22) => n_1272,
                           A_nso(21) => n_1273, A_nso(20) => n_1274, A_nso(19) 
                           => n_1275, A_nso(18) => n_1276, A_nso(17) => n_1277,
                           A_nso(16) => n_1278, A_nso(15) => n_1279, A_nso(14) 
                           => n_1280, A_nso(13) => n_1281, A_nso(12) => n_1282,
                           A_nso(11) => n_1283, A_nso(10) => n_1284, A_nso(9) 
                           => n_1285, A_nso(8) => n_1286, A_nso(7) => n_1287, 
                           A_nso(6) => n_1288, A_nso(5) => n_1289, A_nso(4) => 
                           n_1290, A_nso(3) => n_1291, A_nso(2) => n_1292, 
                           A_nso(1) => n_1293, A_nso(0) => n_1294);
   ADDER1 : RCA_NBIT36 port map( A(35) => OTMP_0_34_port, A(34) => 
                           OTMP_0_34_port, A(33) => OTMP_0_34_port, A(32) => 
                           OTMP_0_32_port, A(31) => OTMP_0_31_port, A(30) => 
                           OTMP_0_30_port, A(29) => OTMP_0_29_port, A(28) => 
                           OTMP_0_28_port, A(27) => OTMP_0_27_port, A(26) => 
                           OTMP_0_26_port, A(25) => OTMP_0_25_port, A(24) => 
                           OTMP_0_24_port, A(23) => OTMP_0_23_port, A(22) => 
                           OTMP_0_22_port, A(21) => OTMP_0_21_port, A(20) => 
                           OTMP_0_20_port, A(19) => OTMP_0_19_port, A(18) => 
                           OTMP_0_18_port, A(17) => OTMP_0_17_port, A(16) => 
                           OTMP_0_16_port, A(15) => OTMP_0_15_port, A(14) => 
                           OTMP_0_14_port, A(13) => OTMP_0_13_port, A(12) => 
                           OTMP_0_12_port, A(11) => OTMP_0_11_port, A(10) => 
                           OTMP_0_10_port, A(9) => OTMP_0_9_port, A(8) => 
                           OTMP_0_8_port, A(7) => OTMP_0_7_port, A(6) => 
                           OTMP_0_6_port, A(5) => OTMP_0_5_port, A(4) => 
                           OTMP_0_4_port, A(3) => OTMP_0_3_port, A(2) => 
                           OTMP_0_2_port, A(1) => OTMP_0_1_port, A(0) => 
                           OTMP_0_0_port, B(35) => OTMP_1_35_port, B(34) => 
                           OTMP_1_34_port, B(33) => OTMP_1_33_port, B(32) => 
                           OTMP_1_32_port, B(31) => OTMP_1_31_port, B(30) => 
                           OTMP_1_30_port, B(29) => OTMP_1_29_port, B(28) => 
                           OTMP_1_28_port, B(27) => OTMP_1_27_port, B(26) => 
                           OTMP_1_26_port, B(25) => OTMP_1_25_port, B(24) => 
                           OTMP_1_24_port, B(23) => OTMP_1_23_port, B(22) => 
                           OTMP_1_22_port, B(21) => OTMP_1_21_port, B(20) => 
                           OTMP_1_20_port, B(19) => OTMP_1_19_port, B(18) => 
                           OTMP_1_18_port, B(17) => OTMP_1_17_port, B(16) => 
                           OTMP_1_16_port, B(15) => OTMP_1_15_port, B(14) => 
                           OTMP_1_14_port, B(13) => OTMP_1_13_port, B(12) => 
                           OTMP_1_12_port, B(11) => OTMP_1_11_port, B(10) => 
                           OTMP_1_10_port, B(9) => OTMP_1_9_port, B(8) => 
                           OTMP_1_8_port, B(7) => OTMP_1_7_port, B(6) => 
                           OTMP_1_6_port, B(5) => OTMP_1_5_port, B(4) => 
                           OTMP_1_4_port, B(3) => OTMP_1_3_port, B(2) => 
                           OTMP_1_2_port, B(1) => OTMP_1_1_port, B(0) => 
                           OTMP_1_0_port, Ci => X_Logic0_port, S(35) => 
                           PTMP_0_36_port, S(34) => PTMP_0_34_port, S(33) => 
                           PTMP_0_33_port, S(32) => PTMP_0_32_port, S(31) => 
                           PTMP_0_31_port, S(30) => PTMP_0_30_port, S(29) => 
                           PTMP_0_29_port, S(28) => PTMP_0_28_port, S(27) => 
                           PTMP_0_27_port, S(26) => PTMP_0_26_port, S(25) => 
                           PTMP_0_25_port, S(24) => PTMP_0_24_port, S(23) => 
                           PTMP_0_23_port, S(22) => PTMP_0_22_port, S(21) => 
                           PTMP_0_21_port, S(20) => PTMP_0_20_port, S(19) => 
                           PTMP_0_19_port, S(18) => PTMP_0_18_port, S(17) => 
                           PTMP_0_17_port, S(16) => PTMP_0_16_port, S(15) => 
                           PTMP_0_15_port, S(14) => PTMP_0_14_port, S(13) => 
                           PTMP_0_13_port, S(12) => PTMP_0_12_port, S(11) => 
                           PTMP_0_11_port, S(10) => PTMP_0_10_port, S(9) => 
                           PTMP_0_9_port, S(8) => PTMP_0_8_port, S(7) => 
                           PTMP_0_7_port, S(6) => PTMP_0_6_port, S(5) => 
                           PTMP_0_5_port, S(4) => PTMP_0_4_port, S(3) => 
                           PTMP_0_3_port, S(2) => PTMP_0_2_port, S(1) => 
                           PTMP_0_1_port, S(0) => PTMP_0_0_port, Co => n_1295);
   ADDER_2 : RCA_NBIT38 port map( A(37) => PTMP_0_36_port, A(36) => 
                           PTMP_0_36_port, A(35) => PTMP_0_36_port, A(34) => 
                           PTMP_0_34_port, A(33) => PTMP_0_33_port, A(32) => 
                           PTMP_0_32_port, A(31) => PTMP_0_31_port, A(30) => 
                           PTMP_0_30_port, A(29) => PTMP_0_29_port, A(28) => 
                           PTMP_0_28_port, A(27) => PTMP_0_27_port, A(26) => 
                           PTMP_0_26_port, A(25) => PTMP_0_25_port, A(24) => 
                           PTMP_0_24_port, A(23) => PTMP_0_23_port, A(22) => 
                           PTMP_0_22_port, A(21) => PTMP_0_21_port, A(20) => 
                           PTMP_0_20_port, A(19) => PTMP_0_19_port, A(18) => 
                           PTMP_0_18_port, A(17) => PTMP_0_17_port, A(16) => 
                           PTMP_0_16_port, A(15) => PTMP_0_15_port, A(14) => 
                           PTMP_0_14_port, A(13) => PTMP_0_13_port, A(12) => 
                           PTMP_0_12_port, A(11) => PTMP_0_11_port, A(10) => 
                           PTMP_0_10_port, A(9) => PTMP_0_9_port, A(8) => 
                           PTMP_0_8_port, A(7) => PTMP_0_7_port, A(6) => 
                           PTMP_0_6_port, A(5) => PTMP_0_5_port, A(4) => 
                           PTMP_0_4_port, A(3) => PTMP_0_3_port, A(2) => 
                           PTMP_0_2_port, A(1) => PTMP_0_1_port, A(0) => 
                           PTMP_0_0_port, B(37) => OTMP_2_37_port, B(36) => 
                           OTMP_2_36_port, B(35) => OTMP_2_35_port, B(34) => 
                           OTMP_2_34_port, B(33) => OTMP_2_33_port, B(32) => 
                           OTMP_2_32_port, B(31) => OTMP_2_31_port, B(30) => 
                           OTMP_2_30_port, B(29) => OTMP_2_29_port, B(28) => 
                           OTMP_2_28_port, B(27) => OTMP_2_27_port, B(26) => 
                           OTMP_2_26_port, B(25) => OTMP_2_25_port, B(24) => 
                           OTMP_2_24_port, B(23) => OTMP_2_23_port, B(22) => 
                           OTMP_2_22_port, B(21) => OTMP_2_21_port, B(20) => 
                           OTMP_2_20_port, B(19) => OTMP_2_19_port, B(18) => 
                           OTMP_2_18_port, B(17) => OTMP_2_17_port, B(16) => 
                           OTMP_2_16_port, B(15) => OTMP_2_15_port, B(14) => 
                           OTMP_2_14_port, B(13) => OTMP_2_13_port, B(12) => 
                           OTMP_2_12_port, B(11) => OTMP_2_11_port, B(10) => 
                           OTMP_2_10_port, B(9) => OTMP_2_9_port, B(8) => 
                           OTMP_2_8_port, B(7) => OTMP_2_7_port, B(6) => 
                           OTMP_2_6_port, B(5) => OTMP_2_5_port, B(4) => 
                           OTMP_2_4_port, B(3) => OTMP_2_3_port, B(2) => 
                           OTMP_2_2_port, B(1) => OTMP_2_1_port, B(0) => 
                           OTMP_2_0_port, Ci => X_Logic0_port, S(37) => 
                           PTMP_1_37_port, S(36) => PTMP_1_36_port, S(35) => 
                           PTMP_1_35_port, S(34) => PTMP_1_34_port, S(33) => 
                           PTMP_1_33_port, S(32) => PTMP_1_32_port, S(31) => 
                           PTMP_1_31_port, S(30) => PTMP_1_30_port, S(29) => 
                           PTMP_1_29_port, S(28) => PTMP_1_28_port, S(27) => 
                           PTMP_1_27_port, S(26) => PTMP_1_26_port, S(25) => 
                           PTMP_1_25_port, S(24) => PTMP_1_24_port, S(23) => 
                           PTMP_1_23_port, S(22) => PTMP_1_22_port, S(21) => 
                           PTMP_1_21_port, S(20) => PTMP_1_20_port, S(19) => 
                           PTMP_1_19_port, S(18) => PTMP_1_18_port, S(17) => 
                           PTMP_1_17_port, S(16) => PTMP_1_16_port, S(15) => 
                           PTMP_1_15_port, S(14) => PTMP_1_14_port, S(13) => 
                           PTMP_1_13_port, S(12) => PTMP_1_12_port, S(11) => 
                           PTMP_1_11_port, S(10) => PTMP_1_10_port, S(9) => 
                           PTMP_1_9_port, S(8) => PTMP_1_8_port, S(7) => 
                           PTMP_1_7_port, S(6) => PTMP_1_6_port, S(5) => 
                           PTMP_1_5_port, S(4) => PTMP_1_4_port, S(3) => 
                           PTMP_1_3_port, S(2) => PTMP_1_2_port, S(1) => 
                           PTMP_1_1_port, S(0) => PTMP_1_0_port, Co => n_1296);
   ADDER_3 : RCA_NBIT40 port map( A(39) => PTMP_1_37_port, A(38) => 
                           PTMP_1_37_port, A(37) => PTMP_1_37_port, A(36) => 
                           PTMP_1_36_port, A(35) => PTMP_1_35_port, A(34) => 
                           PTMP_1_34_port, A(33) => PTMP_1_33_port, A(32) => 
                           PTMP_1_32_port, A(31) => PTMP_1_31_port, A(30) => 
                           PTMP_1_30_port, A(29) => PTMP_1_29_port, A(28) => 
                           PTMP_1_28_port, A(27) => PTMP_1_27_port, A(26) => 
                           PTMP_1_26_port, A(25) => PTMP_1_25_port, A(24) => 
                           PTMP_1_24_port, A(23) => PTMP_1_23_port, A(22) => 
                           PTMP_1_22_port, A(21) => PTMP_1_21_port, A(20) => 
                           PTMP_1_20_port, A(19) => PTMP_1_19_port, A(18) => 
                           PTMP_1_18_port, A(17) => PTMP_1_17_port, A(16) => 
                           PTMP_1_16_port, A(15) => PTMP_1_15_port, A(14) => 
                           PTMP_1_14_port, A(13) => PTMP_1_13_port, A(12) => 
                           PTMP_1_12_port, A(11) => PTMP_1_11_port, A(10) => 
                           PTMP_1_10_port, A(9) => PTMP_1_9_port, A(8) => 
                           PTMP_1_8_port, A(7) => PTMP_1_7_port, A(6) => 
                           PTMP_1_6_port, A(5) => PTMP_1_5_port, A(4) => 
                           PTMP_1_4_port, A(3) => PTMP_1_3_port, A(2) => 
                           PTMP_1_2_port, A(1) => PTMP_1_1_port, A(0) => 
                           PTMP_1_0_port, B(39) => OTMP_3_39_port, B(38) => 
                           OTMP_3_38_port, B(37) => OTMP_3_37_port, B(36) => 
                           OTMP_3_36_port, B(35) => OTMP_3_35_port, B(34) => 
                           OTMP_3_34_port, B(33) => OTMP_3_33_port, B(32) => 
                           OTMP_3_32_port, B(31) => OTMP_3_31_port, B(30) => 
                           OTMP_3_30_port, B(29) => OTMP_3_29_port, B(28) => 
                           OTMP_3_28_port, B(27) => OTMP_3_27_port, B(26) => 
                           OTMP_3_26_port, B(25) => OTMP_3_25_port, B(24) => 
                           OTMP_3_24_port, B(23) => OTMP_3_23_port, B(22) => 
                           OTMP_3_22_port, B(21) => OTMP_3_21_port, B(20) => 
                           OTMP_3_20_port, B(19) => OTMP_3_19_port, B(18) => 
                           OTMP_3_18_port, B(17) => OTMP_3_17_port, B(16) => 
                           OTMP_3_16_port, B(15) => OTMP_3_15_port, B(14) => 
                           OTMP_3_14_port, B(13) => OTMP_3_13_port, B(12) => 
                           OTMP_3_12_port, B(11) => OTMP_3_11_port, B(10) => 
                           OTMP_3_10_port, B(9) => OTMP_3_9_port, B(8) => 
                           OTMP_3_8_port, B(7) => OTMP_3_7_port, B(6) => 
                           OTMP_3_6_port, B(5) => OTMP_3_5_port, B(4) => 
                           OTMP_3_4_port, B(3) => OTMP_3_3_port, B(2) => 
                           OTMP_3_2_port, B(1) => OTMP_3_1_port, B(0) => 
                           OTMP_3_0_port, Ci => X_Logic0_port, S(39) => 
                           PTMP_2_39_port, S(38) => PTMP_2_38_port, S(37) => 
                           PTMP_2_37_port, S(36) => PTMP_2_36_port, S(35) => 
                           PTMP_2_35_port, S(34) => PTMP_2_34_port, S(33) => 
                           PTMP_2_33_port, S(32) => PTMP_2_32_port, S(31) => 
                           PTMP_2_31_port, S(30) => PTMP_2_30_port, S(29) => 
                           PTMP_2_29_port, S(28) => PTMP_2_28_port, S(27) => 
                           PTMP_2_27_port, S(26) => PTMP_2_26_port, S(25) => 
                           PTMP_2_25_port, S(24) => PTMP_2_24_port, S(23) => 
                           PTMP_2_23_port, S(22) => PTMP_2_22_port, S(21) => 
                           PTMP_2_21_port, S(20) => PTMP_2_20_port, S(19) => 
                           PTMP_2_19_port, S(18) => PTMP_2_18_port, S(17) => 
                           PTMP_2_17_port, S(16) => PTMP_2_16_port, S(15) => 
                           PTMP_2_15_port, S(14) => PTMP_2_14_port, S(13) => 
                           PTMP_2_13_port, S(12) => PTMP_2_12_port, S(11) => 
                           PTMP_2_11_port, S(10) => PTMP_2_10_port, S(9) => 
                           PTMP_2_9_port, S(8) => PTMP_2_8_port, S(7) => 
                           PTMP_2_7_port, S(6) => PTMP_2_6_port, S(5) => 
                           PTMP_2_5_port, S(4) => PTMP_2_4_port, S(3) => 
                           PTMP_2_3_port, S(2) => PTMP_2_2_port, S(1) => 
                           PTMP_2_1_port, S(0) => PTMP_2_0_port, Co => n_1297);
   ADDER_4 : RCA_NBIT42 port map( A(41) => PTMP_2_39_port, A(40) => 
                           PTMP_2_39_port, A(39) => PTMP_2_39_port, A(38) => 
                           PTMP_2_38_port, A(37) => PTMP_2_37_port, A(36) => 
                           PTMP_2_36_port, A(35) => PTMP_2_35_port, A(34) => 
                           PTMP_2_34_port, A(33) => PTMP_2_33_port, A(32) => 
                           PTMP_2_32_port, A(31) => PTMP_2_31_port, A(30) => 
                           PTMP_2_30_port, A(29) => PTMP_2_29_port, A(28) => 
                           PTMP_2_28_port, A(27) => PTMP_2_27_port, A(26) => 
                           PTMP_2_26_port, A(25) => PTMP_2_25_port, A(24) => 
                           PTMP_2_24_port, A(23) => PTMP_2_23_port, A(22) => 
                           PTMP_2_22_port, A(21) => PTMP_2_21_port, A(20) => 
                           PTMP_2_20_port, A(19) => PTMP_2_19_port, A(18) => 
                           PTMP_2_18_port, A(17) => PTMP_2_17_port, A(16) => 
                           PTMP_2_16_port, A(15) => PTMP_2_15_port, A(14) => 
                           PTMP_2_14_port, A(13) => PTMP_2_13_port, A(12) => 
                           PTMP_2_12_port, A(11) => PTMP_2_11_port, A(10) => 
                           PTMP_2_10_port, A(9) => PTMP_2_9_port, A(8) => 
                           PTMP_2_8_port, A(7) => PTMP_2_7_port, A(6) => 
                           PTMP_2_6_port, A(5) => PTMP_2_5_port, A(4) => 
                           PTMP_2_4_port, A(3) => PTMP_2_3_port, A(2) => 
                           PTMP_2_2_port, A(1) => PTMP_2_1_port, A(0) => 
                           PTMP_2_0_port, B(41) => OTMP_4_41_port, B(40) => 
                           OTMP_4_40_port, B(39) => OTMP_4_39_port, B(38) => 
                           OTMP_4_38_port, B(37) => OTMP_4_37_port, B(36) => 
                           OTMP_4_36_port, B(35) => OTMP_4_35_port, B(34) => 
                           OTMP_4_34_port, B(33) => OTMP_4_33_port, B(32) => 
                           OTMP_4_32_port, B(31) => OTMP_4_31_port, B(30) => 
                           OTMP_4_30_port, B(29) => OTMP_4_29_port, B(28) => 
                           OTMP_4_28_port, B(27) => OTMP_4_27_port, B(26) => 
                           OTMP_4_26_port, B(25) => OTMP_4_25_port, B(24) => 
                           OTMP_4_24_port, B(23) => OTMP_4_23_port, B(22) => 
                           OTMP_4_22_port, B(21) => OTMP_4_21_port, B(20) => 
                           OTMP_4_20_port, B(19) => OTMP_4_19_port, B(18) => 
                           OTMP_4_18_port, B(17) => OTMP_4_17_port, B(16) => 
                           OTMP_4_16_port, B(15) => OTMP_4_15_port, B(14) => 
                           OTMP_4_14_port, B(13) => OTMP_4_13_port, B(12) => 
                           OTMP_4_12_port, B(11) => OTMP_4_11_port, B(10) => 
                           OTMP_4_10_port, B(9) => OTMP_4_9_port, B(8) => 
                           OTMP_4_8_port, B(7) => OTMP_4_7_port, B(6) => 
                           OTMP_4_6_port, B(5) => OTMP_4_5_port, B(4) => 
                           OTMP_4_4_port, B(3) => OTMP_4_3_port, B(2) => 
                           OTMP_4_2_port, B(1) => OTMP_4_1_port, B(0) => 
                           OTMP_4_0_port, Ci => X_Logic0_port, S(41) => 
                           PTMP_3_41_port, S(40) => PTMP_3_40_port, S(39) => 
                           PTMP_3_39_port, S(38) => PTMP_3_38_port, S(37) => 
                           PTMP_3_37_port, S(36) => PTMP_3_36_port, S(35) => 
                           PTMP_3_35_port, S(34) => PTMP_3_34_port, S(33) => 
                           PTMP_3_33_port, S(32) => PTMP_3_32_port, S(31) => 
                           PTMP_3_31_port, S(30) => PTMP_3_30_port, S(29) => 
                           PTMP_3_29_port, S(28) => PTMP_3_28_port, S(27) => 
                           PTMP_3_27_port, S(26) => PTMP_3_26_port, S(25) => 
                           PTMP_3_25_port, S(24) => PTMP_3_24_port, S(23) => 
                           PTMP_3_23_port, S(22) => PTMP_3_22_port, S(21) => 
                           PTMP_3_21_port, S(20) => PTMP_3_20_port, S(19) => 
                           PTMP_3_19_port, S(18) => PTMP_3_18_port, S(17) => 
                           PTMP_3_17_port, S(16) => PTMP_3_16_port, S(15) => 
                           PTMP_3_15_port, S(14) => PTMP_3_14_port, S(13) => 
                           PTMP_3_13_port, S(12) => PTMP_3_12_port, S(11) => 
                           PTMP_3_11_port, S(10) => PTMP_3_10_port, S(9) => 
                           PTMP_3_9_port, S(8) => PTMP_3_8_port, S(7) => 
                           PTMP_3_7_port, S(6) => PTMP_3_6_port, S(5) => 
                           PTMP_3_5_port, S(4) => PTMP_3_4_port, S(3) => 
                           PTMP_3_3_port, S(2) => PTMP_3_2_port, S(1) => 
                           PTMP_3_1_port, S(0) => PTMP_3_0_port, Co => n_1298);
   ADDER_5 : RCA_NBIT44 port map( A(43) => PTMP_3_41_port, A(42) => 
                           PTMP_3_41_port, A(41) => PTMP_3_41_port, A(40) => 
                           PTMP_3_40_port, A(39) => PTMP_3_39_port, A(38) => 
                           PTMP_3_38_port, A(37) => PTMP_3_37_port, A(36) => 
                           PTMP_3_36_port, A(35) => PTMP_3_35_port, A(34) => 
                           PTMP_3_34_port, A(33) => PTMP_3_33_port, A(32) => 
                           PTMP_3_32_port, A(31) => PTMP_3_31_port, A(30) => 
                           PTMP_3_30_port, A(29) => PTMP_3_29_port, A(28) => 
                           PTMP_3_28_port, A(27) => PTMP_3_27_port, A(26) => 
                           PTMP_3_26_port, A(25) => PTMP_3_25_port, A(24) => 
                           PTMP_3_24_port, A(23) => PTMP_3_23_port, A(22) => 
                           PTMP_3_22_port, A(21) => PTMP_3_21_port, A(20) => 
                           PTMP_3_20_port, A(19) => PTMP_3_19_port, A(18) => 
                           PTMP_3_18_port, A(17) => PTMP_3_17_port, A(16) => 
                           PTMP_3_16_port, A(15) => PTMP_3_15_port, A(14) => 
                           PTMP_3_14_port, A(13) => PTMP_3_13_port, A(12) => 
                           PTMP_3_12_port, A(11) => PTMP_3_11_port, A(10) => 
                           PTMP_3_10_port, A(9) => PTMP_3_9_port, A(8) => 
                           PTMP_3_8_port, A(7) => PTMP_3_7_port, A(6) => 
                           PTMP_3_6_port, A(5) => PTMP_3_5_port, A(4) => 
                           PTMP_3_4_port, A(3) => PTMP_3_3_port, A(2) => 
                           PTMP_3_2_port, A(1) => PTMP_3_1_port, A(0) => 
                           PTMP_3_0_port, B(43) => OTMP_5_43_port, B(42) => 
                           OTMP_5_42_port, B(41) => OTMP_5_41_port, B(40) => 
                           OTMP_5_40_port, B(39) => OTMP_5_39_port, B(38) => 
                           OTMP_5_38_port, B(37) => OTMP_5_37_port, B(36) => 
                           OTMP_5_36_port, B(35) => OTMP_5_35_port, B(34) => 
                           OTMP_5_34_port, B(33) => OTMP_5_33_port, B(32) => 
                           OTMP_5_32_port, B(31) => OTMP_5_31_port, B(30) => 
                           OTMP_5_30_port, B(29) => OTMP_5_29_port, B(28) => 
                           OTMP_5_28_port, B(27) => OTMP_5_27_port, B(26) => 
                           OTMP_5_26_port, B(25) => OTMP_5_25_port, B(24) => 
                           OTMP_5_24_port, B(23) => OTMP_5_23_port, B(22) => 
                           OTMP_5_22_port, B(21) => OTMP_5_21_port, B(20) => 
                           OTMP_5_20_port, B(19) => OTMP_5_19_port, B(18) => 
                           OTMP_5_18_port, B(17) => OTMP_5_17_port, B(16) => 
                           OTMP_5_16_port, B(15) => OTMP_5_15_port, B(14) => 
                           OTMP_5_14_port, B(13) => OTMP_5_13_port, B(12) => 
                           OTMP_5_12_port, B(11) => OTMP_5_11_port, B(10) => 
                           OTMP_5_10_port, B(9) => OTMP_5_9_port, B(8) => 
                           OTMP_5_8_port, B(7) => OTMP_5_7_port, B(6) => 
                           OTMP_5_6_port, B(5) => OTMP_5_5_port, B(4) => 
                           OTMP_5_4_port, B(3) => OTMP_5_3_port, B(2) => 
                           OTMP_5_2_port, B(1) => OTMP_5_1_port, B(0) => 
                           OTMP_5_0_port, Ci => X_Logic0_port, S(43) => 
                           PTMP_4_43_port, S(42) => PTMP_4_42_port, S(41) => 
                           PTMP_4_41_port, S(40) => PTMP_4_40_port, S(39) => 
                           PTMP_4_39_port, S(38) => PTMP_4_38_port, S(37) => 
                           PTMP_4_37_port, S(36) => PTMP_4_36_port, S(35) => 
                           PTMP_4_35_port, S(34) => PTMP_4_34_port, S(33) => 
                           PTMP_4_33_port, S(32) => PTMP_4_32_port, S(31) => 
                           PTMP_4_31_port, S(30) => PTMP_4_30_port, S(29) => 
                           PTMP_4_29_port, S(28) => PTMP_4_28_port, S(27) => 
                           PTMP_4_27_port, S(26) => PTMP_4_26_port, S(25) => 
                           PTMP_4_25_port, S(24) => PTMP_4_24_port, S(23) => 
                           PTMP_4_23_port, S(22) => PTMP_4_22_port, S(21) => 
                           PTMP_4_21_port, S(20) => PTMP_4_20_port, S(19) => 
                           PTMP_4_19_port, S(18) => PTMP_4_18_port, S(17) => 
                           PTMP_4_17_port, S(16) => PTMP_4_16_port, S(15) => 
                           PTMP_4_15_port, S(14) => PTMP_4_14_port, S(13) => 
                           PTMP_4_13_port, S(12) => PTMP_4_12_port, S(11) => 
                           PTMP_4_11_port, S(10) => PTMP_4_10_port, S(9) => 
                           PTMP_4_9_port, S(8) => PTMP_4_8_port, S(7) => 
                           PTMP_4_7_port, S(6) => PTMP_4_6_port, S(5) => 
                           PTMP_4_5_port, S(4) => PTMP_4_4_port, S(3) => 
                           PTMP_4_3_port, S(2) => PTMP_4_2_port, S(1) => 
                           PTMP_4_1_port, S(0) => PTMP_4_0_port, Co => n_1299);
   ADDER_6 : RCA_NBIT46 port map( A(45) => PTMP_4_43_port, A(44) => 
                           PTMP_4_43_port, A(43) => PTMP_4_43_port, A(42) => 
                           PTMP_4_42_port, A(41) => PTMP_4_41_port, A(40) => 
                           PTMP_4_40_port, A(39) => PTMP_4_39_port, A(38) => 
                           PTMP_4_38_port, A(37) => PTMP_4_37_port, A(36) => 
                           PTMP_4_36_port, A(35) => PTMP_4_35_port, A(34) => 
                           PTMP_4_34_port, A(33) => PTMP_4_33_port, A(32) => 
                           PTMP_4_32_port, A(31) => PTMP_4_31_port, A(30) => 
                           PTMP_4_30_port, A(29) => PTMP_4_29_port, A(28) => 
                           PTMP_4_28_port, A(27) => PTMP_4_27_port, A(26) => 
                           PTMP_4_26_port, A(25) => PTMP_4_25_port, A(24) => 
                           PTMP_4_24_port, A(23) => PTMP_4_23_port, A(22) => 
                           PTMP_4_22_port, A(21) => PTMP_4_21_port, A(20) => 
                           PTMP_4_20_port, A(19) => PTMP_4_19_port, A(18) => 
                           PTMP_4_18_port, A(17) => PTMP_4_17_port, A(16) => 
                           PTMP_4_16_port, A(15) => PTMP_4_15_port, A(14) => 
                           PTMP_4_14_port, A(13) => PTMP_4_13_port, A(12) => 
                           PTMP_4_12_port, A(11) => PTMP_4_11_port, A(10) => 
                           PTMP_4_10_port, A(9) => PTMP_4_9_port, A(8) => 
                           PTMP_4_8_port, A(7) => PTMP_4_7_port, A(6) => 
                           PTMP_4_6_port, A(5) => PTMP_4_5_port, A(4) => 
                           PTMP_4_4_port, A(3) => PTMP_4_3_port, A(2) => 
                           PTMP_4_2_port, A(1) => PTMP_4_1_port, A(0) => 
                           PTMP_4_0_port, B(45) => OTMP_6_45_port, B(44) => 
                           OTMP_6_44_port, B(43) => OTMP_6_43_port, B(42) => 
                           OTMP_6_42_port, B(41) => OTMP_6_41_port, B(40) => 
                           OTMP_6_40_port, B(39) => OTMP_6_39_port, B(38) => 
                           OTMP_6_38_port, B(37) => OTMP_6_37_port, B(36) => 
                           OTMP_6_36_port, B(35) => OTMP_6_35_port, B(34) => 
                           OTMP_6_34_port, B(33) => OTMP_6_33_port, B(32) => 
                           OTMP_6_32_port, B(31) => OTMP_6_31_port, B(30) => 
                           OTMP_6_30_port, B(29) => OTMP_6_29_port, B(28) => 
                           OTMP_6_28_port, B(27) => OTMP_6_27_port, B(26) => 
                           OTMP_6_26_port, B(25) => OTMP_6_25_port, B(24) => 
                           OTMP_6_24_port, B(23) => OTMP_6_23_port, B(22) => 
                           OTMP_6_22_port, B(21) => OTMP_6_21_port, B(20) => 
                           OTMP_6_20_port, B(19) => OTMP_6_19_port, B(18) => 
                           OTMP_6_18_port, B(17) => OTMP_6_17_port, B(16) => 
                           OTMP_6_16_port, B(15) => OTMP_6_15_port, B(14) => 
                           OTMP_6_14_port, B(13) => OTMP_6_13_port, B(12) => 
                           OTMP_6_12_port, B(11) => OTMP_6_11_port, B(10) => 
                           OTMP_6_10_port, B(9) => OTMP_6_9_port, B(8) => 
                           OTMP_6_8_port, B(7) => OTMP_6_7_port, B(6) => 
                           OTMP_6_6_port, B(5) => OTMP_6_5_port, B(4) => 
                           OTMP_6_4_port, B(3) => OTMP_6_3_port, B(2) => 
                           OTMP_6_2_port, B(1) => OTMP_6_1_port, B(0) => 
                           OTMP_6_0_port, Ci => X_Logic0_port, S(45) => 
                           PTMP_5_45_port, S(44) => PTMP_5_44_port, S(43) => 
                           PTMP_5_43_port, S(42) => PTMP_5_42_port, S(41) => 
                           PTMP_5_41_port, S(40) => PTMP_5_40_port, S(39) => 
                           PTMP_5_39_port, S(38) => PTMP_5_38_port, S(37) => 
                           PTMP_5_37_port, S(36) => PTMP_5_36_port, S(35) => 
                           PTMP_5_35_port, S(34) => PTMP_5_34_port, S(33) => 
                           PTMP_5_33_port, S(32) => PTMP_5_32_port, S(31) => 
                           PTMP_5_31_port, S(30) => PTMP_5_30_port, S(29) => 
                           PTMP_5_29_port, S(28) => PTMP_5_28_port, S(27) => 
                           PTMP_5_27_port, S(26) => PTMP_5_26_port, S(25) => 
                           PTMP_5_25_port, S(24) => PTMP_5_24_port, S(23) => 
                           PTMP_5_23_port, S(22) => PTMP_5_22_port, S(21) => 
                           PTMP_5_21_port, S(20) => PTMP_5_20_port, S(19) => 
                           PTMP_5_19_port, S(18) => PTMP_5_18_port, S(17) => 
                           PTMP_5_17_port, S(16) => PTMP_5_16_port, S(15) => 
                           PTMP_5_15_port, S(14) => PTMP_5_14_port, S(13) => 
                           PTMP_5_13_port, S(12) => PTMP_5_12_port, S(11) => 
                           PTMP_5_11_port, S(10) => PTMP_5_10_port, S(9) => 
                           PTMP_5_9_port, S(8) => PTMP_5_8_port, S(7) => 
                           PTMP_5_7_port, S(6) => PTMP_5_6_port, S(5) => 
                           PTMP_5_5_port, S(4) => PTMP_5_4_port, S(3) => 
                           PTMP_5_3_port, S(2) => PTMP_5_2_port, S(1) => 
                           PTMP_5_1_port, S(0) => PTMP_5_0_port, Co => n_1300);
   ADDER_7 : RCA_NBIT48 port map( A(47) => PTMP_5_45_port, A(46) => 
                           PTMP_5_45_port, A(45) => PTMP_5_45_port, A(44) => 
                           PTMP_5_44_port, A(43) => PTMP_5_43_port, A(42) => 
                           PTMP_5_42_port, A(41) => PTMP_5_41_port, A(40) => 
                           PTMP_5_40_port, A(39) => PTMP_5_39_port, A(38) => 
                           PTMP_5_38_port, A(37) => PTMP_5_37_port, A(36) => 
                           PTMP_5_36_port, A(35) => PTMP_5_35_port, A(34) => 
                           PTMP_5_34_port, A(33) => PTMP_5_33_port, A(32) => 
                           PTMP_5_32_port, A(31) => PTMP_5_31_port, A(30) => 
                           PTMP_5_30_port, A(29) => PTMP_5_29_port, A(28) => 
                           PTMP_5_28_port, A(27) => PTMP_5_27_port, A(26) => 
                           PTMP_5_26_port, A(25) => PTMP_5_25_port, A(24) => 
                           PTMP_5_24_port, A(23) => PTMP_5_23_port, A(22) => 
                           PTMP_5_22_port, A(21) => PTMP_5_21_port, A(20) => 
                           PTMP_5_20_port, A(19) => PTMP_5_19_port, A(18) => 
                           PTMP_5_18_port, A(17) => PTMP_5_17_port, A(16) => 
                           PTMP_5_16_port, A(15) => PTMP_5_15_port, A(14) => 
                           PTMP_5_14_port, A(13) => PTMP_5_13_port, A(12) => 
                           PTMP_5_12_port, A(11) => PTMP_5_11_port, A(10) => 
                           PTMP_5_10_port, A(9) => PTMP_5_9_port, A(8) => 
                           PTMP_5_8_port, A(7) => PTMP_5_7_port, A(6) => 
                           PTMP_5_6_port, A(5) => PTMP_5_5_port, A(4) => 
                           PTMP_5_4_port, A(3) => PTMP_5_3_port, A(2) => 
                           PTMP_5_2_port, A(1) => PTMP_5_1_port, A(0) => 
                           PTMP_5_0_port, B(47) => OTMP_7_47_port, B(46) => 
                           OTMP_7_46_port, B(45) => OTMP_7_45_port, B(44) => 
                           OTMP_7_44_port, B(43) => OTMP_7_43_port, B(42) => 
                           OTMP_7_42_port, B(41) => OTMP_7_41_port, B(40) => 
                           OTMP_7_40_port, B(39) => OTMP_7_39_port, B(38) => 
                           OTMP_7_38_port, B(37) => OTMP_7_37_port, B(36) => 
                           OTMP_7_36_port, B(35) => OTMP_7_35_port, B(34) => 
                           OTMP_7_34_port, B(33) => OTMP_7_33_port, B(32) => 
                           OTMP_7_32_port, B(31) => OTMP_7_31_port, B(30) => 
                           OTMP_7_30_port, B(29) => OTMP_7_29_port, B(28) => 
                           OTMP_7_28_port, B(27) => OTMP_7_27_port, B(26) => 
                           OTMP_7_26_port, B(25) => OTMP_7_25_port, B(24) => 
                           OTMP_7_24_port, B(23) => OTMP_7_23_port, B(22) => 
                           OTMP_7_22_port, B(21) => OTMP_7_21_port, B(20) => 
                           OTMP_7_20_port, B(19) => OTMP_7_19_port, B(18) => 
                           OTMP_7_18_port, B(17) => OTMP_7_17_port, B(16) => 
                           OTMP_7_16_port, B(15) => OTMP_7_15_port, B(14) => 
                           OTMP_7_14_port, B(13) => OTMP_7_13_port, B(12) => 
                           OTMP_7_12_port, B(11) => OTMP_7_11_port, B(10) => 
                           OTMP_7_10_port, B(9) => OTMP_7_9_port, B(8) => 
                           OTMP_7_8_port, B(7) => OTMP_7_7_port, B(6) => 
                           OTMP_7_6_port, B(5) => OTMP_7_5_port, B(4) => 
                           OTMP_7_4_port, B(3) => OTMP_7_3_port, B(2) => 
                           OTMP_7_2_port, B(1) => OTMP_7_1_port, B(0) => 
                           OTMP_7_0_port, Ci => X_Logic0_port, S(47) => 
                           PTMP_6_47_port, S(46) => PTMP_6_46_port, S(45) => 
                           PTMP_6_45_port, S(44) => PTMP_6_44_port, S(43) => 
                           PTMP_6_43_port, S(42) => PTMP_6_42_port, S(41) => 
                           PTMP_6_41_port, S(40) => PTMP_6_40_port, S(39) => 
                           PTMP_6_39_port, S(38) => PTMP_6_38_port, S(37) => 
                           PTMP_6_37_port, S(36) => PTMP_6_36_port, S(35) => 
                           PTMP_6_35_port, S(34) => PTMP_6_34_port, S(33) => 
                           PTMP_6_33_port, S(32) => PTMP_6_32_port, S(31) => 
                           PTMP_6_31_port, S(30) => PTMP_6_30_port, S(29) => 
                           PTMP_6_29_port, S(28) => PTMP_6_28_port, S(27) => 
                           PTMP_6_27_port, S(26) => PTMP_6_26_port, S(25) => 
                           PTMP_6_25_port, S(24) => PTMP_6_24_port, S(23) => 
                           PTMP_6_23_port, S(22) => PTMP_6_22_port, S(21) => 
                           PTMP_6_21_port, S(20) => PTMP_6_20_port, S(19) => 
                           PTMP_6_19_port, S(18) => PTMP_6_18_port, S(17) => 
                           PTMP_6_17_port, S(16) => PTMP_6_16_port, S(15) => 
                           PTMP_6_15_port, S(14) => PTMP_6_14_port, S(13) => 
                           PTMP_6_13_port, S(12) => PTMP_6_12_port, S(11) => 
                           PTMP_6_11_port, S(10) => PTMP_6_10_port, S(9) => 
                           PTMP_6_9_port, S(8) => PTMP_6_8_port, S(7) => 
                           PTMP_6_7_port, S(6) => PTMP_6_6_port, S(5) => 
                           PTMP_6_5_port, S(4) => PTMP_6_4_port, S(3) => 
                           PTMP_6_3_port, S(2) => PTMP_6_2_port, S(1) => 
                           PTMP_6_1_port, S(0) => PTMP_6_0_port, Co => n_1301);
   ADDER_8 : RCA_NBIT50 port map( A(49) => PTMP_6_47_port, A(48) => 
                           PTMP_6_47_port, A(47) => PTMP_6_47_port, A(46) => 
                           PTMP_6_46_port, A(45) => PTMP_6_45_port, A(44) => 
                           PTMP_6_44_port, A(43) => PTMP_6_43_port, A(42) => 
                           PTMP_6_42_port, A(41) => PTMP_6_41_port, A(40) => 
                           PTMP_6_40_port, A(39) => PTMP_6_39_port, A(38) => 
                           PTMP_6_38_port, A(37) => PTMP_6_37_port, A(36) => 
                           PTMP_6_36_port, A(35) => PTMP_6_35_port, A(34) => 
                           PTMP_6_34_port, A(33) => PTMP_6_33_port, A(32) => 
                           PTMP_6_32_port, A(31) => PTMP_6_31_port, A(30) => 
                           PTMP_6_30_port, A(29) => PTMP_6_29_port, A(28) => 
                           PTMP_6_28_port, A(27) => PTMP_6_27_port, A(26) => 
                           PTMP_6_26_port, A(25) => PTMP_6_25_port, A(24) => 
                           PTMP_6_24_port, A(23) => PTMP_6_23_port, A(22) => 
                           PTMP_6_22_port, A(21) => PTMP_6_21_port, A(20) => 
                           PTMP_6_20_port, A(19) => PTMP_6_19_port, A(18) => 
                           PTMP_6_18_port, A(17) => PTMP_6_17_port, A(16) => 
                           PTMP_6_16_port, A(15) => PTMP_6_15_port, A(14) => 
                           PTMP_6_14_port, A(13) => PTMP_6_13_port, A(12) => 
                           PTMP_6_12_port, A(11) => PTMP_6_11_port, A(10) => 
                           PTMP_6_10_port, A(9) => PTMP_6_9_port, A(8) => 
                           PTMP_6_8_port, A(7) => PTMP_6_7_port, A(6) => 
                           PTMP_6_6_port, A(5) => PTMP_6_5_port, A(4) => 
                           PTMP_6_4_port, A(3) => PTMP_6_3_port, A(2) => 
                           PTMP_6_2_port, A(1) => PTMP_6_1_port, A(0) => 
                           PTMP_6_0_port, B(49) => OTMP_8_49_port, B(48) => 
                           OTMP_8_48_port, B(47) => OTMP_8_47_port, B(46) => 
                           OTMP_8_46_port, B(45) => OTMP_8_45_port, B(44) => 
                           OTMP_8_44_port, B(43) => OTMP_8_43_port, B(42) => 
                           OTMP_8_42_port, B(41) => OTMP_8_41_port, B(40) => 
                           OTMP_8_40_port, B(39) => OTMP_8_39_port, B(38) => 
                           OTMP_8_38_port, B(37) => OTMP_8_37_port, B(36) => 
                           OTMP_8_36_port, B(35) => OTMP_8_35_port, B(34) => 
                           OTMP_8_34_port, B(33) => OTMP_8_33_port, B(32) => 
                           OTMP_8_32_port, B(31) => OTMP_8_31_port, B(30) => 
                           OTMP_8_30_port, B(29) => OTMP_8_29_port, B(28) => 
                           OTMP_8_28_port, B(27) => OTMP_8_27_port, B(26) => 
                           OTMP_8_26_port, B(25) => OTMP_8_25_port, B(24) => 
                           OTMP_8_24_port, B(23) => OTMP_8_23_port, B(22) => 
                           OTMP_8_22_port, B(21) => OTMP_8_21_port, B(20) => 
                           OTMP_8_20_port, B(19) => OTMP_8_19_port, B(18) => 
                           OTMP_8_18_port, B(17) => OTMP_8_17_port, B(16) => 
                           OTMP_8_16_port, B(15) => OTMP_8_15_port, B(14) => 
                           OTMP_8_14_port, B(13) => OTMP_8_13_port, B(12) => 
                           OTMP_8_12_port, B(11) => OTMP_8_11_port, B(10) => 
                           OTMP_8_10_port, B(9) => OTMP_8_9_port, B(8) => 
                           OTMP_8_8_port, B(7) => OTMP_8_7_port, B(6) => 
                           OTMP_8_6_port, B(5) => OTMP_8_5_port, B(4) => 
                           OTMP_8_4_port, B(3) => OTMP_8_3_port, B(2) => 
                           OTMP_8_2_port, B(1) => OTMP_8_1_port, B(0) => 
                           OTMP_8_0_port, Ci => X_Logic0_port, S(49) => 
                           PTMP_7_49_port, S(48) => PTMP_7_48_port, S(47) => 
                           PTMP_7_47_port, S(46) => PTMP_7_46_port, S(45) => 
                           PTMP_7_45_port, S(44) => PTMP_7_44_port, S(43) => 
                           PTMP_7_43_port, S(42) => PTMP_7_42_port, S(41) => 
                           PTMP_7_41_port, S(40) => PTMP_7_40_port, S(39) => 
                           PTMP_7_39_port, S(38) => PTMP_7_38_port, S(37) => 
                           PTMP_7_37_port, S(36) => PTMP_7_36_port, S(35) => 
                           PTMP_7_35_port, S(34) => PTMP_7_34_port, S(33) => 
                           PTMP_7_33_port, S(32) => PTMP_7_32_port, S(31) => 
                           PTMP_7_31_port, S(30) => PTMP_7_30_port, S(29) => 
                           PTMP_7_29_port, S(28) => PTMP_7_28_port, S(27) => 
                           PTMP_7_27_port, S(26) => PTMP_7_26_port, S(25) => 
                           PTMP_7_25_port, S(24) => PTMP_7_24_port, S(23) => 
                           PTMP_7_23_port, S(22) => PTMP_7_22_port, S(21) => 
                           PTMP_7_21_port, S(20) => PTMP_7_20_port, S(19) => 
                           PTMP_7_19_port, S(18) => PTMP_7_18_port, S(17) => 
                           PTMP_7_17_port, S(16) => PTMP_7_16_port, S(15) => 
                           PTMP_7_15_port, S(14) => PTMP_7_14_port, S(13) => 
                           PTMP_7_13_port, S(12) => PTMP_7_12_port, S(11) => 
                           PTMP_7_11_port, S(10) => PTMP_7_10_port, S(9) => 
                           PTMP_7_9_port, S(8) => PTMP_7_8_port, S(7) => 
                           PTMP_7_7_port, S(6) => PTMP_7_6_port, S(5) => 
                           PTMP_7_5_port, S(4) => PTMP_7_4_port, S(3) => 
                           PTMP_7_3_port, S(2) => PTMP_7_2_port, S(1) => 
                           PTMP_7_1_port, S(0) => PTMP_7_0_port, Co => n_1302);
   ADDER_9 : RCA_NBIT52 port map( A(51) => PTMP_7_49_port, A(50) => 
                           PTMP_7_49_port, A(49) => PTMP_7_49_port, A(48) => 
                           PTMP_7_48_port, A(47) => PTMP_7_47_port, A(46) => 
                           PTMP_7_46_port, A(45) => PTMP_7_45_port, A(44) => 
                           PTMP_7_44_port, A(43) => PTMP_7_43_port, A(42) => 
                           PTMP_7_42_port, A(41) => PTMP_7_41_port, A(40) => 
                           PTMP_7_40_port, A(39) => PTMP_7_39_port, A(38) => 
                           PTMP_7_38_port, A(37) => PTMP_7_37_port, A(36) => 
                           PTMP_7_36_port, A(35) => PTMP_7_35_port, A(34) => 
                           PTMP_7_34_port, A(33) => PTMP_7_33_port, A(32) => 
                           PTMP_7_32_port, A(31) => PTMP_7_31_port, A(30) => 
                           PTMP_7_30_port, A(29) => PTMP_7_29_port, A(28) => 
                           PTMP_7_28_port, A(27) => PTMP_7_27_port, A(26) => 
                           PTMP_7_26_port, A(25) => PTMP_7_25_port, A(24) => 
                           PTMP_7_24_port, A(23) => PTMP_7_23_port, A(22) => 
                           PTMP_7_22_port, A(21) => PTMP_7_21_port, A(20) => 
                           PTMP_7_20_port, A(19) => PTMP_7_19_port, A(18) => 
                           PTMP_7_18_port, A(17) => PTMP_7_17_port, A(16) => 
                           PTMP_7_16_port, A(15) => PTMP_7_15_port, A(14) => 
                           PTMP_7_14_port, A(13) => PTMP_7_13_port, A(12) => 
                           PTMP_7_12_port, A(11) => PTMP_7_11_port, A(10) => 
                           PTMP_7_10_port, A(9) => PTMP_7_9_port, A(8) => 
                           PTMP_7_8_port, A(7) => PTMP_7_7_port, A(6) => 
                           PTMP_7_6_port, A(5) => PTMP_7_5_port, A(4) => 
                           PTMP_7_4_port, A(3) => PTMP_7_3_port, A(2) => 
                           PTMP_7_2_port, A(1) => PTMP_7_1_port, A(0) => 
                           PTMP_7_0_port, B(51) => OTMP_9_51_port, B(50) => 
                           OTMP_9_50_port, B(49) => OTMP_9_49_port, B(48) => 
                           OTMP_9_48_port, B(47) => OTMP_9_47_port, B(46) => 
                           OTMP_9_46_port, B(45) => OTMP_9_45_port, B(44) => 
                           OTMP_9_44_port, B(43) => OTMP_9_43_port, B(42) => 
                           OTMP_9_42_port, B(41) => OTMP_9_41_port, B(40) => 
                           OTMP_9_40_port, B(39) => OTMP_9_39_port, B(38) => 
                           OTMP_9_38_port, B(37) => OTMP_9_37_port, B(36) => 
                           OTMP_9_36_port, B(35) => OTMP_9_35_port, B(34) => 
                           OTMP_9_34_port, B(33) => OTMP_9_33_port, B(32) => 
                           OTMP_9_32_port, B(31) => OTMP_9_31_port, B(30) => 
                           OTMP_9_30_port, B(29) => OTMP_9_29_port, B(28) => 
                           OTMP_9_28_port, B(27) => OTMP_9_27_port, B(26) => 
                           OTMP_9_26_port, B(25) => OTMP_9_25_port, B(24) => 
                           OTMP_9_24_port, B(23) => OTMP_9_23_port, B(22) => 
                           OTMP_9_22_port, B(21) => OTMP_9_21_port, B(20) => 
                           OTMP_9_20_port, B(19) => OTMP_9_19_port, B(18) => 
                           OTMP_9_18_port, B(17) => OTMP_9_17_port, B(16) => 
                           OTMP_9_16_port, B(15) => OTMP_9_15_port, B(14) => 
                           OTMP_9_14_port, B(13) => OTMP_9_13_port, B(12) => 
                           OTMP_9_12_port, B(11) => OTMP_9_11_port, B(10) => 
                           OTMP_9_10_port, B(9) => OTMP_9_9_port, B(8) => 
                           OTMP_9_8_port, B(7) => OTMP_9_7_port, B(6) => 
                           OTMP_9_6_port, B(5) => OTMP_9_5_port, B(4) => 
                           OTMP_9_4_port, B(3) => OTMP_9_3_port, B(2) => 
                           OTMP_9_2_port, B(1) => OTMP_9_1_port, B(0) => 
                           OTMP_9_0_port, Ci => X_Logic0_port, S(51) => 
                           PTMP_8_51_port, S(50) => PTMP_8_50_port, S(49) => 
                           PTMP_8_49_port, S(48) => PTMP_8_48_port, S(47) => 
                           PTMP_8_47_port, S(46) => PTMP_8_46_port, S(45) => 
                           PTMP_8_45_port, S(44) => PTMP_8_44_port, S(43) => 
                           PTMP_8_43_port, S(42) => PTMP_8_42_port, S(41) => 
                           PTMP_8_41_port, S(40) => PTMP_8_40_port, S(39) => 
                           PTMP_8_39_port, S(38) => PTMP_8_38_port, S(37) => 
                           PTMP_8_37_port, S(36) => PTMP_8_36_port, S(35) => 
                           PTMP_8_35_port, S(34) => PTMP_8_34_port, S(33) => 
                           PTMP_8_33_port, S(32) => PTMP_8_32_port, S(31) => 
                           PTMP_8_31_port, S(30) => PTMP_8_30_port, S(29) => 
                           PTMP_8_29_port, S(28) => PTMP_8_28_port, S(27) => 
                           PTMP_8_27_port, S(26) => PTMP_8_26_port, S(25) => 
                           PTMP_8_25_port, S(24) => PTMP_8_24_port, S(23) => 
                           PTMP_8_23_port, S(22) => PTMP_8_22_port, S(21) => 
                           PTMP_8_21_port, S(20) => PTMP_8_20_port, S(19) => 
                           PTMP_8_19_port, S(18) => PTMP_8_18_port, S(17) => 
                           PTMP_8_17_port, S(16) => PTMP_8_16_port, S(15) => 
                           PTMP_8_15_port, S(14) => PTMP_8_14_port, S(13) => 
                           PTMP_8_13_port, S(12) => PTMP_8_12_port, S(11) => 
                           PTMP_8_11_port, S(10) => PTMP_8_10_port, S(9) => 
                           PTMP_8_9_port, S(8) => PTMP_8_8_port, S(7) => 
                           PTMP_8_7_port, S(6) => PTMP_8_6_port, S(5) => 
                           PTMP_8_5_port, S(4) => PTMP_8_4_port, S(3) => 
                           PTMP_8_3_port, S(2) => PTMP_8_2_port, S(1) => 
                           PTMP_8_1_port, S(0) => PTMP_8_0_port, Co => n_1303);
   ADDER_10 : RCA_NBIT54 port map( A(53) => PTMP_8_51_port, A(52) => 
                           PTMP_8_51_port, A(51) => PTMP_8_51_port, A(50) => 
                           PTMP_8_50_port, A(49) => PTMP_8_49_port, A(48) => 
                           PTMP_8_48_port, A(47) => PTMP_8_47_port, A(46) => 
                           PTMP_8_46_port, A(45) => PTMP_8_45_port, A(44) => 
                           PTMP_8_44_port, A(43) => PTMP_8_43_port, A(42) => 
                           PTMP_8_42_port, A(41) => PTMP_8_41_port, A(40) => 
                           PTMP_8_40_port, A(39) => PTMP_8_39_port, A(38) => 
                           PTMP_8_38_port, A(37) => PTMP_8_37_port, A(36) => 
                           PTMP_8_36_port, A(35) => PTMP_8_35_port, A(34) => 
                           PTMP_8_34_port, A(33) => PTMP_8_33_port, A(32) => 
                           PTMP_8_32_port, A(31) => PTMP_8_31_port, A(30) => 
                           PTMP_8_30_port, A(29) => PTMP_8_29_port, A(28) => 
                           PTMP_8_28_port, A(27) => PTMP_8_27_port, A(26) => 
                           PTMP_8_26_port, A(25) => PTMP_8_25_port, A(24) => 
                           PTMP_8_24_port, A(23) => PTMP_8_23_port, A(22) => 
                           PTMP_8_22_port, A(21) => PTMP_8_21_port, A(20) => 
                           PTMP_8_20_port, A(19) => PTMP_8_19_port, A(18) => 
                           PTMP_8_18_port, A(17) => PTMP_8_17_port, A(16) => 
                           PTMP_8_16_port, A(15) => PTMP_8_15_port, A(14) => 
                           PTMP_8_14_port, A(13) => PTMP_8_13_port, A(12) => 
                           PTMP_8_12_port, A(11) => PTMP_8_11_port, A(10) => 
                           PTMP_8_10_port, A(9) => PTMP_8_9_port, A(8) => 
                           PTMP_8_8_port, A(7) => PTMP_8_7_port, A(6) => 
                           PTMP_8_6_port, A(5) => PTMP_8_5_port, A(4) => 
                           PTMP_8_4_port, A(3) => PTMP_8_3_port, A(2) => 
                           PTMP_8_2_port, A(1) => PTMP_8_1_port, A(0) => 
                           PTMP_8_0_port, B(53) => OTMP_10_53_port, B(52) => 
                           OTMP_10_52_port, B(51) => OTMP_10_51_port, B(50) => 
                           OTMP_10_50_port, B(49) => OTMP_10_49_port, B(48) => 
                           OTMP_10_48_port, B(47) => OTMP_10_47_port, B(46) => 
                           OTMP_10_46_port, B(45) => OTMP_10_45_port, B(44) => 
                           OTMP_10_44_port, B(43) => OTMP_10_43_port, B(42) => 
                           OTMP_10_42_port, B(41) => OTMP_10_41_port, B(40) => 
                           OTMP_10_40_port, B(39) => OTMP_10_39_port, B(38) => 
                           OTMP_10_38_port, B(37) => OTMP_10_37_port, B(36) => 
                           OTMP_10_36_port, B(35) => OTMP_10_35_port, B(34) => 
                           OTMP_10_34_port, B(33) => OTMP_10_33_port, B(32) => 
                           OTMP_10_32_port, B(31) => OTMP_10_31_port, B(30) => 
                           OTMP_10_30_port, B(29) => OTMP_10_29_port, B(28) => 
                           OTMP_10_28_port, B(27) => OTMP_10_27_port, B(26) => 
                           OTMP_10_26_port, B(25) => OTMP_10_25_port, B(24) => 
                           OTMP_10_24_port, B(23) => OTMP_10_23_port, B(22) => 
                           OTMP_10_22_port, B(21) => OTMP_10_21_port, B(20) => 
                           OTMP_10_20_port, B(19) => OTMP_10_19_port, B(18) => 
                           OTMP_10_18_port, B(17) => OTMP_10_17_port, B(16) => 
                           OTMP_10_16_port, B(15) => OTMP_10_15_port, B(14) => 
                           OTMP_10_14_port, B(13) => OTMP_10_13_port, B(12) => 
                           OTMP_10_12_port, B(11) => OTMP_10_11_port, B(10) => 
                           OTMP_10_10_port, B(9) => OTMP_10_9_port, B(8) => 
                           OTMP_10_8_port, B(7) => OTMP_10_7_port, B(6) => 
                           OTMP_10_6_port, B(5) => OTMP_10_5_port, B(4) => 
                           OTMP_10_4_port, B(3) => OTMP_10_3_port, B(2) => 
                           OTMP_10_2_port, B(1) => OTMP_10_1_port, B(0) => 
                           OTMP_10_0_port, Ci => X_Logic0_port, S(53) => 
                           PTMP_9_53_port, S(52) => PTMP_9_52_port, S(51) => 
                           PTMP_9_51_port, S(50) => PTMP_9_50_port, S(49) => 
                           PTMP_9_49_port, S(48) => PTMP_9_48_port, S(47) => 
                           PTMP_9_47_port, S(46) => PTMP_9_46_port, S(45) => 
                           PTMP_9_45_port, S(44) => PTMP_9_44_port, S(43) => 
                           PTMP_9_43_port, S(42) => PTMP_9_42_port, S(41) => 
                           PTMP_9_41_port, S(40) => PTMP_9_40_port, S(39) => 
                           PTMP_9_39_port, S(38) => PTMP_9_38_port, S(37) => 
                           PTMP_9_37_port, S(36) => PTMP_9_36_port, S(35) => 
                           PTMP_9_35_port, S(34) => PTMP_9_34_port, S(33) => 
                           PTMP_9_33_port, S(32) => PTMP_9_32_port, S(31) => 
                           PTMP_9_31_port, S(30) => PTMP_9_30_port, S(29) => 
                           PTMP_9_29_port, S(28) => PTMP_9_28_port, S(27) => 
                           PTMP_9_27_port, S(26) => PTMP_9_26_port, S(25) => 
                           PTMP_9_25_port, S(24) => PTMP_9_24_port, S(23) => 
                           PTMP_9_23_port, S(22) => PTMP_9_22_port, S(21) => 
                           PTMP_9_21_port, S(20) => PTMP_9_20_port, S(19) => 
                           PTMP_9_19_port, S(18) => PTMP_9_18_port, S(17) => 
                           PTMP_9_17_port, S(16) => PTMP_9_16_port, S(15) => 
                           PTMP_9_15_port, S(14) => PTMP_9_14_port, S(13) => 
                           PTMP_9_13_port, S(12) => PTMP_9_12_port, S(11) => 
                           PTMP_9_11_port, S(10) => PTMP_9_10_port, S(9) => 
                           PTMP_9_9_port, S(8) => PTMP_9_8_port, S(7) => 
                           PTMP_9_7_port, S(6) => PTMP_9_6_port, S(5) => 
                           PTMP_9_5_port, S(4) => PTMP_9_4_port, S(3) => 
                           PTMP_9_3_port, S(2) => PTMP_9_2_port, S(1) => 
                           PTMP_9_1_port, S(0) => PTMP_9_0_port, Co => n_1304);
   ADDER_11 : RCA_NBIT56 port map( A(55) => PTMP_9_53_port, A(54) => 
                           PTMP_9_53_port, A(53) => PTMP_9_53_port, A(52) => 
                           PTMP_9_52_port, A(51) => PTMP_9_51_port, A(50) => 
                           PTMP_9_50_port, A(49) => PTMP_9_49_port, A(48) => 
                           PTMP_9_48_port, A(47) => PTMP_9_47_port, A(46) => 
                           PTMP_9_46_port, A(45) => PTMP_9_45_port, A(44) => 
                           PTMP_9_44_port, A(43) => PTMP_9_43_port, A(42) => 
                           PTMP_9_42_port, A(41) => PTMP_9_41_port, A(40) => 
                           PTMP_9_40_port, A(39) => PTMP_9_39_port, A(38) => 
                           PTMP_9_38_port, A(37) => PTMP_9_37_port, A(36) => 
                           PTMP_9_36_port, A(35) => PTMP_9_35_port, A(34) => 
                           PTMP_9_34_port, A(33) => PTMP_9_33_port, A(32) => 
                           PTMP_9_32_port, A(31) => PTMP_9_31_port, A(30) => 
                           PTMP_9_30_port, A(29) => PTMP_9_29_port, A(28) => 
                           PTMP_9_28_port, A(27) => PTMP_9_27_port, A(26) => 
                           PTMP_9_26_port, A(25) => PTMP_9_25_port, A(24) => 
                           PTMP_9_24_port, A(23) => PTMP_9_23_port, A(22) => 
                           PTMP_9_22_port, A(21) => PTMP_9_21_port, A(20) => 
                           PTMP_9_20_port, A(19) => PTMP_9_19_port, A(18) => 
                           PTMP_9_18_port, A(17) => PTMP_9_17_port, A(16) => 
                           PTMP_9_16_port, A(15) => PTMP_9_15_port, A(14) => 
                           PTMP_9_14_port, A(13) => PTMP_9_13_port, A(12) => 
                           PTMP_9_12_port, A(11) => PTMP_9_11_port, A(10) => 
                           PTMP_9_10_port, A(9) => PTMP_9_9_port, A(8) => 
                           PTMP_9_8_port, A(7) => PTMP_9_7_port, A(6) => 
                           PTMP_9_6_port, A(5) => PTMP_9_5_port, A(4) => 
                           PTMP_9_4_port, A(3) => PTMP_9_3_port, A(2) => 
                           PTMP_9_2_port, A(1) => PTMP_9_1_port, A(0) => 
                           PTMP_9_0_port, B(55) => OTMP_11_55_port, B(54) => 
                           OTMP_11_54_port, B(53) => OTMP_11_53_port, B(52) => 
                           OTMP_11_52_port, B(51) => OTMP_11_51_port, B(50) => 
                           OTMP_11_50_port, B(49) => OTMP_11_49_port, B(48) => 
                           OTMP_11_48_port, B(47) => OTMP_11_47_port, B(46) => 
                           OTMP_11_46_port, B(45) => OTMP_11_45_port, B(44) => 
                           OTMP_11_44_port, B(43) => OTMP_11_43_port, B(42) => 
                           OTMP_11_42_port, B(41) => OTMP_11_41_port, B(40) => 
                           OTMP_11_40_port, B(39) => OTMP_11_39_port, B(38) => 
                           OTMP_11_38_port, B(37) => OTMP_11_37_port, B(36) => 
                           OTMP_11_36_port, B(35) => OTMP_11_35_port, B(34) => 
                           OTMP_11_34_port, B(33) => OTMP_11_33_port, B(32) => 
                           OTMP_11_32_port, B(31) => OTMP_11_31_port, B(30) => 
                           OTMP_11_30_port, B(29) => OTMP_11_29_port, B(28) => 
                           OTMP_11_28_port, B(27) => OTMP_11_27_port, B(26) => 
                           OTMP_11_26_port, B(25) => OTMP_11_25_port, B(24) => 
                           OTMP_11_24_port, B(23) => OTMP_11_23_port, B(22) => 
                           OTMP_11_22_port, B(21) => OTMP_11_21_port, B(20) => 
                           OTMP_11_20_port, B(19) => OTMP_11_19_port, B(18) => 
                           OTMP_11_18_port, B(17) => OTMP_11_17_port, B(16) => 
                           OTMP_11_16_port, B(15) => OTMP_11_15_port, B(14) => 
                           OTMP_11_14_port, B(13) => OTMP_11_13_port, B(12) => 
                           OTMP_11_12_port, B(11) => OTMP_11_11_port, B(10) => 
                           OTMP_11_10_port, B(9) => OTMP_11_9_port, B(8) => 
                           OTMP_11_8_port, B(7) => OTMP_11_7_port, B(6) => 
                           OTMP_11_6_port, B(5) => OTMP_11_5_port, B(4) => 
                           OTMP_11_4_port, B(3) => OTMP_11_3_port, B(2) => 
                           OTMP_11_2_port, B(1) => OTMP_11_1_port, B(0) => 
                           OTMP_11_0_port, Ci => X_Logic0_port, S(55) => 
                           PTMP_10_55_port, S(54) => PTMP_10_54_port, S(53) => 
                           PTMP_10_53_port, S(52) => PTMP_10_52_port, S(51) => 
                           PTMP_10_51_port, S(50) => PTMP_10_50_port, S(49) => 
                           PTMP_10_49_port, S(48) => PTMP_10_48_port, S(47) => 
                           PTMP_10_47_port, S(46) => PTMP_10_46_port, S(45) => 
                           PTMP_10_45_port, S(44) => PTMP_10_44_port, S(43) => 
                           PTMP_10_43_port, S(42) => PTMP_10_42_port, S(41) => 
                           PTMP_10_41_port, S(40) => PTMP_10_40_port, S(39) => 
                           PTMP_10_39_port, S(38) => PTMP_10_38_port, S(37) => 
                           PTMP_10_37_port, S(36) => PTMP_10_36_port, S(35) => 
                           PTMP_10_35_port, S(34) => PTMP_10_34_port, S(33) => 
                           PTMP_10_33_port, S(32) => PTMP_10_32_port, S(31) => 
                           PTMP_10_31_port, S(30) => PTMP_10_30_port, S(29) => 
                           PTMP_10_29_port, S(28) => PTMP_10_28_port, S(27) => 
                           PTMP_10_27_port, S(26) => PTMP_10_26_port, S(25) => 
                           PTMP_10_25_port, S(24) => PTMP_10_24_port, S(23) => 
                           PTMP_10_23_port, S(22) => PTMP_10_22_port, S(21) => 
                           PTMP_10_21_port, S(20) => PTMP_10_20_port, S(19) => 
                           PTMP_10_19_port, S(18) => PTMP_10_18_port, S(17) => 
                           PTMP_10_17_port, S(16) => PTMP_10_16_port, S(15) => 
                           PTMP_10_15_port, S(14) => PTMP_10_14_port, S(13) => 
                           PTMP_10_13_port, S(12) => PTMP_10_12_port, S(11) => 
                           PTMP_10_11_port, S(10) => PTMP_10_10_port, S(9) => 
                           PTMP_10_9_port, S(8) => PTMP_10_8_port, S(7) => 
                           PTMP_10_7_port, S(6) => PTMP_10_6_port, S(5) => 
                           PTMP_10_5_port, S(4) => PTMP_10_4_port, S(3) => 
                           PTMP_10_3_port, S(2) => PTMP_10_2_port, S(1) => 
                           PTMP_10_1_port, S(0) => PTMP_10_0_port, Co => n_1305
                           );
   ADDER_12 : RCA_NBIT58 port map( A(57) => PTMP_10_55_port, A(56) => 
                           PTMP_10_55_port, A(55) => PTMP_10_55_port, A(54) => 
                           PTMP_10_54_port, A(53) => PTMP_10_53_port, A(52) => 
                           PTMP_10_52_port, A(51) => PTMP_10_51_port, A(50) => 
                           PTMP_10_50_port, A(49) => PTMP_10_49_port, A(48) => 
                           PTMP_10_48_port, A(47) => PTMP_10_47_port, A(46) => 
                           PTMP_10_46_port, A(45) => PTMP_10_45_port, A(44) => 
                           PTMP_10_44_port, A(43) => PTMP_10_43_port, A(42) => 
                           PTMP_10_42_port, A(41) => PTMP_10_41_port, A(40) => 
                           PTMP_10_40_port, A(39) => PTMP_10_39_port, A(38) => 
                           PTMP_10_38_port, A(37) => PTMP_10_37_port, A(36) => 
                           PTMP_10_36_port, A(35) => PTMP_10_35_port, A(34) => 
                           PTMP_10_34_port, A(33) => PTMP_10_33_port, A(32) => 
                           PTMP_10_32_port, A(31) => PTMP_10_31_port, A(30) => 
                           PTMP_10_30_port, A(29) => PTMP_10_29_port, A(28) => 
                           PTMP_10_28_port, A(27) => PTMP_10_27_port, A(26) => 
                           PTMP_10_26_port, A(25) => PTMP_10_25_port, A(24) => 
                           PTMP_10_24_port, A(23) => PTMP_10_23_port, A(22) => 
                           PTMP_10_22_port, A(21) => PTMP_10_21_port, A(20) => 
                           PTMP_10_20_port, A(19) => PTMP_10_19_port, A(18) => 
                           PTMP_10_18_port, A(17) => PTMP_10_17_port, A(16) => 
                           PTMP_10_16_port, A(15) => PTMP_10_15_port, A(14) => 
                           PTMP_10_14_port, A(13) => PTMP_10_13_port, A(12) => 
                           PTMP_10_12_port, A(11) => PTMP_10_11_port, A(10) => 
                           PTMP_10_10_port, A(9) => PTMP_10_9_port, A(8) => 
                           PTMP_10_8_port, A(7) => PTMP_10_7_port, A(6) => 
                           PTMP_10_6_port, A(5) => PTMP_10_5_port, A(4) => 
                           PTMP_10_4_port, A(3) => PTMP_10_3_port, A(2) => 
                           PTMP_10_2_port, A(1) => PTMP_10_1_port, A(0) => 
                           PTMP_10_0_port, B(57) => OTMP_12_57_port, B(56) => 
                           OTMP_12_56_port, B(55) => OTMP_12_55_port, B(54) => 
                           OTMP_12_54_port, B(53) => OTMP_12_53_port, B(52) => 
                           OTMP_12_52_port, B(51) => OTMP_12_51_port, B(50) => 
                           OTMP_12_50_port, B(49) => OTMP_12_49_port, B(48) => 
                           OTMP_12_48_port, B(47) => OTMP_12_47_port, B(46) => 
                           OTMP_12_46_port, B(45) => OTMP_12_45_port, B(44) => 
                           OTMP_12_44_port, B(43) => OTMP_12_43_port, B(42) => 
                           OTMP_12_42_port, B(41) => OTMP_12_41_port, B(40) => 
                           OTMP_12_40_port, B(39) => OTMP_12_39_port, B(38) => 
                           OTMP_12_38_port, B(37) => OTMP_12_37_port, B(36) => 
                           OTMP_12_36_port, B(35) => OTMP_12_35_port, B(34) => 
                           OTMP_12_34_port, B(33) => OTMP_12_33_port, B(32) => 
                           OTMP_12_32_port, B(31) => OTMP_12_31_port, B(30) => 
                           OTMP_12_30_port, B(29) => OTMP_12_29_port, B(28) => 
                           OTMP_12_28_port, B(27) => OTMP_12_27_port, B(26) => 
                           OTMP_12_26_port, B(25) => OTMP_12_25_port, B(24) => 
                           OTMP_12_24_port, B(23) => OTMP_12_23_port, B(22) => 
                           OTMP_12_22_port, B(21) => OTMP_12_21_port, B(20) => 
                           OTMP_12_20_port, B(19) => OTMP_12_19_port, B(18) => 
                           OTMP_12_18_port, B(17) => OTMP_12_17_port, B(16) => 
                           OTMP_12_16_port, B(15) => OTMP_12_15_port, B(14) => 
                           OTMP_12_14_port, B(13) => OTMP_12_13_port, B(12) => 
                           OTMP_12_12_port, B(11) => OTMP_12_11_port, B(10) => 
                           OTMP_12_10_port, B(9) => OTMP_12_9_port, B(8) => 
                           OTMP_12_8_port, B(7) => OTMP_12_7_port, B(6) => 
                           OTMP_12_6_port, B(5) => OTMP_12_5_port, B(4) => 
                           OTMP_12_4_port, B(3) => OTMP_12_3_port, B(2) => 
                           OTMP_12_2_port, B(1) => OTMP_12_1_port, B(0) => 
                           OTMP_12_0_port, Ci => X_Logic0_port, S(57) => 
                           PTMP_11_57_port, S(56) => PTMP_11_56_port, S(55) => 
                           PTMP_11_55_port, S(54) => PTMP_11_54_port, S(53) => 
                           PTMP_11_53_port, S(52) => PTMP_11_52_port, S(51) => 
                           PTMP_11_51_port, S(50) => PTMP_11_50_port, S(49) => 
                           PTMP_11_49_port, S(48) => PTMP_11_48_port, S(47) => 
                           PTMP_11_47_port, S(46) => PTMP_11_46_port, S(45) => 
                           PTMP_11_45_port, S(44) => PTMP_11_44_port, S(43) => 
                           PTMP_11_43_port, S(42) => PTMP_11_42_port, S(41) => 
                           PTMP_11_41_port, S(40) => PTMP_11_40_port, S(39) => 
                           PTMP_11_39_port, S(38) => PTMP_11_38_port, S(37) => 
                           PTMP_11_37_port, S(36) => PTMP_11_36_port, S(35) => 
                           PTMP_11_35_port, S(34) => PTMP_11_34_port, S(33) => 
                           PTMP_11_33_port, S(32) => PTMP_11_32_port, S(31) => 
                           PTMP_11_31_port, S(30) => PTMP_11_30_port, S(29) => 
                           PTMP_11_29_port, S(28) => PTMP_11_28_port, S(27) => 
                           PTMP_11_27_port, S(26) => PTMP_11_26_port, S(25) => 
                           PTMP_11_25_port, S(24) => PTMP_11_24_port, S(23) => 
                           PTMP_11_23_port, S(22) => PTMP_11_22_port, S(21) => 
                           PTMP_11_21_port, S(20) => PTMP_11_20_port, S(19) => 
                           PTMP_11_19_port, S(18) => PTMP_11_18_port, S(17) => 
                           PTMP_11_17_port, S(16) => PTMP_11_16_port, S(15) => 
                           PTMP_11_15_port, S(14) => PTMP_11_14_port, S(13) => 
                           PTMP_11_13_port, S(12) => PTMP_11_12_port, S(11) => 
                           PTMP_11_11_port, S(10) => PTMP_11_10_port, S(9) => 
                           PTMP_11_9_port, S(8) => PTMP_11_8_port, S(7) => 
                           PTMP_11_7_port, S(6) => PTMP_11_6_port, S(5) => 
                           PTMP_11_5_port, S(4) => PTMP_11_4_port, S(3) => 
                           PTMP_11_3_port, S(2) => PTMP_11_2_port, S(1) => 
                           PTMP_11_1_port, S(0) => PTMP_11_0_port, Co => n_1306
                           );
   ADDER_13 : RCA_NBIT60 port map( A(59) => PTMP_11_57_port, A(58) => 
                           PTMP_11_57_port, A(57) => PTMP_11_57_port, A(56) => 
                           PTMP_11_56_port, A(55) => PTMP_11_55_port, A(54) => 
                           PTMP_11_54_port, A(53) => PTMP_11_53_port, A(52) => 
                           PTMP_11_52_port, A(51) => PTMP_11_51_port, A(50) => 
                           PTMP_11_50_port, A(49) => PTMP_11_49_port, A(48) => 
                           PTMP_11_48_port, A(47) => PTMP_11_47_port, A(46) => 
                           PTMP_11_46_port, A(45) => PTMP_11_45_port, A(44) => 
                           PTMP_11_44_port, A(43) => PTMP_11_43_port, A(42) => 
                           PTMP_11_42_port, A(41) => PTMP_11_41_port, A(40) => 
                           PTMP_11_40_port, A(39) => PTMP_11_39_port, A(38) => 
                           PTMP_11_38_port, A(37) => PTMP_11_37_port, A(36) => 
                           PTMP_11_36_port, A(35) => PTMP_11_35_port, A(34) => 
                           PTMP_11_34_port, A(33) => PTMP_11_33_port, A(32) => 
                           PTMP_11_32_port, A(31) => PTMP_11_31_port, A(30) => 
                           PTMP_11_30_port, A(29) => PTMP_11_29_port, A(28) => 
                           PTMP_11_28_port, A(27) => PTMP_11_27_port, A(26) => 
                           PTMP_11_26_port, A(25) => PTMP_11_25_port, A(24) => 
                           PTMP_11_24_port, A(23) => PTMP_11_23_port, A(22) => 
                           PTMP_11_22_port, A(21) => PTMP_11_21_port, A(20) => 
                           PTMP_11_20_port, A(19) => PTMP_11_19_port, A(18) => 
                           PTMP_11_18_port, A(17) => PTMP_11_17_port, A(16) => 
                           PTMP_11_16_port, A(15) => PTMP_11_15_port, A(14) => 
                           PTMP_11_14_port, A(13) => PTMP_11_13_port, A(12) => 
                           PTMP_11_12_port, A(11) => PTMP_11_11_port, A(10) => 
                           PTMP_11_10_port, A(9) => PTMP_11_9_port, A(8) => 
                           PTMP_11_8_port, A(7) => PTMP_11_7_port, A(6) => 
                           PTMP_11_6_port, A(5) => PTMP_11_5_port, A(4) => 
                           PTMP_11_4_port, A(3) => PTMP_11_3_port, A(2) => 
                           PTMP_11_2_port, A(1) => PTMP_11_1_port, A(0) => 
                           PTMP_11_0_port, B(59) => OTMP_13_59_port, B(58) => 
                           OTMP_13_58_port, B(57) => OTMP_13_57_port, B(56) => 
                           OTMP_13_56_port, B(55) => OTMP_13_55_port, B(54) => 
                           OTMP_13_54_port, B(53) => OTMP_13_53_port, B(52) => 
                           OTMP_13_52_port, B(51) => OTMP_13_51_port, B(50) => 
                           OTMP_13_50_port, B(49) => OTMP_13_49_port, B(48) => 
                           OTMP_13_48_port, B(47) => OTMP_13_47_port, B(46) => 
                           OTMP_13_46_port, B(45) => OTMP_13_45_port, B(44) => 
                           OTMP_13_44_port, B(43) => OTMP_13_43_port, B(42) => 
                           OTMP_13_42_port, B(41) => OTMP_13_41_port, B(40) => 
                           OTMP_13_40_port, B(39) => OTMP_13_39_port, B(38) => 
                           OTMP_13_38_port, B(37) => OTMP_13_37_port, B(36) => 
                           OTMP_13_36_port, B(35) => OTMP_13_35_port, B(34) => 
                           OTMP_13_34_port, B(33) => OTMP_13_33_port, B(32) => 
                           OTMP_13_32_port, B(31) => OTMP_13_31_port, B(30) => 
                           OTMP_13_30_port, B(29) => OTMP_13_29_port, B(28) => 
                           OTMP_13_28_port, B(27) => OTMP_13_27_port, B(26) => 
                           OTMP_13_26_port, B(25) => OTMP_13_25_port, B(24) => 
                           OTMP_13_24_port, B(23) => OTMP_13_23_port, B(22) => 
                           OTMP_13_22_port, B(21) => OTMP_13_21_port, B(20) => 
                           OTMP_13_20_port, B(19) => OTMP_13_19_port, B(18) => 
                           OTMP_13_18_port, B(17) => OTMP_13_17_port, B(16) => 
                           OTMP_13_16_port, B(15) => OTMP_13_15_port, B(14) => 
                           OTMP_13_14_port, B(13) => OTMP_13_13_port, B(12) => 
                           OTMP_13_12_port, B(11) => OTMP_13_11_port, B(10) => 
                           OTMP_13_10_port, B(9) => OTMP_13_9_port, B(8) => 
                           OTMP_13_8_port, B(7) => OTMP_13_7_port, B(6) => 
                           OTMP_13_6_port, B(5) => OTMP_13_5_port, B(4) => 
                           OTMP_13_4_port, B(3) => OTMP_13_3_port, B(2) => 
                           OTMP_13_2_port, B(1) => OTMP_13_1_port, B(0) => 
                           OTMP_13_0_port, Ci => X_Logic0_port, S(59) => 
                           PTMP_12_59_port, S(58) => PTMP_12_58_port, S(57) => 
                           PTMP_12_57_port, S(56) => PTMP_12_56_port, S(55) => 
                           PTMP_12_55_port, S(54) => PTMP_12_54_port, S(53) => 
                           PTMP_12_53_port, S(52) => PTMP_12_52_port, S(51) => 
                           PTMP_12_51_port, S(50) => PTMP_12_50_port, S(49) => 
                           PTMP_12_49_port, S(48) => PTMP_12_48_port, S(47) => 
                           PTMP_12_47_port, S(46) => PTMP_12_46_port, S(45) => 
                           PTMP_12_45_port, S(44) => PTMP_12_44_port, S(43) => 
                           PTMP_12_43_port, S(42) => PTMP_12_42_port, S(41) => 
                           PTMP_12_41_port, S(40) => PTMP_12_40_port, S(39) => 
                           PTMP_12_39_port, S(38) => PTMP_12_38_port, S(37) => 
                           PTMP_12_37_port, S(36) => PTMP_12_36_port, S(35) => 
                           PTMP_12_35_port, S(34) => PTMP_12_34_port, S(33) => 
                           PTMP_12_33_port, S(32) => PTMP_12_32_port, S(31) => 
                           PTMP_12_31_port, S(30) => PTMP_12_30_port, S(29) => 
                           PTMP_12_29_port, S(28) => PTMP_12_28_port, S(27) => 
                           PTMP_12_27_port, S(26) => PTMP_12_26_port, S(25) => 
                           PTMP_12_25_port, S(24) => PTMP_12_24_port, S(23) => 
                           PTMP_12_23_port, S(22) => PTMP_12_22_port, S(21) => 
                           PTMP_12_21_port, S(20) => PTMP_12_20_port, S(19) => 
                           PTMP_12_19_port, S(18) => PTMP_12_18_port, S(17) => 
                           PTMP_12_17_port, S(16) => PTMP_12_16_port, S(15) => 
                           PTMP_12_15_port, S(14) => PTMP_12_14_port, S(13) => 
                           PTMP_12_13_port, S(12) => PTMP_12_12_port, S(11) => 
                           PTMP_12_11_port, S(10) => PTMP_12_10_port, S(9) => 
                           PTMP_12_9_port, S(8) => PTMP_12_8_port, S(7) => 
                           PTMP_12_7_port, S(6) => PTMP_12_6_port, S(5) => 
                           PTMP_12_5_port, S(4) => PTMP_12_4_port, S(3) => 
                           PTMP_12_3_port, S(2) => PTMP_12_2_port, S(1) => 
                           PTMP_12_1_port, S(0) => PTMP_12_0_port, Co => n_1307
                           );
   ADDER_14 : RCA_NBIT62 port map( A(61) => PTMP_12_59_port, A(60) => 
                           PTMP_12_59_port, A(59) => PTMP_12_59_port, A(58) => 
                           PTMP_12_58_port, A(57) => PTMP_12_57_port, A(56) => 
                           PTMP_12_56_port, A(55) => PTMP_12_55_port, A(54) => 
                           PTMP_12_54_port, A(53) => PTMP_12_53_port, A(52) => 
                           PTMP_12_52_port, A(51) => PTMP_12_51_port, A(50) => 
                           PTMP_12_50_port, A(49) => PTMP_12_49_port, A(48) => 
                           PTMP_12_48_port, A(47) => PTMP_12_47_port, A(46) => 
                           PTMP_12_46_port, A(45) => PTMP_12_45_port, A(44) => 
                           PTMP_12_44_port, A(43) => PTMP_12_43_port, A(42) => 
                           PTMP_12_42_port, A(41) => PTMP_12_41_port, A(40) => 
                           PTMP_12_40_port, A(39) => PTMP_12_39_port, A(38) => 
                           PTMP_12_38_port, A(37) => PTMP_12_37_port, A(36) => 
                           PTMP_12_36_port, A(35) => PTMP_12_35_port, A(34) => 
                           PTMP_12_34_port, A(33) => PTMP_12_33_port, A(32) => 
                           PTMP_12_32_port, A(31) => PTMP_12_31_port, A(30) => 
                           PTMP_12_30_port, A(29) => PTMP_12_29_port, A(28) => 
                           PTMP_12_28_port, A(27) => PTMP_12_27_port, A(26) => 
                           PTMP_12_26_port, A(25) => PTMP_12_25_port, A(24) => 
                           PTMP_12_24_port, A(23) => PTMP_12_23_port, A(22) => 
                           PTMP_12_22_port, A(21) => PTMP_12_21_port, A(20) => 
                           PTMP_12_20_port, A(19) => PTMP_12_19_port, A(18) => 
                           PTMP_12_18_port, A(17) => PTMP_12_17_port, A(16) => 
                           PTMP_12_16_port, A(15) => PTMP_12_15_port, A(14) => 
                           PTMP_12_14_port, A(13) => PTMP_12_13_port, A(12) => 
                           PTMP_12_12_port, A(11) => PTMP_12_11_port, A(10) => 
                           PTMP_12_10_port, A(9) => PTMP_12_9_port, A(8) => 
                           PTMP_12_8_port, A(7) => PTMP_12_7_port, A(6) => 
                           PTMP_12_6_port, A(5) => PTMP_12_5_port, A(4) => 
                           PTMP_12_4_port, A(3) => PTMP_12_3_port, A(2) => 
                           PTMP_12_2_port, A(1) => PTMP_12_1_port, A(0) => 
                           PTMP_12_0_port, B(61) => OTMP_14_61_port, B(60) => 
                           OTMP_14_60_port, B(59) => OTMP_14_59_port, B(58) => 
                           OTMP_14_58_port, B(57) => OTMP_14_57_port, B(56) => 
                           OTMP_14_56_port, B(55) => OTMP_14_55_port, B(54) => 
                           OTMP_14_54_port, B(53) => OTMP_14_53_port, B(52) => 
                           OTMP_14_52_port, B(51) => OTMP_14_51_port, B(50) => 
                           OTMP_14_50_port, B(49) => OTMP_14_49_port, B(48) => 
                           OTMP_14_48_port, B(47) => OTMP_14_47_port, B(46) => 
                           OTMP_14_46_port, B(45) => OTMP_14_45_port, B(44) => 
                           OTMP_14_44_port, B(43) => OTMP_14_43_port, B(42) => 
                           OTMP_14_42_port, B(41) => OTMP_14_41_port, B(40) => 
                           OTMP_14_40_port, B(39) => OTMP_14_39_port, B(38) => 
                           OTMP_14_38_port, B(37) => OTMP_14_37_port, B(36) => 
                           OTMP_14_36_port, B(35) => OTMP_14_35_port, B(34) => 
                           OTMP_14_34_port, B(33) => OTMP_14_33_port, B(32) => 
                           OTMP_14_32_port, B(31) => OTMP_14_31_port, B(30) => 
                           OTMP_14_30_port, B(29) => OTMP_14_29_port, B(28) => 
                           OTMP_14_28_port, B(27) => OTMP_14_27_port, B(26) => 
                           OTMP_14_26_port, B(25) => OTMP_14_25_port, B(24) => 
                           OTMP_14_24_port, B(23) => OTMP_14_23_port, B(22) => 
                           OTMP_14_22_port, B(21) => OTMP_14_21_port, B(20) => 
                           OTMP_14_20_port, B(19) => OTMP_14_19_port, B(18) => 
                           OTMP_14_18_port, B(17) => OTMP_14_17_port, B(16) => 
                           OTMP_14_16_port, B(15) => OTMP_14_15_port, B(14) => 
                           OTMP_14_14_port, B(13) => OTMP_14_13_port, B(12) => 
                           OTMP_14_12_port, B(11) => OTMP_14_11_port, B(10) => 
                           OTMP_14_10_port, B(9) => OTMP_14_9_port, B(8) => 
                           OTMP_14_8_port, B(7) => OTMP_14_7_port, B(6) => 
                           OTMP_14_6_port, B(5) => OTMP_14_5_port, B(4) => 
                           OTMP_14_4_port, B(3) => OTMP_14_3_port, B(2) => 
                           OTMP_14_2_port, B(1) => OTMP_14_1_port, B(0) => 
                           OTMP_14_0_port, Ci => X_Logic0_port, S(61) => 
                           PTMP_13_61_port, S(60) => PTMP_13_60_port, S(59) => 
                           PTMP_13_59_port, S(58) => PTMP_13_58_port, S(57) => 
                           PTMP_13_57_port, S(56) => PTMP_13_56_port, S(55) => 
                           PTMP_13_55_port, S(54) => PTMP_13_54_port, S(53) => 
                           PTMP_13_53_port, S(52) => PTMP_13_52_port, S(51) => 
                           PTMP_13_51_port, S(50) => PTMP_13_50_port, S(49) => 
                           PTMP_13_49_port, S(48) => PTMP_13_48_port, S(47) => 
                           PTMP_13_47_port, S(46) => PTMP_13_46_port, S(45) => 
                           PTMP_13_45_port, S(44) => PTMP_13_44_port, S(43) => 
                           PTMP_13_43_port, S(42) => PTMP_13_42_port, S(41) => 
                           PTMP_13_41_port, S(40) => PTMP_13_40_port, S(39) => 
                           PTMP_13_39_port, S(38) => PTMP_13_38_port, S(37) => 
                           PTMP_13_37_port, S(36) => PTMP_13_36_port, S(35) => 
                           PTMP_13_35_port, S(34) => PTMP_13_34_port, S(33) => 
                           PTMP_13_33_port, S(32) => PTMP_13_32_port, S(31) => 
                           PTMP_13_31_port, S(30) => PTMP_13_30_port, S(29) => 
                           PTMP_13_29_port, S(28) => PTMP_13_28_port, S(27) => 
                           PTMP_13_27_port, S(26) => PTMP_13_26_port, S(25) => 
                           PTMP_13_25_port, S(24) => PTMP_13_24_port, S(23) => 
                           PTMP_13_23_port, S(22) => PTMP_13_22_port, S(21) => 
                           PTMP_13_21_port, S(20) => PTMP_13_20_port, S(19) => 
                           PTMP_13_19_port, S(18) => PTMP_13_18_port, S(17) => 
                           PTMP_13_17_port, S(16) => PTMP_13_16_port, S(15) => 
                           PTMP_13_15_port, S(14) => PTMP_13_14_port, S(13) => 
                           PTMP_13_13_port, S(12) => PTMP_13_12_port, S(11) => 
                           PTMP_13_11_port, S(10) => PTMP_13_10_port, S(9) => 
                           PTMP_13_9_port, S(8) => PTMP_13_8_port, S(7) => 
                           PTMP_13_7_port, S(6) => PTMP_13_6_port, S(5) => 
                           PTMP_13_5_port, S(4) => PTMP_13_4_port, S(3) => 
                           PTMP_13_3_port, S(2) => PTMP_13_2_port, S(1) => 
                           PTMP_13_1_port, S(0) => PTMP_13_0_port, Co => n_1308
                           );
   ADDER_15 : RCA_NBIT64 port map( A(63) => PTMP_13_61_port, A(62) => 
                           PTMP_13_61_port, A(61) => PTMP_13_61_port, A(60) => 
                           PTMP_13_60_port, A(59) => PTMP_13_59_port, A(58) => 
                           PTMP_13_58_port, A(57) => PTMP_13_57_port, A(56) => 
                           PTMP_13_56_port, A(55) => PTMP_13_55_port, A(54) => 
                           PTMP_13_54_port, A(53) => PTMP_13_53_port, A(52) => 
                           PTMP_13_52_port, A(51) => PTMP_13_51_port, A(50) => 
                           PTMP_13_50_port, A(49) => PTMP_13_49_port, A(48) => 
                           PTMP_13_48_port, A(47) => PTMP_13_47_port, A(46) => 
                           PTMP_13_46_port, A(45) => PTMP_13_45_port, A(44) => 
                           PTMP_13_44_port, A(43) => PTMP_13_43_port, A(42) => 
                           PTMP_13_42_port, A(41) => PTMP_13_41_port, A(40) => 
                           PTMP_13_40_port, A(39) => PTMP_13_39_port, A(38) => 
                           PTMP_13_38_port, A(37) => PTMP_13_37_port, A(36) => 
                           PTMP_13_36_port, A(35) => PTMP_13_35_port, A(34) => 
                           PTMP_13_34_port, A(33) => PTMP_13_33_port, A(32) => 
                           PTMP_13_32_port, A(31) => PTMP_13_31_port, A(30) => 
                           PTMP_13_30_port, A(29) => PTMP_13_29_port, A(28) => 
                           PTMP_13_28_port, A(27) => PTMP_13_27_port, A(26) => 
                           PTMP_13_26_port, A(25) => PTMP_13_25_port, A(24) => 
                           PTMP_13_24_port, A(23) => PTMP_13_23_port, A(22) => 
                           PTMP_13_22_port, A(21) => PTMP_13_21_port, A(20) => 
                           PTMP_13_20_port, A(19) => PTMP_13_19_port, A(18) => 
                           PTMP_13_18_port, A(17) => PTMP_13_17_port, A(16) => 
                           PTMP_13_16_port, A(15) => PTMP_13_15_port, A(14) => 
                           PTMP_13_14_port, A(13) => PTMP_13_13_port, A(12) => 
                           PTMP_13_12_port, A(11) => PTMP_13_11_port, A(10) => 
                           PTMP_13_10_port, A(9) => PTMP_13_9_port, A(8) => 
                           PTMP_13_8_port, A(7) => PTMP_13_7_port, A(6) => 
                           PTMP_13_6_port, A(5) => PTMP_13_5_port, A(4) => 
                           PTMP_13_4_port, A(3) => PTMP_13_3_port, A(2) => 
                           PTMP_13_2_port, A(1) => PTMP_13_1_port, A(0) => 
                           PTMP_13_0_port, B(63) => OTMP_15_63_port, B(62) => 
                           OTMP_15_62_port, B(61) => OTMP_15_61_port, B(60) => 
                           OTMP_15_60_port, B(59) => OTMP_15_59_port, B(58) => 
                           OTMP_15_58_port, B(57) => OTMP_15_57_port, B(56) => 
                           OTMP_15_56_port, B(55) => OTMP_15_55_port, B(54) => 
                           OTMP_15_54_port, B(53) => OTMP_15_53_port, B(52) => 
                           OTMP_15_52_port, B(51) => OTMP_15_51_port, B(50) => 
                           OTMP_15_50_port, B(49) => OTMP_15_49_port, B(48) => 
                           OTMP_15_48_port, B(47) => OTMP_15_47_port, B(46) => 
                           OTMP_15_46_port, B(45) => OTMP_15_45_port, B(44) => 
                           OTMP_15_44_port, B(43) => OTMP_15_43_port, B(42) => 
                           OTMP_15_42_port, B(41) => OTMP_15_41_port, B(40) => 
                           OTMP_15_40_port, B(39) => OTMP_15_39_port, B(38) => 
                           OTMP_15_38_port, B(37) => OTMP_15_37_port, B(36) => 
                           OTMP_15_36_port, B(35) => OTMP_15_35_port, B(34) => 
                           OTMP_15_34_port, B(33) => OTMP_15_33_port, B(32) => 
                           OTMP_15_32_port, B(31) => OTMP_15_31_port, B(30) => 
                           OTMP_15_30_port, B(29) => OTMP_15_29_port, B(28) => 
                           OTMP_15_28_port, B(27) => OTMP_15_27_port, B(26) => 
                           OTMP_15_26_port, B(25) => OTMP_15_25_port, B(24) => 
                           OTMP_15_24_port, B(23) => OTMP_15_23_port, B(22) => 
                           OTMP_15_22_port, B(21) => OTMP_15_21_port, B(20) => 
                           OTMP_15_20_port, B(19) => OTMP_15_19_port, B(18) => 
                           OTMP_15_18_port, B(17) => OTMP_15_17_port, B(16) => 
                           OTMP_15_16_port, B(15) => OTMP_15_15_port, B(14) => 
                           OTMP_15_14_port, B(13) => OTMP_15_13_port, B(12) => 
                           OTMP_15_12_port, B(11) => OTMP_15_11_port, B(10) => 
                           OTMP_15_10_port, B(9) => OTMP_15_9_port, B(8) => 
                           OTMP_15_8_port, B(7) => OTMP_15_7_port, B(6) => 
                           OTMP_15_6_port, B(5) => OTMP_15_5_port, B(4) => 
                           OTMP_15_4_port, B(3) => OTMP_15_3_port, B(2) => 
                           OTMP_15_2_port, B(1) => OTMP_15_1_port, B(0) => 
                           OTMP_15_0_port, Ci => X_Logic0_port, S(63) => S(63),
                           S(62) => S(62), S(61) => S(61), S(60) => S(60), 
                           S(59) => S(59), S(58) => S(58), S(57) => S(57), 
                           S(56) => S(56), S(55) => S(55), S(54) => S(54), 
                           S(53) => S(53), S(52) => S(52), S(51) => S(51), 
                           S(50) => S(50), S(49) => S(49), S(48) => S(48), 
                           S(47) => S(47), S(46) => S(46), S(45) => S(45), 
                           S(44) => S(44), S(43) => S(43), S(42) => S(42), 
                           S(41) => S(41), S(40) => S(40), S(39) => S(39), 
                           S(38) => S(38), S(37) => S(37), S(36) => S(36), 
                           S(35) => S(35), S(34) => S(34), S(33) => S(33), 
                           S(32) => S(32), S(31) => S(31), S(30) => S(30), 
                           S(29) => S(29), S(28) => S(28), S(27) => S(27), 
                           S(26) => S(26), S(25) => S(25), S(24) => S(24), 
                           S(23) => S(23), S(22) => S(22), S(21) => S(21), 
                           S(20) => S(20), S(19) => S(19), S(18) => S(18), 
                           S(17) => S(17), S(16) => S(16), S(15) => S(15), 
                           S(14) => S(14), S(13) => S(13), S(12) => S(12), 
                           S(11) => S(11), S(10) => S(10), S(9) => S(9), S(8) 
                           => S(8), S(7) => S(7), S(6) => S(6), S(5) => S(5), 
                           S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1) => 
                           S(1), S(0) => S(0), Co => n_1309);
   sub_101 : BOOTHMUL_NBIT32_DW01_sub_0 port map( A(31) => n1, A(30) => n1, 
                           A(29) => n1, A(28) => n1, A(27) => n1, A(26) => n1, 
                           A(25) => n1, A(24) => n1, A(23) => n1, A(22) => n1, 
                           A(21) => n1, A(20) => n1, A(19) => n1, A(18) => n1, 
                           A(17) => n1, A(16) => n1, A(15) => n1, A(14) => n1, 
                           A(13) => n1, A(12) => n1, A(11) => n1, A(10) => n1, 
                           A(9) => n1, A(8) => n1, A(7) => n1, A(6) => n1, A(5)
                           => n1, A(4) => n1, A(3) => n1, A(2) => n1, A(1) => 
                           n1, A(0) => n1, B(31) => A(31), B(30) => A(30), 
                           B(29) => A(29), B(28) => A(28), B(27) => A(27), 
                           B(26) => A(26), B(25) => A(25), B(24) => A(24), 
                           B(23) => A(23), B(22) => A(22), B(21) => A(21), 
                           B(20) => A(20), B(19) => A(19), B(18) => A(18), 
                           B(17) => A(17), B(16) => A(16), B(15) => A(15), 
                           B(14) => A(14), B(13) => A(13), B(12) => A(12), 
                           B(11) => A(11), B(10) => A(10), B(9) => A(9), B(8) 
                           => A(8), B(7) => A(7), B(6) => A(6), B(5) => A(5), 
                           B(4) => A(4), B(3) => A(3), B(2) => A(2), B(1) => 
                           A(1), B(0) => A(0), CI => n2, DIFF(31) => A_n_65, 
                           DIFF(30) => A_n_30_port, DIFF(29) => A_n_29_port, 
                           DIFF(28) => A_n_28_port, DIFF(27) => A_n_27_port, 
                           DIFF(26) => A_n_26_port, DIFF(25) => A_n_25_port, 
                           DIFF(24) => A_n_24_port, DIFF(23) => A_n_23_port, 
                           DIFF(22) => A_n_22_port, DIFF(21) => A_n_21_port, 
                           DIFF(20) => A_n_20_port, DIFF(19) => A_n_19_port, 
                           DIFF(18) => A_n_18_port, DIFF(17) => A_n_17_port, 
                           DIFF(16) => A_n_16_port, DIFF(15) => A_n_15_port, 
                           DIFF(14) => A_n_14_port, DIFF(13) => A_n_13_port, 
                           DIFF(12) => A_n_12_port, DIFF(11) => A_n_11_port, 
                           DIFF(10) => A_n_10_port, DIFF(9) => A_n_9_port, 
                           DIFF(8) => A_n_8_port, DIFF(7) => A_n_7_port, 
                           DIFF(6) => A_n_6_port, DIFF(5) => A_n_5_port, 
                           DIFF(4) => A_n_4_port, DIFF(3) => A_n_3_port, 
                           DIFF(2) => A_n_2_port, DIFF(1) => A_n_1_port, 
                           DIFF(0) => A_n_0_port, CO => n_1310);
   OTMP_15_0_port <= '0';
   SHIFT_n_15_0_port <= '0';
   SHIFT_n_15_1_port <= '0';
   SHIFT_15_0_port <= '0';
   SHIFT_15_1_port <= '0';
   OTMP_14_0_port <= '0';
   SHIFT_n_14_0_port <= '0';
   SHIFT_n_14_1_port <= '0';
   SHIFT_14_0_port <= '0';
   SHIFT_14_1_port <= '0';
   OTMP_13_0_port <= '0';
   SHIFT_n_13_0_port <= '0';
   SHIFT_n_13_1_port <= '0';
   SHIFT_13_0_port <= '0';
   SHIFT_13_1_port <= '0';
   OTMP_12_0_port <= '0';
   SHIFT_n_12_0_port <= '0';
   SHIFT_n_12_1_port <= '0';
   SHIFT_12_0_port <= '0';
   SHIFT_12_1_port <= '0';
   OTMP_11_0_port <= '0';
   SHIFT_n_11_0_port <= '0';
   SHIFT_n_11_1_port <= '0';
   SHIFT_11_0_port <= '0';
   SHIFT_11_1_port <= '0';
   OTMP_10_0_port <= '0';
   SHIFT_n_10_0_port <= '0';
   SHIFT_n_10_1_port <= '0';
   SHIFT_10_0_port <= '0';
   SHIFT_10_1_port <= '0';
   OTMP_9_0_port <= '0';
   SHIFT_n_9_0_port <= '0';
   SHIFT_n_9_1_port <= '0';
   SHIFT_9_0_port <= '0';
   SHIFT_9_1_port <= '0';
   OTMP_8_0_port <= '0';
   SHIFT_n_8_0_port <= '0';
   SHIFT_n_8_1_port <= '0';
   SHIFT_8_0_port <= '0';
   SHIFT_8_1_port <= '0';
   OTMP_7_0_port <= '0';
   SHIFT_n_7_0_port <= '0';
   SHIFT_n_7_1_port <= '0';
   SHIFT_7_0_port <= '0';
   SHIFT_7_1_port <= '0';
   OTMP_6_0_port <= '0';
   SHIFT_n_6_0_port <= '0';
   SHIFT_n_6_1_port <= '0';
   SHIFT_6_0_port <= '0';
   SHIFT_6_1_port <= '0';
   OTMP_5_0_port <= '0';
   SHIFT_n_5_0_port <= '0';
   SHIFT_n_5_1_port <= '0';
   SHIFT_5_0_port <= '0';
   SHIFT_5_1_port <= '0';
   OTMP_4_0_port <= '0';
   SHIFT_n_4_0_port <= '0';
   SHIFT_n_4_1_port <= '0';
   SHIFT_4_0_port <= '0';
   SHIFT_4_1_port <= '0';
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
