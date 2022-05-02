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
library ieee;
  USE IEEE.std_logic_1164.ALL;
  USE IEEE.numeric_std.ALL;

library WORK;
  USE WORK.COMM_PKG.ALL;

entity TB_WRF is
end TB_WRF;

architecture TEST of TB_WRF is



  component WRF is
    generic (
      DATA_W        : integer;  -- Register Data Width
      N_WIN         : integer;  -- Number of windows
      N_REG_PER_WIN : integer;  -- Nubmer of register per window
      N_GLOBAL_REG  : integer   -- Number of register in the global "window"
    );
    port ( 
      CLK            : IN std_logic;                                                                      -- Rising Edge Clock
      RESET          : IN std_logic;                                                                      -- Positive RESET
      -- RF Ports
      ENABLE         : IN std_logic;                                                                      -- Enable Register File
      RD1_EN         : IN std_logic;                                                                      -- Read Enable on RADDR1/DOUT1
      RD2_EN         : IN std_logic;                                                                      -- Read Enable on RADDR2/DOUT2
      WR_EN          : IN std_logic;                                                                      -- Write Enable on WADDR/DIN
      WADDR          : IN std_logic_vector(addr_w_virt(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG) - 1 downto 0);   -- Write address
      RADDR1         : IN std_logic_vector(addr_w_virt(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG) - 1 downto 0);   -- Read address 1
      RADDR2         : IN std_logic_vector(addr_w_virt(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG) - 1 downto 0);   -- Read address 2
      DIN            : IN std_logic_vector(DATA_W - 1 downto 0);                                          -- Data input (written on WADDR)
      DOUT1          : OUT std_logic_vector(DATA_W - 1 downto 0);                                         -- Data output 1 (from RADDR1)
      DOUT2          : OUT std_logic_vector(DATA_W - 1 downto 0);                                         -- Data output 2 (from RADDR2)
      -- Control Signal
      TRNSF_CPLT_ACK : IN std_logic;                                                                      -- Memory to register (or viceversa) data transfer complete ack. 
                                                                                                          -- IMOPRTANT the above signal must be a 1CLK period impulse
      OP             : IN wrf_op;                                                                         -- Issued Operation
      STATE          : OUT wrf_state;                                                                     -- state of WRF
      CWP            : OUT std_logic_vector(addr_w_phys(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG)-1 downto 0);    -- Current Window Pointer
      SWP            : OUT std_logic_vector(addr_w_phys(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG)-1 downto 0)     -- Save Window Pointer
    );
  end component WRF;

  
  constant DATA_W        : INTEGER := 8; -- 8 Bit wide registers

  constant N_GLOBAL_REG  : INTEGER := 5;
  constant N_REG_PER_WIN : INTEGER := 5;
  constant N_WIN         : INTEGER := 3;

  constant ADDR_W       : integer :=addr_w_virt(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG);


  constant IN_VADDR     : integer := (0*N_REG_PER_WIN);
  constant LOCAL_VADDR  : integer := (1*N_REG_PER_WIN);
  constant OUT_VADDR    : integer := (2*N_REG_PER_WIN);
  constant GLOBAL_VADDR : integer := (3*N_REG_PER_WIN);
    
  signal clk   : STD_LOGIC := '0';
  signal reset : STD_LOGIC;

  -- RF Ports
  signal enable     : std_logic; 
  signal rd1_en     : std_logic; 
  signal rd2_en     : std_logic; 
  signal wr_en      : std_logic; 
  signal waddr      : std_logic_vector(addr_w_virt(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG) - 1 downto 0); 
  signal raddr1     : std_logic_vector(addr_w_virt(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG) - 1 downto 0); 
  signal raddr2     : std_logic_vector(addr_w_virt(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG) - 1 downto 0); 
  signal din        : std_logic_vector(DATA_W - 1 downto 0); 
  signal dout1      : std_logic_vector(DATA_W - 1 downto 0); 
  signal dout2      : std_logic_vector(DATA_W - 1 downto 0); 

  signal trnsf_cplt_ack : std_logic;
  signal op             : wrf_op;
  signal state          : wrf_state;
  signal cwp            : std_logic_vector(addr_w_phys(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG)-1 downto 0); 
  signal swp            : std_logic_vector(addr_w_phys(N_WIN,N_REG_PER_WIN,N_GLOBAL_REG)-1 downto 0); 

  function return_addr(addr: integer) return std_logic_vector is
  begin
      return std_logic_vector(to_unsigned(addr,ADDR_W));
  end function;

  function return_data(addr: integer) return std_logic_vector is
  begin
      return std_logic_vector(to_unsigned(addr,DATA_W));
  end function;
begin

  U_WRF: WRF 
    generic map(
      DATA_W         => DATA_W, 
      N_WIN          => N_WIN, 
      N_REG_PER_WIN  => N_REG_PER_WIN, 
      N_GLOBAL_REG   => N_GLOBAL_REG 
    )
    port map( 
      CLK            => clk,
      RESET          => reset,
      ENABLE         => enable,
      RD1_EN         => rd1_en,
      RD2_EN         => rd2_en,
      WR_EN          => wr_en,
      WADDR          => waddr,
      RADDR1         => raddr1,
      RADDR2         => raddr2,
      DIN            => din,
      DOUT1          => dout1,
      DOUT2          => dout2,
      TRNSF_CPLT_ACK => trnsf_cplt_ack,
      OP             => op,
      STATE          => state,
      CWP            => cwp,
      SWP            => swp           
    );

  clk <= not clk after 1 ns;

  TEST : process is
  begin
    reset <= '0';
    op <= WRF_NO_OP;
    ENABLE <= '0';
    rd1_en <= '0';
    rd2_en <= '0';
    wr_en  <= '0';
    waddr  <= (others =>'0');
    raddr1 <= (others =>'0');
    raddr2 <= (others =>'0');
    din    <= (others =>'0');

    wait for 2 ns;
    reset <= '1';
    wait for 2 ns;
    reset <= '0';

    ENABLE <= '1';

    rd1_en<='1';
    raddr1<=return_addr(GLOBAL_VADDR);
    rd2_en<='1';
    raddr2<=return_addr(IN_VADDR);
	
    wr_en<='1';
    waddr<=return_addr(IN_VADDR);
    din<=x"AA";
	
    wait for 2 ns;

    wr_en<='1';
	  waddr<=return_addr(OUT_VADDR);
    din<=x"44";

    wait for 2 ns;

    wr_en<='1';
    waddr<=return_addr(GLOBAL_VADDR);
    din<=x"55";

    wait for 2 ns;
    wr_en<='0';
    OP <= WRF_OPN_CTX;  -- change to CTX 1
    wait for 2 ns;      -- in CTX1
    OP <= WRF_NO_OP; 
    raddr1<=return_addr(IN_VADDR); -- should return x"44"

    wr_en<='1';
    waddr<=return_addr(OUT_VADDR);
    din<=x"BB";

    if (state /= READY_s) then
      wr_en<='0';
      OP <= WRF_NO_OP;   -- change to CTX2
      wait until STATE = READY_s; -- for eventual spill/fill
    end if;

    wait for 2 ns;
    wr_en<='0';
    OP <= WRF_OPN_CTX;   -- change to CTX2

    if (state /= READY_s) then
      wr_en<='0';
      OP <= WRF_NO_OP;   
      wait until STATE = READY_s; -- for eventual spill/fill
    end if;

    wait for 2 ns;
    OP <= WRF_NO_OP;  -- in CTX2
    raddr1<=return_addr(IN_VADDR); -- should return x"BB"

    wr_en<='1';
    waddr<=return_addr(OUT_VADDR);
    din<=x"CC";

    if (state /= READY_s) then
      wr_en<='0';
      OP <= WRF_NO_OP;   
      wait until STATE = READY_s; -- for eventual spill/fill
    end if;

    wait for 2 ns;
    wr_en<='0';
    OP <= WRF_OPN_CTX;   -- change to CTX3

    if (state /= READY_s) then
      wr_en<='0';
      OP <= WRF_NO_OP;   
      wait until STATE = READY_s; -- for eventual spill/fill
    end if;
    wait for 2 ns;
    OP <= WRF_NO_OP;  -- in CTX3
    raddr1<=return_addr(IN_VADDR); 

    wr_en<='1';
    waddr<=return_addr(OUT_VADDR);
    din<=x"DD";

    wait for 2 ns;
    if (state /= READY_s) then
      wr_en<='0';
      OP <= WRF_NO_OP;   
      wait until STATE = READY_s; -- for eventual spill/fill
    end if;

    wr_en<='0';
    OP <= WRF_OPN_CTX;   -- change to CTX4

    wait for 2 ns;
    OP <= WRF_NO_OP;  
    raddr1<=return_addr(IN_VADDR); 

    wr_en<='1';
    waddr<=return_addr(OUT_VADDR);
    din<=x"EE";

    wait for 2 ns;
    if (state /= READY_s) then
      wr_en<='0';
      OP <= WRF_NO_OP;   
      wait until STATE = READY_s; -- for eventual spill/fill
      OP <= WRF_OPN_CTX;   -- In CTX4
      wr_en <= '1';
    else
      wr_en<='0';
      OP <= WRF_NO_OP;
    end if;
    wait for 2 ns;
    wr_en<='0';
    OP <= WRF_NO_OP; -- close CTX
    wait for 2 ns;
    if (state /= READY_s) then -- if context was not closed
      OP <= WRF_NO_OP;   
      wait until STATE = READY_s; -- for eventual spill/fill
      OP <= WRF_OPN_CTX;   -- retry closing the context
    else
      wr_en<='0';
      OP <= WRF_NO_OP;
    end if;
    wait for 2 ns;
    if (state /= READY_s) then -- if context was not closed
      OP <= WRF_NO_OP;   
      wait until STATE = READY_s; -- for eventual spill/fill
      OP <= WRF_OPN_CTX;   -- retry closing the context
    else
      wr_en<='0';
      OP <= WRF_NO_OP;
    end if;
    wait for 1 ns;
    OP <= WRF_NO_OP; 
    wait for 1 ns;
    OP <= WRF_CLS_CTX; 
    wait ;
  end process;

  MEM_TRANSF_P: process
  begin
    trnsf_cplt_ack <= '0';
    wait until state = FILL_s OR state = SPILL_s;
    report "transfer to/from memory started";
    wait for 2 ns;
    report "transfer to/from memory complete";
    trnsf_cplt_ack <= '1';
    wait for 2 ns;
  end process;
END TEST;

configuration CFG_TB_WRF of TB_WRF is
  for TEST
    for all : WRF
      use configuration WORK.CFG_WRF_BEHAVIOURAL;
    end for;
  end for;
end CFG_TB_WRF;
