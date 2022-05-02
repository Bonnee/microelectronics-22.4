--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini [simone.ruffini@tutanota.com]
-- 
-- Create Date:     Tue Apr 26 11:53:53 CEST 2022
-- Design Name:     TB_WRF_CU
-- Module Name:     TB_WRF_CU.vhd
-- Project Name:    Windowed Register File
-- Description:     test bech for the windowed register file control unit 
--                  
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

LIBRARY WORK;
USE WORK.COMM_PKG.ALL;

ENTITY TB_WRF_CU IS
END TB_WRF_CU;

ARCHITECTURE TEST OF TB_WRF_CU IS

  CONSTANT N_GLOBAL_REG  : INTEGER := 5;
  CONSTANT N_REG_PER_WIN : INTEGER := 5;
  CONSTANT N_WIN : INTEGER := 4;

  SIGNAL clk   : STD_LOGIC;
  SIGNAL reset : STD_LOGIC;

  signal trnsf_cplt_ack : std_logic;
  signal op             : wrf_op;
  signal state          : wrf_state;
  signal cwp            : std_logic_vector(addr_w_phys(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG)-1 downto 0); 
  signal swp            : std_logic_vector(addr_w_phys(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG)-1 downto 0); 

BEGIN
  U_WRF_CU : entity work.WRF_CU(Behavioural)
    GENERIC MAP(
      N_GLOBAL_REG  => N_GLOBAL_REG,
      N_REG_PER_WIN => N_REG_PER_WIN,
      N_WIN         => N_WIN
    )
    PORT MAP(
      CLK => clk,
      RESET => reset,
      TRNSF_CPLT_ACK => trnsf_cplt_ack,
      OP => op,
      STATE => state,
      CWP => cwp,
      SWP => swp
    );

  P_CLK : process is
  begin
    clk <= '1';
    wait for 500 ps;
    clk <= '0';
    wait for 500 ps;
  end process;

  TEST : process is
  begin
    reset <= '0';
    op <= WRF_NO_OP;
    wait for 1 ns;
    reset <= '1';
    wait for 1 ns;
    reset <= '0';
    OP <= WRF_OPN_CTX;  -- ok
    wait for 1 ns;
    OP <= WRF_NO_OP; 
    wait for 1 ns;
    OP <= WRF_OPN_CTX;  -- ok
    wait for 1 ns;
    OP <= WRF_NO_OP; 
    wait for 2 ns;
    OP <= WRF_OPN_CTX;  -- spill
    wait for 1 ns;
    OP <= WRF_NO_OP; 
    wait for 1 ns;
    OP <= WRF_OPN_CTX;  -- ok
    wait for 1 ns;
    OP <= WRF_NO_OP; 
    wait for 1 ns;
    OP <= WRF_CLS_CTX; 
    wait for 1 ns;
    OP <= WRF_NO_OP; 
    wait for 1 ns;
    OP <= WRF_CLS_CTX; 
    wait for 1 ns;
    OP <= WRF_NO_OP; 
    wait for 1 ns;
    OP <= WRF_CLS_CTX; 
    wait ;
  end process;

  MEM_TRANSF_P: process (state)
  begin
    if (state = FILL_s OR state = SPILL_s) then
      trnsf_cplt_ack <= '1';
    else
      trnsf_cplt_ack <= '0';
    end if;
  end process;
END TEST;
