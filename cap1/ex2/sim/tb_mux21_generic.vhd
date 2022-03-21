--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
--           Matteo Bonora  [matteo.bonora@polito.it]
-- 
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     TB_MUX21_GENERIC 
-- Module Name:     tb_mux21_generic.vhd
-- Project Name:    
-- Description:     
--                  
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * Updated to generic types
-- Revision 01 - Matteo Bonora
--  * Updated to comply with lab std.s
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE WORK.constants.ALL;

ENTITY TB_MUX21_GENERIC IS
END TB_MUX21_GENERIC;

ARCHITECTURE TEST OF TB_MUX21_GENERIC IS

CONSTANT NBIT : INTEGER := 16;

SIGNAL A1 : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
SIGNAL B1 : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
SIGNAL S1 : STD_LOGIC;
SIGNAL OUT_BEH : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
SIGNAL OUT_STR : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);

COMPONENT MUX21_GENERIC
    GENERIC (
        NBIT : INTEGER := NumBit);
    PORT (
        A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
        SEL : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0));
END COMPONENT;

BEGIN

BEHAV_U0 : MUX21_GENERIC
GENERIC MAP(NBIT)
PORT MAP(A1, B1, S1, OUT_BEH);

STRUC_U2 : MUX21_GENERIC
GENERIC MAP(NBIT)
PORT MAP(A1, B1, S1, OUT_STR);

A1 <= "0000000100000001";
B1 <= "1000000000000001";
S1 <= '0', '1' AFTER 5 ns;

END TEST;

CONFIGURATION MUX21GENTEST OF TB_MUX21_GENERIC IS
FOR TEST

    FOR BEHAV_U0 : MUX21_GENERIC
    USE CONFIGURATION WORK.CFG_MUX21_GENERIC_BEHAVIORAL;
END FOR;

FOR STRUC_U2 : MUX21_GENERIC
USE CONFIGURATION WORK.CFG_MUX21_GENERIC_STRUCTURAL;
END FOR;

END FOR;

END MUX21GENTEST;
