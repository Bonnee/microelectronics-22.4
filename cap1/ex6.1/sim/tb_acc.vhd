-------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.constants.ALL;
-------------------------------------------------------------------------------

ENTITY tb_acc IS

END tb_acc;

-------------------------------------------------------------------------------

ARCHITECTURE TEST OF tb_acc IS

  COMPONENT ACC
    GENERIC (NBIT : INTEGER);
    PORT (
      A : IN STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0);
      CLK : IN STD_LOGIC;
      RST_n : IN STD_LOGIC;
      ACCUMULATE : IN STD_LOGIC;
      --ACC_EN_n : IN STD_LOGIC; -- optional use of the enable
      Y : OUT STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0));
  END COMPONENT;

  SIGNAL A_i : STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0);
  SIGNAL B_i : STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0);
  SIGNAL CLK_i : STD_LOGIC := '0';
  SIGNAL RST_n_i : STD_LOGIC;
  SIGNAL ACCUMULATE_i : STD_LOGIC;
  --SIGNAL ACC_EN_n_i : STD_LOGIC; -- optional
  SIGNAL Y_i : STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0);

BEGIN -- TEST

  DUT : ACC
  GENERIC MAP(NBIT => 32)
  PORT MAP(
    A => A_i,
    B => B_i,
    CLK => CLK_i,
    RST_n => RST_n_i,
    ACCUMULATE => ACCUMULATE_i,
    --ACC_EN_n => ACC_EN_n_i, -- optional
    Y => Y_i);
  p_clock : PROCESS (CLK_i)

  BEGIN -- process p_clock
    CLK_i <= NOT(CLK_i) AFTER 6 ns;
  END PROCESS p_clock;

  test : PROCESS

  BEGIN -- process test

    A_i <= "00000000000000000000000000000001";
    B_i <= "00000000000000000000000000000010";
    RST_n_i <= '0';
    --ACC_EN_n_i <= '0'; -- optional
    ACCUMULATE_i <= '1'; -- seleziona ingresso FEEDBACK del mux

    WAIT FOR 12 ns;

    A_i <= "00000000000000000000000000000001";
    B_i <= "00000000000000000000000000000010";
    RST_n_i <= '1';
    --ACC_EN_n_i <= '0'; -- optional
    ACCUMULATE_i <= '1'; -- seleziona ingresso FEEDBACK del mux

    WAIT FOR 7 ns;

    A_i <= "00000000000000000000000000000001";
    B_i <= "00000000000000000000000000000010";
    RST_n_i <= '1';
    --ACC_EN_n_i <= '0'; -- optional
    ACCUMULATE_i <= '0'; -- seleziona ingresso B del mux

    WAIT FOR 12 ns;

    A_i <= "00000000000000000000000000010000";
    B_i <= "00000000000000000000000000000010";
    RST_n_i <= '1';
    --ACC_EN_n_i <= '0';
    ACCUMULATE_i <= '1'; -- seleziona ingresso FEEDBACK del mux

    WAIT FOR 19 ns;

    A_i <= "00000000000000000000000000010000";
    B_i <= "00000000000000000000000000000010";
    RST_n_i <= '1';
    --ACC_EN_n_i <= '1'; --- optional
    ACCUMULATE_i <= '1'; -- seleziona ingresso FEEDBACK del mux

    WAIT FOR 20 ns;

    A_i <= "00000000000000000000000000010000";
    B_i <= "00000000000000000000000000000010";
    RST_n_i <= '1';
    --ACC_EN_n_i <= '0'; -- optional
    ACCUMULATE_i <= '1';

    WAIT FOR 5 ns;

    A_i <= "00000000000000000000000000010000";
    B_i <= "00000000000000000000000100000000";
    RST_n_i <= '1';
    --ACC_EN_n_i <= '0'; -- optional
    ACCUMULATE_i <= '0';

    WAIT;

  END PROCESS test;

END TEST;

-------------------------------------------------------------------------------
CONFIGURATION CFG_TESTACC OF tb_acc IS
  FOR TEST
    FOR DUT : ACC
      USE CONFIGURATION WORK.CFG_ACC_STRUCTURAL;
    END FOR;
  END FOR;
END CFG_TESTACC;