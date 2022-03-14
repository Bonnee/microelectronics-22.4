LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE WORK.constants.ALL;

ENTITY TBREG IS
END TBREG;

ARCHITECTURE TEST OF TBREG IS
	SIGNAL CK : STD_LOGIC := '0';
	SIGNAL RESET : STD_LOGIC := '0';
	SIGNAL D : STD_LOGIC_VECTOR(NumBit - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL QSYNCH : STD_LOGIC_VECTOR(NumBit - 1 DOWNTO 0);
	SIGNAL QASYNCH : STD_LOGIC_VECTOR(NumBit - 1 DOWNTO 0);

BEGIN

	UFD1 : ENTITY work.REG(sync)
		GENERIC MAP(NumBit)
		PORT MAP(D, CK, RESET, QSYNCH); -- sinc

	UFD2 : ENTITY work.REG(async)
		GENERIC MAP(NumBit)
		PORT MAP(D, CK, RESET, QASYNCH); -- asinc
	RESET_PROCESS : PROCESS
	BEGIN
		RESET <= '0';
		WAIT FOR 0.6 ns;
		RESET <= '1';
		WAIT FOR 0.6 ns;
		RESET <= '0';
		WAIT FOR 1.1 ns;
		RESET <= '1';
		WAIT FOR 2.2 ns;
		RESET <= '0';
	END PROCESS;

	--DATA_PROCESS : PROCESS
	--BEGIN
	--	D <= (OTHERS => '0');
	--	WAIT FOR 0.4 ns;
	--	D <= (OTHERS => '1');
	--	WAIT FOR 1.1 ns;
	--	D <= (OTHERS => '0');
	--	WAIT FOR 1.4 ns;
	--	D <= (OTHERS => '1');
	--	WAIT FOR 1.7 ns;
	--	D <= (OTHERS => '0');
	--	WAIT FOR 1.9 ns;
	--	D <= (OTHERS => '1');
	--END PROCESS;

	--RESET <= '0', '1' AFTER 0.6 ns, '0' AFTER 1.1 ns, '1' AFTER 2.2 ns, '0' AFTER 3.2 ns;
	D <= (OTHERS => '0'), (OTHERS => '1') AFTER 0.4 ns, (OTHERS => '0') AFTER 1.1 ns, (OTHERS => '1') AFTER 1.4 ns, (OTHERS => '0') AFTER 1.7 ns, (OTHERS => '1') AFTER 1.9 ns;
	--D <= "0000";--, "1111" AFTER 0.4 ns; --AFTER 0.4 ns, (OTHERS => '0') AFTER 1.1 ns, (OTHERS => '1') AFTER 1.4 ns, (OTHERS => '0') AFTER 1.7 ns, (OTHERS => '1') AFTER 1.9 ns;
	PCLOCK : PROCESS (CK)
	BEGIN
		CK <= NOT(CK) AFTER 0.5 ns;
	END PROCESS;

END TEST;