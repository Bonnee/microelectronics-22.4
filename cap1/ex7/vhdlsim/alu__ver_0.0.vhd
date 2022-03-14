library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use WORK.constants.all;
use WORK.alu_type.all;

entity ALU is
  generic (N : integer := numBit);
  port 	 ( FUNC: IN TYPE_OP;
           DATA1, DATA2: IN std_logic_vector(N-1 downto 0);
           OUTALU: OUT std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is

begin

P_ALU: process (FUNC, DATA1, DATA2)
  -- complete all the requested functions

  begin
    case FUNC is
	when ADD 		=> OUTALU <= DATA1 + DATA2; 
	when SUB 		=> OUTALU <= DATA1 - DATA2;
	when MULT 		=> OUTALU <= std_logic_vector(to_unsigned(to_integer(unsigned(DATA1((N/2)-1 downto 0))*unsigned(DATA2((N/2) -1 downto 0))),N)) ;
	when BITAND 	=> OUTALU <= DATA1 AND DATA2; -- bitwise operations
	when BITOR 		=> OUTALU <= DATA1 OR DATA2;
	when BITXOR 	=> OUTALU <= DATA1 XOR DATA2;
	when FUNCLSL 	=> OUTALU <= DATA1(N-1-(unsigned(DATA2) downto 0 ) & others=> ´0´ ; -- logical shift left, HELP: use the concatenation operator &  
	when FUNCLSR 	=> OUTALU <= others=> ´0´ & DATA1(N-1 downto (unsigned(DATA2)) ); -- logical shift right
	when FUNCRL 	=> OUTALU <= ; -- rotate left
	when FUNCRR 	=> OUTALU <= ; -- rotate right
	when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
