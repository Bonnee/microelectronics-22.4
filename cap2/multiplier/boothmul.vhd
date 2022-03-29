--------------------------------------------------------------------------------
-- Engineer: Matteo Bonora  [matteo.bonora@polito.it]
-- 
-- Create Date:     Mon Mar 23 11:56:00 CET 2022
-- Design Name:     Booth's Multiplier
-- Module Name:     boothmul.vhd
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

ENTITY BOOTHMUL IS
	GENERIC (NBIT : INTEGER := 32);
	PORT (
		A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0)
	);
END BOOTHMUL;

ARCHITECTURE BEHAVIOURAL OF BOOTHMUL IS

	-- How many stages of encoders/muxes
	CONSTANT NSTAGE : INTEGER := (NBIT/2);

	-- We use RCA as an adder
	COMPONENT RCA IS
		GENERIC (
			NBIT : INTEGER
		);
		PORT (
			A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			Ci : IN STD_LOGIC;
			S : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			Co : OUT STD_LOGIC
		);

	END COMPONENT;
	COMPONENT BOOTHENC IS
		GENERIC (
			NBIT : INTEGER;
			i : INTEGER
		);
		PORT (
			A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			O : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0)
		);
	END COMPONENT;

	-- Temp MUX out signals
	SIGNAL OTMP : STD_LOGIC_VECTOR(NBIT * NSTAGE DOWNTO 0);

	-- Temp ADDER out signals
	SIGNAL PTMP : STD_LOGIC_VECTOR(NBIT * NSTAGE DOWNTO 0);

	SIGNAL CARRY : STD_LOGIC_VECTOR(NSTAGE - 1 DOWNTO 0)
BEGIN

	GEN_BOOTHSTAGE : FOR I IN 1 TO NSTAGE GENERATE
		BOOTHENCI : BOOTHENC
		GENERIC MAP(NBIT => NBIT, i => I)
		PORT MAP(
			A => A,
			B => B,
			O => OTMP((I * NBIT) - 1 DOWNTO ((I - 1) * NBIT)),
			Co : OUT STD_LOGIC
		);
	END GENERATE;

	GEN_ADDERS : FOR I IN 2 TO NSTAGE GENERATE
		ADDERI : RCA
		GENERIC MAP(NBIT => NBIT)
		PORT MAP(
			A => OTMP((I * NBIT) - 1 DOWNTO ((I - 1) * NBIT)),
			B => OTMP(((I - 1) * NBIT) - 1 DOWNTO ((I - 2) * NBIT)),
			Ci => '0',
			S => PTMP((I * NBIT) - 1 DOWNTO ((I - 1) * NBIT)),
			Co => OPEN
		);
	END GENERATE;

	S <= PTMP(((NSTAGE * NBIT) - 1) DOWNTO ((NSTAGE - 1) * NBIT));

END BEHAVIOURAL;

CONFIGURATION CFG_BOOTHMUL_MIXED OF BOOTHMUL IS
	FOR BEHAVIOURAL
		FOR GEN_BOOTHSTAGE
			FOR ALL : BOOTHENC
				USE CONFIGURATION WORK.CFG_BOOTHENC_BEHAVIOURAL;
			END FOR;
		END FOR;
		FOR GEN_ADDERS
			FOR ALL : RCA
				USE CONFIGURATION WORK.CFG_RCA_STRUCTURAL;
			END FOR;
		END FOR;
	END FOR;
END CFG_BOOTHMUL_MIXED;