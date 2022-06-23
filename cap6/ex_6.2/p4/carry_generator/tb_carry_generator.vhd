library IEEE; 
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is


--	component CARRY_GENERATOR is
--		generic (
--			NBIT :		integer := 32;
--			NBIT_PER_BLOCK: integer := 4);
--		port (
--			A :		in	std_logic_vector(NBIT-1 downto 0);
--			B :		in	std_logic_vector(NBIT-1 downto 0);
--			Cin :	in	std_logic;
--			Co :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
--	end component;

  constant NBIT         : integer := 16;
  constant CARRY_NBIT   : integer := 4;

  signal A      : std_logic_vector(NBIT-1 downto 0);
  signal B      : std_logic_vector(NBIT-1 downto 0);
  signal Cin    : std_logic;
  signal Co     : std_logic_vector((NBIT/CARRY_NBIT)-1 downto 0);

begin

  U_CARRY_GENERATOR: entity work.CARRY_GENERATOR(STRUCTURAL) 
    generic map (
      NBIT           => NBIT,
      NBIT_PER_BLOCK => CARRY_NBIT
    )
    port map (
      A   => A,
      B   => B,
      Cin => Cin,
      Co  => Co
    );

  TEST_PROC: process
  begin
      A   <= std_logic_vector(to_unsigned(45,A'length));
      B   <= std_logic_vector(to_unsigned(100,B'length));
      Cin <= '0';

      wait for 10 ns;

      A   <= std_logic_vector(to_unsigned(11184810,A'length)); -- 101010101010101010101010
      B   <= std_logic_vector(to_unsigned(16777215,B'length)); -- 111111111111111111111111
      Cin <= '0';
  end process TEST_PROC;
end TEST;
