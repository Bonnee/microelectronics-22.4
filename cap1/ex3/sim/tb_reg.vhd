--------------------------------------------------------------------------------
-- Engineer: Matteo Bonora  [matteo.bonora@polito.it]
--           Simone Ruffini [simone.ruffini@tutanota.com]
--
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     TB_REG
-- Module Name:     TB_REG.vhd 
-- Project Name:    
-- Description:     insert description
--                  
--
-- Revision:
-- Revision 00 - Matteo Bonora
--  * File Created
-- Revision 01 - Simone Ruffini
--  * Updated to comply with lab std.s
-- Additional Comments:
--
--------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE WORK.constants.ALL;

ENTITY TB_REG IS
END TB_REG;

ARCHITECTURE TEST OF TB_REG IS

  SIGNAL CK : STD_LOGIC := '0';
  SIGNAL RESET : STD_LOGIC := '0';
  SIGNAL D : STD_LOGIC_VECTOR(NumBit - 1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL QSYNCH : STD_LOGIC_VECTOR(NumBit - 1 DOWNTO 0);
  SIGNAL QASYNCH : STD_LOGIC_VECTOR(NumBit - 1 DOWNTO 0);

  COMPONENT REG IS
    GENERIC (NBIT : INTEGER := NumBit);
    PORT (
      D : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      CK : IN STD_LOGIC;
      RESET : IN STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0)
    );
  END COMPONENT;

BEGIN

  REG_U0 : REG
  GENERIC MAP(NumBit)
  PORT MAP(D, CK, RESET, QSYNCH); -- sync

  REG_U1 : REG
  GENERIC MAP(NumBit)
  PORT MAP(D, CK, RESET, QASYNCH); -- async

  RESET <= '0', '1' AFTER 0.6 ns, '0' AFTER 1.1 ns, '1' AFTER 2.2 ns, '0' AFTER 3.2 ns;
  D <= (OTHERS => '0'), (OTHERS => '1') AFTER 0.4 ns, (OTHERS => '0') AFTER 1.1 ns, (OTHERS => '1') AFTER 1.4 ns, (OTHERS => '0') AFTER 1.7 ns, (OTHERS => '1') AFTER 1.9 ns;
  --D <= "0000";--, "1111" AFTER 0.4 ns; --AFTER 0.4 ns, (OTHERS => '0') AFTER 1.1 ns, (OTHERS => '1') AFTER 1.4 ns, (OTHERS => '0') AFTER 1.7 ns, (OTHERS => '1') AFTER 1.9 ns;

  PCLOCK : PROCESS (CK)
  BEGIN
    CK <= NOT(CK) AFTER 0.5 ns;
  END PROCESS;

END TEST;

CONFIGURATION REGTEST OF TB_REG IS
  FOR TEST
    FOR REG_U0 : REG
      USE CONFIGURATION WORK.REG_SYNC; -- SINCRONO
    END FOR;
    FOR REG_U1 : REG
      USE CONFIGURATION WORK.REG_ASYNC; -- ASINCRONO
    END FOR;
  END FOR;
END REGTEST;
