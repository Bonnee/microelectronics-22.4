LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL; --  libreria IEEE con definizione tipi standard logic
USE WORK.constants.ALL; -- libreria WORK user-defined

ENTITY ND2 IS
	PORT (
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		Y : OUT STD_LOGIC);
END ND2;
ARCHITECTURE ARCH1 OF ND2 IS

BEGIN
	Y <= NOT(A AND B) AFTER NDDELAY; -- 

END ARCH1;

ARCHITECTURE ARCH2 OF ND2 IS

BEGIN
	-- nome processo
	--  |
	-- \/
	P1 : PROCESS (A, B) -- tutti gli ingressi utilizzati devono essere nella sensitivity list
	BEGIN
		IF (A = '1') AND (B = '1') THEN
			Y <= '0' AFTER NDDELAY;
		ELSIF (A = '0') OR (B = '0') THEN
			Y <= '1' AFTER NDDELAY;
		END IF;
	END PROCESS;

END ARCH2;
CONFIGURATION CFG_ND2_ARCH1 OF ND2 IS
	FOR ARCH1
	END FOR;
END CFG_ND2_ARCH1;

CONFIGURATION CFG_ND2_ARCH2 OF ND2 IS
	FOR ARCH2
	END FOR;
END CFG_ND2_ARCH2;