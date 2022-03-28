--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
--           Matteo Bonora  [matteo.bonora@polito.it]
-- 
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     TB_CSB 
-- Module Name:     tb_csb.vhd
-- Project Name:    
-- Description:     
--                  
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Revision 01 - Matteo Bonora
--  * Updated to comply with lab std.s
-- Revision 02 - Matteo Bonora
--  * Adapted to test the CSB
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- we need a conversion to unsigned 
--USE work.constants.ALL;

ENTITY TBCSB IS
END TBCSB;

ARCHITECTURE TEST OF TBCSB IS

  CONSTANT NBIT : INTEGER := 6; -- overrides constants.all NumBit

  COMPONENT LFSR16
    PORT (
      CLK, RESET, LD, EN : IN STD_LOGIC;
      DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      PRN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ZERO_D : OUT STD_LOGIC);
  END COMPONENT;

  COMPONENT CSB
    GENERIC (
      NBIT : INTEGER
    );
    PORT (
      A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      Cin : IN STD_LOGIC;
      S : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      Co : OUT STD_LOGIC);
  END COMPONENT;

  CONSTANT Period : TIME := 1 ns; -- Clock period (1 GHz)
  SIGNAL CLK : STD_LOGIC := '0';
  SIGNAL RESET, LD, EN, ZERO_D : STD_LOGIC;
  SIGNAL DIN, PRN : STD_LOGIC_VECTOR(15 DOWNTO 0);

  SIGNAL A, B, S : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
  SIGNAL Ci, Co : STD_LOGIC;

BEGIN

  -- Instanciate the ADDER without delay in the carry generation
  UADDER1 : CSB
  GENERIC MAP(NBIT => NBIT)
  PORT MAP(A, B, Ci, S, Co);

  Ci <= '0';
  A(0) <= PRN(0);
  A(5) <= PRN(2);
  A(3) <= PRN(4);
  A(1) <= PRN(6);
  A(4) <= PRN(8);
  A(2) <= PRN(10);

  B(0) <= PRN(15);
  B(5) <= PRN(13);
  B(3) <= PRN(11);
  B(1) <= PRN(9);
  B(4) <= PRN(7);
  B(2) <= PRN(5);

  -- Instanciate the Unit Under Test (UUT)
  UUT : LFSR16 PORT MAP(
    CLK => CLK, RESET => RESET, LD => LD, EN => EN,
    DIN => DIN, PRN => PRN, ZERO_D => ZERO_D);
  -- Create the permanent Clock and the Reset pulse
  CLK <= NOT CLK AFTER Period/2;
  RESET <= '1', '0' AFTER Period;
  -- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1 : PROCESS
  BEGIN
    DIN <= "0000000000000001";
    EN <= '1';
    LD <= '1';
    WAIT FOR 2 * PERIOD;
    LD <= '0';
    WAIT FOR (65600 * PERIOD);
  END PROCESS STIMULUS1;

END TEST;

CONFIGURATION CSBTEST OF TBCSB IS
  FOR TEST
    FOR UADDER1 : CSB
      USE CONFIGURATION WORK.CFG_CSB_BEHAVIOURAL;
    END FOR;
  END FOR;
END CSBTEST;