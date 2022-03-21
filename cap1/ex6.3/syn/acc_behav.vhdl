
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_NBIT10 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_NBIT10;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT10.all;

entity ACC_NBIT10_DW01_add_0 is

   port( A, B : in std_logic_vector (9 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (9 downto 0);  CO : out std_logic);

end ACC_NBIT10_DW01_add_0;

architecture SYN_rpl of ACC_NBIT10_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port,
      carry_4_port, carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           n_1002, S => SUM(9));
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

use work.CONV_PACK_ACC_NBIT10.all;

entity ACC_NBIT10 is

   port( A, B : in std_logic_vector (9 downto 0);  CLK, RST_n, ACCUMULATE : in 
         std_logic;  Y : out std_logic_vector (9 downto 0));

end ACC_NBIT10;

architecture SYN_BEHAVIOURAL of ACC_NBIT10 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component ACC_NBIT10_DW01_add_0
      port( A, B : in std_logic_vector (9 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (9 downto 0);  CO : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port,
      Y_2_port, Y_1_port, Y_0_port, out_add_9_port, out_add_8_port, 
      out_add_7_port, out_add_6_port, out_add_5_port, out_add_4_port, 
      out_add_3_port, out_add_2_port, out_add_1_port, out_add_0_port, n1, n24, 
      n25, n26, n27, n28, n29, n30, n31, n32, n33, n_1003, n_1004, n_1005, 
      n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013 : 
      std_logic;

begin
   Y <= ( Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port,
      Y_2_port, Y_1_port, Y_0_port );
   
   n1 <= '0';
   REG_reg_0_inst : DFFR_X1 port map( D => out_add_0_port, CK => CLK, RN => 
                           RST_n, Q => Y_0_port, QN => n_1003);
   REG_reg_1_inst : DFFR_X1 port map( D => out_add_1_port, CK => CLK, RN => 
                           RST_n, Q => Y_1_port, QN => n_1004);
   REG_reg_2_inst : DFFR_X1 port map( D => out_add_2_port, CK => CLK, RN => 
                           RST_n, Q => Y_2_port, QN => n_1005);
   REG_reg_3_inst : DFFR_X1 port map( D => out_add_3_port, CK => CLK, RN => 
                           RST_n, Q => Y_3_port, QN => n_1006);
   REG_reg_4_inst : DFFR_X1 port map( D => out_add_4_port, CK => CLK, RN => 
                           RST_n, Q => Y_4_port, QN => n_1007);
   REG_reg_5_inst : DFFR_X1 port map( D => out_add_5_port, CK => CLK, RN => 
                           RST_n, Q => Y_5_port, QN => n_1008);
   REG_reg_6_inst : DFFR_X1 port map( D => out_add_6_port, CK => CLK, RN => 
                           RST_n, Q => Y_6_port, QN => n_1009);
   REG_reg_7_inst : DFFR_X1 port map( D => out_add_7_port, CK => CLK, RN => 
                           RST_n, Q => Y_7_port, QN => n_1010);
   REG_reg_8_inst : DFFR_X1 port map( D => out_add_8_port, CK => CLK, RN => 
                           RST_n, Q => Y_8_port, QN => n_1011);
   REG_reg_9_inst : DFFR_X1 port map( D => out_add_9_port, CK => CLK, RN => 
                           RST_n, Q => Y_9_port, QN => n_1012);
   add_156 : ACC_NBIT10_DW01_add_0 port map( A(9) => A(9), A(8) => A(8), A(7) 
                           => A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), 
                           A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(9) => n24, B(8) => n25, B(7) => n26, B(6) =>
                           n27, B(5) => n28, B(4) => n29, B(3) => n30, B(2) => 
                           n31, B(1) => n32, B(0) => n33, CI => n1, SUM(9) => 
                           out_add_9_port, SUM(8) => out_add_8_port, SUM(7) => 
                           out_add_7_port, SUM(6) => out_add_6_port, SUM(5) => 
                           out_add_5_port, SUM(4) => out_add_4_port, SUM(3) => 
                           out_add_3_port, SUM(2) => out_add_2_port, SUM(1) => 
                           out_add_1_port, SUM(0) => out_add_0_port, CO => 
                           n_1013);
   U25 : MUX2_X1 port map( A => B(9), B => Y_9_port, S => ACCUMULATE, Z => n24)
                           ;
   U26 : MUX2_X1 port map( A => B(8), B => Y_8_port, S => ACCUMULATE, Z => n25)
                           ;
   U27 : MUX2_X1 port map( A => B(7), B => Y_7_port, S => ACCUMULATE, Z => n26)
                           ;
   U28 : MUX2_X1 port map( A => B(6), B => Y_6_port, S => ACCUMULATE, Z => n27)
                           ;
   U29 : MUX2_X1 port map( A => B(5), B => Y_5_port, S => ACCUMULATE, Z => n28)
                           ;
   U30 : MUX2_X1 port map( A => B(4), B => Y_4_port, S => ACCUMULATE, Z => n29)
                           ;
   U31 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => n30)
                           ;
   U32 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => n31)
                           ;
   U33 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => n32)
                           ;
   U34 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => n33)
                           ;

end SYN_BEHAVIOURAL;
