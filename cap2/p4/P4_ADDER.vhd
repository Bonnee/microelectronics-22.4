--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@studenti.polito.it]
-- 
-- Create Date:     Mon Apr  4 21:44:22 CEST 2022
-- Design Name:     P4_ADDER
-- Module Name:     P4_ADDER.vhd
-- Project Name:    P4 adder
-- Description:     Pentium 4 Adder
-- Constraints:
--                  NBIT must be power of 2
-- Revision:
-- Revision 00 - Simone Ruffini
--  * Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity P4_ADDER is
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
end P4_ADDER;

architecture STRUCTURAL of P4_ADDER is
 
    constant NBIT_CARRY_BLOCK : INTEGER := 4; -- the pentium 4 adder uses 4 bit per carry lines

    signal carry_gen_Co  : STD_LOGIC_VECTOR((NBIT/NBIT_CARRY_BLOCK) - 1 downto 0)

      --A   : in STD_LOGIC_VECTOR(NBIT - 1 downto 0);
      --B   : in STD_LOGIC_VECTOR(NBIT - 1 downto 0);
      --Cin : in STD_LOGIC;
      --Co  : out STD_LOGIC_VECTOR((NBIT/NBIT_PER_BLOCK) - 1 downto 0)
begin

  U_CARRY_GENERATOR: entity work.CARRY_GENERATOR
    generic map(
      NBIT           => NBIT,
      NBIT_PER_BLOCK => NBIT_CARRY_BLOCK,
    )
    port map(
      A   => A,
      B   => B,
      Cin => Cin,
      Co  => carry_gen_Co
    );
 
  U_SUM_GENERATOR: entity work.SUM_GENERATOR
  	generic map (
  		NBIT_PER_BLOCK => NBIT_PER_BLOCK,
  		NBLOCKS        => NBIT/NBIT_PER_BLOCK
    )
  	port map(
  		A  => A,
  		B  => B,
  		Ci => carry_gen_Co,
  		S  => S
    );
 
end STRUCTURAL;

