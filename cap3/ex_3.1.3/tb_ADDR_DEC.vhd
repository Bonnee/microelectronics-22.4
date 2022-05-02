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

ENTITY TB_ADDR_DEC IS
END TB_ADDR_DEC;

ARCHITECTURE TEST OF TB_ADDR_DEC IS
  constant N:integer:=5;
  constant M:integer:=5;
  constant F:integer:=4;

  constant rf_size_in_reg     : integer := (2*N*F)+M; -- register file size in number of registers
  constant window_size_in_reg : integer := (3*N)+M;

  constant test1 : integer := integer(0.8);

  signal virtaddr : integer range 0 to (window_size_in_reg-1);
  signal outaddr  : integer range 0 to (rf_size_in_reg-1);
  signal cwp      : integer range 0 to (2*(F-1)*N);

  signal virtaddr_s : std_logic_vector(addr_w_virt(F,N,M)-1 downto 0); -- Virtual Address
  signal outaddr_s  : std_logic_vector(addr_w_phys(F,N,M)-1 downto 0); -- Physical Address
  signal cwp_s      : std_logic_vector(addr_w_phys(F,N,M)-1 downto 0);    

BEGIN
  virtaddr_s <= std_logic_vector(to_unsigned(virtaddr,virtaddr_s'length));
  cwp_s      <= std_logic_vector(to_unsigned(cwp,cwp_s'length));

  ADDRDEC : entity work.ADDR_DEC(Behavioural2)
    GENERIC MAP(
      N_REG_PER_WIN => N,
      N_GLOBAL_REG=>M,
      N_WIN => F
    )
    PORT MAP(
      VIRT_ADDR => virtaddr_s,
      CWP => cwp_s,
      PHY_ADDR => outaddr_s
    );

  TEST : process is
  begin
    virtaddr <= 0;
    cwp <= 0;
    wait for 1 ns;
    virtaddr <= 2;
    cwp <= 0;
    wait for 1 ns;
    -- global[0]
    virtaddr <= 3*N;
    wait for 1 ns;
    -- last window
    virtaddr <= 0;
    cwp <= (N*(F-1)*2);
    wait for 1 ns;
    virtaddr <= 2*N;
    wait for 1 ns;
    virtaddr <= (3*N)-1;
    wait for 1 ns;
    virtaddr <= 3*N;
    wait for 1 ns;
  end process;
END TEST;

--CONFIGURATION CFG_TEST OF TB_WRF_CU IS
--  FOR TEST
--    FOR ALL : WRF_CU
--      USE CONFIGURATION WORK.CFG_WRF_CU_BEHAVIOURAL;
--    END FOR;
--  END FOR;
--END CFG_TEST;
