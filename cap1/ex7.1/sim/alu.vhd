LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.constants.ALL;
USE WORK.alu_type.ALL;

ENTITY ALU IS
  GENERIC (N : INTEGER := numBit);
  PORT (
    FUNC : IN TYPE_OP;
    DATA1, DATA2 : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    OUTALU : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0));
END ALU;

ARCHITECTURE BEHAVIOR OF ALU IS

BEGIN

  P_ALU : PROCESS (FUNC, DATA1, DATA2)
    -- complete all the requested functions

	-- we use the operation between std_logic_vector instead convert in unsigned because we are able to use IEEE.std_logic_unsigned.ALL library.

  BEGIN
    CASE FUNC IS
      WHEN ADD => OUTALU <= DATA1 + DATA2;
      WHEN SUB => OUTALU <= DATA1 - DATA2;
      WHEN MULT => OUTALU <= DATA1 ((N/2) - 1 DOWNTO 0) * DATA2 ((N/2) - 1 DOWNTO 0);
      WHEN BITAND => OUTALU <= DATA1 AND DATA2; -- bitwise operations
      WHEN BITOR => OUTALU <= DATA1 OR DATA2; 
      WHEN BITXOR => OUTALU <= DATA1 XOR DATA2;
      WHEN FUNCLSL => OUTALU <= DATA1(N - 2 DOWNTO 0) & '0'; -- logical shift left, HELP: use the concatenation operator &  
      WHEN FUNCLSR => OUTALU <= '0' & DATA1(N - 1 DOWNTO 1); -- logical shift right  
      WHEN FUNCRL => OUTALU <= DATA1(N - 2 DOWNTO 0) & DATA1(N - 1); -- rotate left
      WHEN FUNCRR => OUTALU <= DATA1(0) & DATA1(N - 1 DOWNTO 1); -- rotate right
      WHEN OTHERS => NULL;

	-- here some example of implementation of shift/rotate commands with the number of position to be shifted

    -- WHEN FUNCLSL  => OUTALU <= std_logic_vector( SHIFT_LEFT(unsigned(DATA1), to_integer(unsigned(DATA2))) );
    -- WHEN FUNCLSR  => OUTALU <= std_logic_vector( SHIFT_RIGHT(unsigned(DATA1), to_integer(unsigned(DATA2))) );
    -- WHEN FUNCRL   => OUTALU <= std_logic_vector( ROTATE_LEFT(unsigned(DATA1),  to_integer(unsigned(DATA2))) ); -- rotate left
    -- WHEN FUNCRR   => OUTALU <= std_logic_vector( ROTATE_RIGHT(unsigned(DATA1), to_integer(unsigned(DATA2))) ); -- rotate right
    END CASE;

  END PROCESS P_ALU;

END BEHAVIOR;

CONFIGURATION CFG_ALU_BEHAVIORAL OF ALU IS
  FOR BEHAVIOR
  END FOR;
END CFG_ALU_BEHAVIORAL;
