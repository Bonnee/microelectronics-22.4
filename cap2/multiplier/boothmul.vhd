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
USE ieee.numeric_std.ALL;

ENTITY BOOTHMUL IS
	GENERIC (NBIT : INTEGER := 32);
	PORT (
		A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(NBIT * 2 - 1 DOWNTO 0)
	);
END BOOTHMUL;

ARCHITECTURE BEHAVIOURAL OF BOOTHMUL IS

	-- How many stages of encoders/muxes
	CONSTANT NSTAGE : INTEGER := (NBIT/2);
	-- Max bit size
	CONSTANT NSIZE : INTEGER := NBIT * 2;

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
			A_s : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			A_ns : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			O : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			A_so : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			A_nso : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0)
		);
	END COMPONENT;

	-- MUX out signals
	SIGNAL OTMP : STD_LOGIC_VECTOR((NSIZE * NSTAGE) - 1 DOWNTO 0);

	-- ADDER out signals
	SIGNAL PTMP : STD_LOGIC_VECTOR((NSIZE * (NSTAGE - 1)) - 1 DOWNTO 0);

	-- Shifted A and -A signals
	SIGNAL SHIFT : STD_LOGIC_VECTOR((NSIZE * (NSTAGE + 1)) - 1 DOWNTO 0);
	SIGNAL SHIFT_n : STD_LOGIC_VECTOR((NSIZE * (NSTAGE + 1)) - 1 DOWNTO 0);
	-- -A
	SIGNAL A_n : STD_LOGIC_VECTOR(NSIZE - 1 DOWNTO 0);

	SIGNAL ABIG : STD_LOGIC_VECTOR(NSIZE - 1 DOWNTO 0);
	SIGNAL BBIG : STD_LOGIC_VECTOR(NSIZE - 1 DOWNTO 0);
BEGIN
	-- Resize A and B to NBIT*2
	ABIG <= STD_LOGIC_VECTOR(resize(signed(A), ABIG'length));
	BBIG <= STD_LOGIC_VECTOR(resize(signed(B), BBIG'length));

	-- Instead of doing a negation in every mux, we negate A here in order to
	-- use only one adder.
	A_n <= STD_LOGIC_VECTOR(resize(to_signed(-1 * to_integer(signed(ABIG)), A_n'length + 1), A_n'length));

	-- Set initial values of the shift vector
	SHIFT(NSIZE - 1 DOWNTO 0) <= ABIG;
	SHIFT_n(NSIZE - 1 DOWNTO 0) <= A_n;

	-- Create NSTAGE encoders/muxes
	GEN_BOOTHSTAGE : FOR I IN 1 TO NSTAGE GENERATE
		BOOTHENC_I : BOOTHENC
		GENERIC MAP(
			NBIT => NSIZE,
			i => ((I - 1) * 2)
		)
		PORT MAP(
			A_s => SHIFT(((NSIZE * I) - 1) DOWNTO (NSIZE * (I - 1))),
			A_ns => SHIFT_n(((NSIZE * I) - 1) DOWNTO (NSIZE * (I - 1))),
			B => BBIG,
			O => OTMP(((NSIZE * I) - 1) DOWNTO (NSIZE * (I - 1))),
			A_so => SHIFT(((NSIZE * (I + 1)) - 1) DOWNTO (NSIZE * I)),
			A_nso => SHIFT_n(((NSIZE * (I + 1)) - 1) DOWNTO (NSIZE * I))
		);

	END GENERATE;

	GEN_ADDERS : FOR I IN 2 TO NSTAGE GENERATE
		-- The first adder's inputs are connected to two muxes, while all other
		-- adders are fed by a mux and the previous adder
		FIRSTADD : IF (I = 2) GENERATE
			ADDER2 : RCA
			GENERIC MAP(NBIT => NSIZE)
			PORT MAP(
				A => OTMP(NSIZE - 1 DOWNTO 0),
				B => OTMP((2 * NSIZE) - 1 DOWNTO NSIZE),
				Ci => '0',
				S => PTMP((1 * NSIZE) - 1 DOWNTO (0 * NSIZE)),
				Co => OPEN
			);
		END GENERATE;

		ELSADD : IF (I /= 2) GENERATE
			ADDERI : RCA
			GENERIC MAP(NBIT => NSIZE)
			PORT MAP(
				A => PTMP(((I - 2) * NSIZE) - 1 DOWNTO ((I - 3) * NSIZE)),
				B => OTMP(((I - 0) * NSIZE) - 1 DOWNTO ((I - 1) * NSIZE)),
				Ci => '0',
				S => PTMP(((I - 1) * NSIZE) - 1 DOWNTO ((I - 2) * NSIZE)),
				Co => OPEN
			);
		END GENERATE;
	END GENERATE;

	-- Output of the last adder is our solution
	S <= PTMP((NSIZE * (NSTAGE - 1)) - 1 DOWNTO (NSIZE * (NSTAGE - 2)));

END BEHAVIOURAL;

CONFIGURATION CFG_BOOTHMUL_MIXED OF BOOTHMUL IS
	FOR BEHAVIOURAL
		FOR GEN_BOOTHSTAGE
			FOR ALL : BOOTHENC
				USE CONFIGURATION WORK.CFG_BOOTHENC_BEHAVIOURAL;
			END FOR;
		END FOR;
		FOR GEN_ADDERS
			FOR FIRSTADD
				FOR ALL : RCA
					USE CONFIGURATION WORK.CFG_RCA_STRUCTURAL;
				END FOR;
			END FOR;
			FOR ELSADD
				FOR ALL : RCA
					USE CONFIGURATION WORK.CFG_RCA_STRUCTURAL;
				END FOR;
			END FOR;
		END FOR;
	END FOR;
END CFG_BOOTHMUL_MIXED;