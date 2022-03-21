--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
--           Matteo Bonora  [matteo.bonora@polito.it]
-- 
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     RCA_GEN
-- Module Name:     rca_generic.vhd
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
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
USE work.constants.ALL;

ENTITY RCA_GEN IS
  GENERIC (
    DRCAS : TIME := 0 ns;
    DRCAC : TIME := 0 ns;
    NBIT : INTEGER := NumBit
  );
  PORT (
    A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
    Ci : IN STD_LOGIC;
    S : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
    Co : OUT STD_LOGIC
  );
END RCA_GEN;

ARCHITECTURE STRUCTURAL OF RCA_GEN IS

  SIGNAL STMP : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
  SIGNAL CTMP : STD_LOGIC_VECTOR(NBIT DOWNTO 0);

  COMPONENT FA
    GENERIC (
      DFAS : TIME := 0 ns;
      DFAC : TIME := 0 ns
    );
    PORT (
      A : IN STD_LOGIC;
      B : IN STD_LOGIC;
      Ci : IN STD_LOGIC;
      S : OUT STD_LOGIC;
      Co : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(CTMP'length - 1);

  GEN_ADDER1 : FOR I IN 1 TO (NBIT) GENERATE
    FAI : FA
    GENERIC MAP(DFAS => DRCAS, DFAC => DRCAC)
    PORT MAP(A(I - 1), B(I - 1), CTMP(I - 1), STMP(I - 1), CTMP(I));
  END GENERATE;

END STRUCTURAL;

ARCHITECTURE BEHAVIORAL OF RCA_GEN IS
  SIGNAL num1 : unsigned(A'length - 1 DOWNTO 0);
  SIGNAL num2 : unsigned(B'length - 1 DOWNTO 0);
  SIGNAL res : unsigned(S'length DOWNTO 0); -- one extra bit
BEGIN
  num1 <= unsigned(A);
  num2 <= unsigned(B);
  res <= ('0' & num1) + ('0' & num2) + resize('0' & Ci, res'length);

  Co <= res(res'length - 1) AFTER DRCAC;
  S <= STD_LOGIC_VECTOR(res(NBIT - 1 DOWNTO 0)) AFTER DRCAS;

  --  S <= (A + B) after DRCAS;

END BEHAVIORAL;

CONFIGURATION CFG_RCA_STRUCTURAL OF RCA_GEN IS
  FOR STRUCTURAL
    FOR GEN_ADDER1
      FOR ALL : FA
        USE CONFIGURATION WORK.CFG_FA_BEHAVIORAL;
      END FOR;
    END FOR;
  END FOR;
END CFG_RCA_STRUCTURAL;

CONFIGURATION CFG_RCA_BEHAVIORAL OF RCA_GEN IS
  FOR BEHAVIORAL
  END FOR;
END CFG_RCA_BEHAVIORAL;
