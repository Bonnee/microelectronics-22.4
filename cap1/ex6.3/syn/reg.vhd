--------------------------------------------------------------------------------
-- Engineer: Matteo Bonora  [matteo.bonora@polito.it]
--           Simone Ruffini [simone.ruffini@tutanota.com]
--
-- Create Date:     Mon Mar 14 22:21:59 CET 2022
-- Design Name:     REG
-- Module Name:     REG.vhd 
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
----------------------------- PACKAGES/LIBRARIES -------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- User Libraries
LIBRARY WORK;
USE WORK.constants.ALL;

----------------------------- ENTITY -------------------------------------------
ENTITY REG IS
	GENERIC (
		NBIT : INTEGER := NumBit
	);
	PORT (
		D : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
		CK : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		Q : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0)
	);
END REG;

----------------------------- ARCHITECTURE -------------------------------------
ARCHITECTURE SYNC OF REG IS
	--########################### CONSTANTS 1 ####################################

	--########################### TYPES ##########################################

	--########################### FUNCTIONS ######################################

	--########################### CONSTANTS 2 ####################################

	--########################### SIGNALS ########################################

	--########################### COMPONENTS DECLARATION #########################
	COMPONENT FD
		PORT (
			D : IN STD_LOGIC;
			CK : IN STD_LOGIC;
			RESET : IN STD_LOGIC;
			Q : OUT STD_LOGIC
		);
	END COMPONENT;

	--########################### ARCHITECTURE BEGIN #############################
BEGIN
	--########################### ENTITY DEFINITION ##############################

	-- Each FD is an independent entity. We only need to connect CK and RESET together and collect the DI and QI in two vectors
	GEN_FOR : FOR I IN 1 TO NBIT GENERATE
		FD_I : FD
		PORT MAP(
			D => D(I - 1),
			CK => CK,
			RESET => RESET,
			Q => Q(I - 1)
		);
	END GENERATE;

	--########################## OUTPUT PORTS WIRING #############################

	--########################## COBINATORIAL FUNCTIONS ##########################

	--########################## PROCESSES #######################################
END SYNC;
----------------------------- END ARCHITECTURE ---------------------------------

----------------------------- ARCHITECTURE -------------------------------------
ARCHITECTURE ASYNC OF REG IS
	--########################### CONSTANTS 1 ####################################

	--########################### TYPES ##########################################

	--########################### FUNCTIONS ######################################

	--########################### CONSTANTS 2 ####################################

	--########################### SIGNALS ########################################

	--########################### COMPONENTS DECLARATION #########################
	COMPONENT FD
		PORT (
			D : IN STD_LOGIC;
			CK : IN STD_LOGIC;
			RESET : IN STD_LOGIC;
			Q : OUT STD_LOGIC
		);
	END COMPONENT;

	--########################### ARCHITECTURE BEGIN #############################
BEGIN
	--########################### ENTITY DEFINITION ##############################

	-- Each FD is an independent entity. We only need to connect CK and RESET together and collect the DI and QI in two vectors
	GEN_FOR : FOR I IN 1 TO NBIT GENERATE
		FD_I : FD
		PORT MAP(
			D => D(I - 1),
			CK => CK,
			RESET => RESET,
			Q => Q(I - 1)
		);
	END GENERATE;

	--########################## OUTPUT PORTS WIRING #############################

	--########################## COBINATORIAL FUNCTIONS ##########################

	--########################## PROCESSES #######################################
END ASYNC;

CONFIGURATION REG_SYNC OF REG IS
	FOR SYNC
		FOR GEN_FOR
			FOR ALL : FD
				USE CONFIGURATION WORK.CFG_FD_PIPPO;
			END FOR;
		END FOR;
	END FOR;
END REG_SYNC;

CONFIGURATION REG_ASYNC OF REG IS
	FOR ASYNC
		FOR GEN_FOR
			FOR ALL : FD
				USE CONFIGURATION WORK.CFG_FD_PLUTO;
			END FOR;
		END FOR;
	END FOR;
END REG_ASYNC;