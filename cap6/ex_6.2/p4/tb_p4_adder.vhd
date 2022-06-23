--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
-- 
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     TB_P4_ADDER 
-- Module Name:     TB_P4_ADDER.vhd
-- Project Name:    P4 adder
-- Description:     
--                  
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; 

ENTITY TB_P4_ADDER IS
END TB_P4_ADDER;

ARCHITECTURE TEST OF TB_P4_ADDER IS

  component P4_ADDER is
    generic (
      NBIT :  integer := 32
    );
    port (
      A    : in std_logic_vector(NBIT-1 downto 0);
      B    : in std_logic_vector(NBIT-1 downto 0);
      Cin  : in std_logic;
      S    : out std_logic_vector(NBIT-1 downto 0);
      Cout : out std_logic
    );
  end component;

  CONSTANT NumBit : integer := 32;

  SIGNAL A, B, S: STD_LOGIC_VECTOR(NumBit - 1 DOWNTO 0);
  SIGNAL Ci, Co: STD_LOGIC;

BEGIN

U_P4_ADDER: P4_ADDER 
  generic map(
    NBIT => NumBit
  )
  port map(
    A    => A,
    B    => B,
    Cin  => Ci,
    S    => S,
    Cout => Co
  );


  test: process is
  begin
    --A <= STD_LOGIC_VECTOR(to_unsigned(32,A'length));
    --B <= STD_LOGIC_VECTOR(to_unsigned(35,B'length));
    A <= b"11111111_11111111_11111111_11111111";
    B <= STD_LOGIC_VECTOR(to_unsigned(1,B'length));
    Ci <= '0';
    wait for 5 ns;
    A <= b"01111111_11111111_11111111_11111111";
    B <= STD_LOGIC_VECTOR(to_unsigned(1,B'length));
    Ci <= '0';
    wait for 5 ns;
    A <= b"11111111_11111111_11111111_11111110";
    B <= STD_LOGIC_VECTOR(to_unsigned(0,B'length));
    Ci <= '1';
    wait for 5 ns;
    A <= b"00000000_11111111_00000000_11111111";
    B <= b"11111111_00000000_11111111_00000000";
    Ci <= '0';
    wait for 5 ns;
    A <= b"01010101_01010101_01010101_01010101";
    B <= b"01010101_01010101_01010101_01010101";
    Ci <= '0';
    wait for 5 ns;
    A <= b"10101010_10101010_10101010_10101010";
    B <= b"10101010_10101010_10101010_10101010";
    Ci <= '0';
    wait for 5 ns;
    A <= b"00111111_11101111_11101111_10111011";
    B <= b"00111111_11101111_11101111_10111011";
    Ci <= '0';
    wait for 5 ns;
    A <= STD_LOGIC_VECTOR(to_unsigned(3452,B'length));
    B <= not(STD_LOGIC_VECTOR(to_unsigned(3000,B'length)));
    Ci <= '1';
    wait for 5 ns;
    wait;
  end process;
END TEST;

CONFIGURATION CFG_TEST OF TB_P4_ADDER IS
	FOR TEST
    FOR ALL : P4_ADDER
      USE CONFIGURATION WORK.CFG_P4_ADDER_STRUCTURAL;
    END FOR;
	END FOR;
END CFG_TEST;
