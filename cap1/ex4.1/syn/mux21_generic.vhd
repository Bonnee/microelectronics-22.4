--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
--           Matteo Bonora  [matteo.bonora@polito.it]
-- 
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     MUX21_GENERIC 
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
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL; --  libreria IEEE con definizione tipi standard logic
USE WORK.CONSTANTS.ALL;

ENTITY MUX21_GENERIC IS
GENERIC (
	NBIT : INTEGER := NumBit);
PORT (
	A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
	SEL : IN STD_LOGIC;
	Y : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0));
END MUX21_GENERIC;

ARCHITECTURE BEHAVIORAL OF MUX21_GENERIC IS
BEGIN

Y <= A WHEN SEL = '1' ELSE
	B;

END BEHAVIORAL;

ARCHITECTURE STRUCTURAL OF MUX21_GENERIC IS

COMPONENT MUX21 IS
	PORT (
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		S : IN STD_LOGIC;
		Y : OUT STD_LOGIC);
END COMPONENT;

BEGIN
GEN_FOR : FOR I IN 1 TO NBIT GENERATE
	MUX21_I : MUX21
	PORT MAP(
		A => A(I - 1),
		B => B(I - 1),
		S => SEL,
		Y => Y(I - 1)
	);
END GENERATE;
END STRUCTURAL;

CONFIGURATION CFG_MUX21_GENERIC_BEHAVIORAL OF MUX21_GENERIC IS
FOR BEHAVIORAL
END FOR;
END CFG_MUX21_GENERIC_BEHAVIORAL;

CONFIGURATION CFG_MUX21_GENERIC_STRUCTURAL OF MUX21_GENERIC IS
FOR STRUCTURAL
    FOR GEN_FOR
        FOR ALL : MUX21
            USE CONFIGURATION WORK.CFG_MUX21_STRUCTURAL;
        END FOR;
	END FOR;
END FOR;
END CFG_MUX21_GENERIC_STRUCTURAL;
