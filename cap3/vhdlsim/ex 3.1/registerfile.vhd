library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.all;
use WORK.all;
use IEEE.math_real.all;

entity register_file is
 GENERIC(
    ADDR_W : INTEGER := integer(log2(32.0));
	DATA_W	: INTEGER := 64
 );
 port ( 
   CLK: 		IN std_logic;
   RESET: 	IN std_logic;
	 ENABLE: 	IN std_logic;
	 RD1: 		IN std_logic;
	 RD2: 		IN std_logic;
	 WR: 		IN std_logic;
	 ADD_WR: 	IN std_logic_vector(ADDR_W - 1 downto 0);
	 ADD_RD1: 	IN std_logic_vector(ADDR_W - 1 downto 0);
	 ADD_RD2: 	IN std_logic_vector(ADDR_W - 1 downto 0);
	 DATAIN: 	IN std_logic_vector(DATA_W - 1 downto 0);
   OUT1: 		OUT std_logic_vector(DATA_W - 1 downto 0);
	 OUT2: 		OUT std_logic_vector(DATA_W - 1 downto 0)
 );
end register_file;

architecture A of register_file is

    -- suggested structures
    subtype REG_ADDR is natural range 0 to ((2 ** ADDR_W) - 1) ; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(DATA_W - 1 downto 0); 
	signal REGISTERS : REG_ARRAY; 

	
begin 
-- write your RF code 

	Reg: PROCESS(CLK)
	BEGIN
		IF CLK'EVENT AND CLK= '1' THEN
			IF RESET = '1' THEN
				--reset signals
				FOR i IN REG_ARRAY'RANGE LOOP 
					REGISTERS(i) <= (OTHERS => '0');
				END LOOP; 
				--OUT1 <= (OTHERS => '0');
				--OUT2 <= (OTHERS => '0');
			ELSIF ENABLE = '1' THEN 
				--writing 
				IF WR = '1' THEN
					REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
				END IF;
				--reading out1
				IF RD1 = '1' THEN
					OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
				END IF;
				--reading out2
				IF RD2 = '1' THEN
					OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
				END IF;	 
			END IF;	 
		END IF;
	END PROCESS Reg;

end A;

----


configuration CFG_RF_BEH of register_file is
  for A
  end for;
end configuration;
