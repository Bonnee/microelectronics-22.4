--------------------------------------------------------------------------------
-- Engineer: Matteo Bonora  [matteo.bonora@polito.it]
-- 
-- Create Date:     Mon Mar 23 12:09:00 CET 2022
-- Design Name:     Booth's Encoder
-- Module Name:     boothenc.vhd
-- Project Name:    
-- Description:     
--                  
--
-- Revision:
-- Revision 00 - Matteo Bonora
--  * File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY BOOTHENC IS
	GENERIC (
		NBIT : INTEGER;
		i : INTEGER
	);
	PORT (
		A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		O : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		Co : OUT STD_LOGIC
	);
END BOOTHENC;

ARCHITECTURE BEHAVIOURAL OF BOOTHENC IS

	SIGNAL BAPP : STD_LOGIC_VECTOR(NBIT DOWNTO 0);

BEGIN
	BAPP(0) <= '0';

	ENC : PROCESS (A, B)
	BEGIN
		BAPP <= B & '0';

		Co <= '0';
		IF (((BAPP(i + 2) = '0') AND (BAPP(i + 1) = '0') AND (BAPP(i) = '1')) OR ((BAPP(i + 2) = '0') AND (BAPP(i + 1) = '1') AND (BAPP(i) = '0'))) THEN
			O <= A;

			ELSIF (BAPP(i + 2) = '0') AND (BAPP(i + 1) = '1') AND (BAPP(i) = '1') THEN
			O <= STD_LOGIC_VECTOR(shift_left(unsigned(A), i));

			ELSIF (BAPP(i + 2) = '1') AND (BAPP(i + 1) = '0') AND (BAPP(i) = '0') THEN
			O <= STD_LOGIC_VECTOR(shift_right(unsigned(A), i));

			ELSIF (((BAPP(i + 2) = '1') AND (BAPP(i + 1) = '0') AND (BAPP(i) = '1')) OR ((BAPP(i + 2) = '1') AND (BAPP(i + 1) = '1') AND (BAPP(i) = '0'))) THEN
			O <= NOT A; --STD_LOGIC_VECTOR(to_unsigned(-to_integer(unsigned(A)), NBIT));
			Co <= '1';
		END IF;

	END PROCESS;
END BEHAVIOURAL;

CONFIGURATION CFG_BOOTHENC_BEHAVIOURAL OF BOOTHENC IS
	FOR BEHAVIOURAL
	END FOR;
END CFG_BOOTHENC_BEHAVIOURAL;