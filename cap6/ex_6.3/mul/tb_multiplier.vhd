LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY MULTIPLIER_tb IS
END MULTIPLIER_tb;
ARCHITECTURE TEST OF MULTIPLIER_tb IS
  CONSTANT numBit : NATURAL := 8; -- :=8  --:=16    

  --  input	 
  SIGNAL A_mp_i : STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL B_mp_i : STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0) := (OTHERS => '0');

  -- output
  SIGNAL Y_mp_i : STD_LOGIC_VECTOR(numBit * 2 - 1 DOWNTO 0);
  -- MUL component declaration
  --
  --
  COMPONENT BOOTHMUL
    GENERIC (NBIT : INTEGER);
    PORT (
      A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      S : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0)
    );
  END COMPONENT;

BEGIN

  -- MUL instantiation
  --
  --
  MUL : BOOTHMUL
  GENERIC MAP(NBIT => numBit)
  PORT MAP(A => A_mp_i, B => B_mp_i, S => Y_mp_i);
  -- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------

  test : PROCESS
  BEGIN

    -- cycle for operand A
    NumROW : FOR i IN 0 TO 2 ** (NumBit - 1) LOOP

      -- cycle for operand B
      NumCOL : FOR i IN 0 TO 2 ** (NumBit - 1) LOOP
        WAIT FOR 10 ns;
        B_mp_i <= B_mp_i + '1';
      END LOOP NumCOL;

      A_mp_i <= A_mp_i + '1';
    END LOOP NumROW;

    WAIT;
  END PROCESS test;
END TEST;

CONFIGURATION MULTEST OF MULTIPLIER_tb IS
  FOR TEST
  END FOR;
END MULTEST;