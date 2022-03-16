library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
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
	when MULT 		=> OUTALU <= DATA1 ((N/2)-1 downto 0)* DATA2 ((N/2)-1 downto 0);
	when BITAND 	=> OUTALU <= DATA1 AND DATA2; -- bitwise operations
	when BITOR 		=> OUTALU <= DATA1 OR DATA2;
	when BITXOR 	=> OUTALU <= DATA1 XOR DATA2;
	when FUNCLSL 	=> OUTALU <= DATA1(N-2 downto 0) & '0' ; -- logical shift left, HELP: use the concatenation operator &  
	when FUNCLSR 	=> OUTALU <= '0' & DATA1(N-1 downto 1); -- logical shift right  
	when FUNCRL 	=> OUTALU <= DATA1(N-2 downto 0) & DATA1(N-1); -- rotate left
	when FUNCRR 	=> OUTALU <= DATA1(0) & DATA1(N-1 downto 1); -- rotate right
	when others => null;
	--when FUNCLSL 	=> OUTALU <= 
    --                           (
    --                              ( N-1 downto to_integer( unsigned(DATA2) ) )  => DATA1( to_integer(N-1-unsigned(DATA2)) downto 0 ) , 
    --                              others=> ´0´
    --                           ); -- logical shift left, HELP: use the          concatenation operator &
	--when FUNCLSR 	=> OUTALU <= (
    --                              others => '0', 
    --                              (to_integer(unsigned(DATA2)-1) downto 0) => DATA1((unsigned(DATA2)-1 downto 0)
    --                           );
	--when FUNCRL 	=> OUTALU <= (
    --                              ( N-1 downto to_integer( unsigned(DATA2) ) )  => DATA1( to_integer(N-1-unsigned(DATA2)) downto 0 ) , 
    --                              ( N-1 downto to_integer(N-1-unsigned(DATA2)) )  => DATA1( to_integer(N-1-unsigned(DATA2)) downto 0 ) , 
    --                              others=> ´0´
    --                           ); -- logical shift left, HELP: use the          concatenation operator &
	--when FUNCRR 	=> OUTALU <= (
    --                              others => '0', 
    --                              (to_integer(unsigned(DATA2)-1) downto 0) => DATA1((unsigned(DATA2)-1 downto 0)
    --                           );

	--when FUNCRL 	=> OUTALU <= DATA1 =\(N-1 downto N-unsigned(DATA2)) & DATA1(N-1-unsigned(DATA2) downto 0); -- rotate left
	--when FUNCRR 	=> OUTALU <= DATA1 (N-1-unsigned(DATA2) downto 0) & DATA1(N-1 downto N-unsigned(DATA2)); -- rotate right    

	--when FUNCLSL 	=> OUTALU <= std_logic_vector( unsigned(DATA1) sll unsigned(DATA2) );
	--when FUNCLSR 	=> OUTALU <= std_logic_vector( unsigned(DATA1) slr unsigned(DATA2) );
	--when FUNCLSR 	=> OUTALU <= others=> ´0´ & DATA1(N-1 downto (unsigned(DATA2)) ); -- logical shift right
	--when FUNCRL 	=> OUTALU <= DATA1 =\(N-1 downto N-unsigned(DATA2)) & DATA1(N-1-unsigned(DATA2) downto 0); -- rotate left
	--when FUNCRR 	=> OUTALU <= DATA1 (N-1-unsigned(DATA2) downto 0) & DATA1(N-1 downto N-unsigned(DATA2)); -- rotate right    
	end case; 

  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
