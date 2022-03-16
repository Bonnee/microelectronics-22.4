
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_NBIT10 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_NBIT10;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT10.all;

entity MUX21_GENERIC_NBIT10 is

   port( A, B : in std_logic_vector (9 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (9 downto 0));

end MUX21_GENERIC_NBIT10;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT10 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U22 : MUX2_X1 port map( A => B(9), B => A(9), S => SEL, Z => Y(9));
   U23 : MUX2_X1 port map( A => B(8), B => A(8), S => SEL, Z => Y(8));
   U24 : MUX2_X1 port map( A => B(7), B => A(7), S => SEL, Z => Y(7));
   U25 : MUX2_X1 port map( A => B(6), B => A(6), S => SEL, Z => Y(6));
   U26 : MUX2_X1 port map( A => B(5), B => A(5), S => SEL, Z => Y(5));
   U27 : MUX2_X1 port map( A => B(4), B => A(4), S => SEL, Z => Y(4));
   U28 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U29 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U30 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U31 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;
