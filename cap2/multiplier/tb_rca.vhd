--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
--           Matteo Bonora  [matteo.bonora@polito.it]
-- 
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     TB_RCA_GENERIC 
-- Module Name:     mux21_generic.vhd
-- Project Name:    
-- Description:     
--                  
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Revision 01 - Matteo Bonora
--  * Updated to comply with lab std.s
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- we need a conversion to unsigned 

ENTITY TBRCA IS
END TBRCA;

ARCHITECTURE TEST OF TBRCA IS

  CONSTANT NBIT : INTEGER := 6; -- overrides constants.all NumBit

  COMPONENT LFSR16
    PORT (
      CLK, RESET, LD, EN : IN STD_LOGIC;
      DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      PRN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ZERO_D : OUT STD_LOGIC);
  END COMPONENT;

  COMPONENT RCA
    GENERIC (
      DRCAS : TIME := 0 ns;
      DRCAC : TIME := 0 ns;
      NBIT : INTEGER
    );
    PORT (
      A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      Ci : IN STD_LOGIC;
      S : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      Co : OUT STD_LOGIC);
  END COMPONENT;
  CONSTANT Period : TIME := 1 ns; -- Clock period (1 GHz)
  SIGNAL CLK : STD_LOGIC := '0';
  SIGNAL RESET, LD, EN, ZERO_D : STD_LOGIC;
  SIGNAL DIN, PRN : STD_LOGIC_VECTOR(15 DOWNTO 0);

  SIGNAL A, B, S1, S2, S3 : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
  SIGNAL Ci, Co1, Co2, Co3 : STD_LOGIC;

BEGIN

  -- Instanciate the ADDER without delay in the carry generation
  UADDER1 : RCA
  GENERIC MAP(DRCAS => 0.02 ns, DRCAC => 0 ns, NBIT => NBIT)
  PORT MAP(A, B, Ci, S1, Co1);

  -- Instanciate the ADDER with delay
  UADDER2 : RCA
  GENERIC MAP(DRCAS => 0.02 ns, DRCAC => 0.02 ns, NBIT => NBIT)
  PORT MAP(A, B, Ci, S2, Co2);

  -- Instanciate the ADDER behavioral
  UADDER3 : RCA
  GENERIC MAP(DRCAS => 0.02 ns, DRCAC => 0.02 ns, NBIT => NBIT)
  PORT MAP(A, B, Ci, S3, Co3);
  -- Forcing adder input to LFSR output
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

CONFIGURATION RCATEST OF TBRCA IS
  FOR TEST
    FOR UADDER1 : RCA
      USE CONFIGURATION WORK.CFG_RCA_STRUCTURAL;
    END FOR;
    FOR UADDER2 : RCA
      USE CONFIGURATION WORK.CFG_RCA_STRUCTURAL;
    END FOR;
    FOR UADDER3 : RCA
      USE CONFIGURATION WORK.CFG_RCA_BEHAVIORAL;
    END FOR;
  END FOR;
END RCATEST;