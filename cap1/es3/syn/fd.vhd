LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY FD IS
	PORT (
		D : IN STD_LOGIC;
		CK : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		Q : OUT STD_LOGIC);
END FD;
ARCHITECTURE PIPPO OF FD IS -- flip flop D with syncronous reset

BEGIN
	PSYNCH : PROCESS (CK, RESET)
	BEGIN
		IF CK'event AND CK = '1' THEN -- positive edge triggered:
			IF RESET = '1' THEN -- active high reset 
				Q <= '0';
			ELSE
				Q <= D; -- input is written on output
			END IF;
		END IF;
	END PROCESS;

END PIPPO;

ARCHITECTURE PLUTO OF FD IS -- flip flop D with asyncronous reset

BEGIN

	PASYNCH : PROCESS (CK, RESET)
	BEGIN
		IF RESET = '1' THEN
			Q <= '0';
		ELSIF CK'event AND CK = '1' THEN -- positive edge triggered:
			Q <= D;
		END IF;
	END PROCESS;

END PLUTO;
CONFIGURATION CFG_FD_PIPPO OF FD IS
	FOR PIPPO
	END FOR;
END CFG_FD_PIPPO;
CONFIGURATION CFG_FD_PLUTO OF FD IS
	FOR PLUTO
	END FOR;
END CFG_FD_PLUTO;