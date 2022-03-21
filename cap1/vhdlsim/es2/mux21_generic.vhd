LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL; --  libreria IEEE con definizione tipi standard logic
USE WORK.constants.ALL; -- libreria WORK user-defined

ENTITY MUX21_GENERIC IS
GENERIC (
	NBIT : INTEGER := numBit);
PORT (
	A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
	SEL : IN STD_LOGIC;
	Y : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0));
END MUX21_GENERIC;

ARCHITECTURE BEHAVIORAL OF MUX21_GENERIC IS

BEGIN

Y <=    A WHEN SEL = '1' ELSE
        B;

END BEHAVIORAL;

ARCHITECTURE STRUCTURAL OF MUX21_GENERIC IS

COMPONENT MUX21 is
	Port (	
        A:	In	std_logic;
		B:	In	std_logic;
		S:	In	std_logic;
		Y:	Out	std_logic
    );
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
		for all : MUX21
			use configuration WORK.CFG_MUX21_STRUCTURAL;
		end for;
    END FOR;
END FOR;
END CFG_MUX21_GENERIC_STRUCTURAL;

