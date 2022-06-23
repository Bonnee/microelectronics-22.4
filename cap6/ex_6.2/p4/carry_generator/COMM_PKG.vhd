--------------------------------------------------------------------------------
-- Engineer:  Simone Ruffini [simone.ruffini@studenti.unitn.it]
--
--
-- Create Date:     Thu Mar 24 10:35:58 CET 2022
-- Design Name:     COMM_PKG
-- Module Name:     COMM_PKG.vhd
-- Project Name:    P4 adder
-- Description:     Common Package for the P4 Adder
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;
  use IEEE.MATH_REAL.all;

package COMM_PKG is
  procedure assert_bits (
    BIT_WIDTH   : natural;
    CARRY_STEP  : natural
  );
  constant g_idx : natural := 0;
  constant p_idx : natural := 1;
  type crossbar_t is array (natural range <>, natural range <>) of STD_LOGIC_VECTOR(1 DOWNTO 0);

end package;

package body COMM_PKG is

  procedure assert_bits(
    BIT_WIDTH   : natural;
    CARRY_STEP  : natural
  ) is
  begin
    assert ( BIT_WIDTH >= CARRY_STEP )
    report "ERROR: The adder carry bit step (" & integer'image(CARRY_STEP) &") is greater then the bit width of the adder (" & integer'image(BIT_WIDTH) &")"
    severity failure;

    assert (( LOG2(real(BIT_WIDTH)) - real(integer(LOG2(real(BIT_WIDTH)))) ) = 0.0 )
    report "ERROR: The bit size of the adder(" & integer'image(BIT_WIDTH) &") is not supported, it must be a power of 2"
    severity failure;

    assert (( LOG2(real(CARRY_STEP)) - real(integer(LOG2(real(CARRY_STEP)))) ) = 0.0 )
    report "ERROR: The carry bit step of the adder (" & integer'image(CARRY_STEP) &") is not supported, it must be a power of 2"
    severity failure;
  end procedure ;
end COMM_PKG;

