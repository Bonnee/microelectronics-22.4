library ieee;
  use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all; -- DO NOT USE THIS HARMFUL LIBRARY
--use ieee.std_logic_arith.all;    -- DO NOT USE THIS HARMFUL LIBRARY
  use ieee.numeric_std.all;
library work;
  --use work.myTypes.all;
  use work.COMM_PKG.all;

entity cu_test is
end cu_test;

architecture TEST of cu_test is

  component CU_FSM
    port (
      -- FIRST PIPE STAGE OUTPUTS
      EN1    : out std_logic;               -- enables the register file and the pipeline registers
      RF1    : out std_logic;               -- enables the read port 1 of the register file
      RF2    : out std_logic;               -- enables the read port 2 of the register file
      WF1    : out std_logic;               -- enables the write port of the register file
      -- SECOND PIPE STAGE OUTPUTS
      EN2    : out std_logic;               -- enables the pipe registers
      S1     : out std_logic;               -- input selection of the first multiplexer
      S2     : out std_logic;               -- input selection of the second multiplexer
      ALU1   : out std_logic;               -- alu control bit
      ALU2   : out std_logic;               -- alu control bit
      -- THIRD PIPE STAGE OUTPUTS
      EN3    : out std_logic;               -- enables the memory and the pipeline registers
      RM     : out std_logic;               -- enables the read-out of the memory
      WM     : out std_logic;               -- enables the write-in of the memory
      S3     : out std_logic;               -- input selection of the multiplexer
      -- INPUTS
      OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
      FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
      Clk : in std_logic;
      Rst : in std_logic);                  -- Active Low
  end component;

  signal Clock: std_logic := '0';
  signal Reset: std_logic := '1';

  signal cu_opcode_i: std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');
  signal cu_func_i: std_logic_vector(FUNC_SIZE - 1 downto 0) := (others => '0');
  signal EN1_i, RF1_i, RF2_i, WF1_i, EN2_i, S1_i, S2_i, ALU1_i, ALU2_i, EN3_i, RM_i, WM_i, S3_i: std_logic := '0';
  signal cw: std_logic_vector(CW_SIZE - 1 downto 0);
  signal result : std_logic;

  function test_cw_stage(
    curr_cw     : std_logic_vector(CW_SIZE - 1 downto 0);
    expected_cw : std_logic_vector(CW_SIZE - 1 downto 0); 
    stage       : integer range 0 to 2
  ) return std_logic is
    variable ret : std_logic := '1';
    variable cw_a : std_logic_vector(CW_SIZE - 1 downto 0) := (others => '0');
    variable cw_b : std_logic_vector(CW_SIZE - 1 downto 0) := (others => '0'); 
  begin
    case stage is
      when 0 =>
        cw_a :=( PEN1 => curr_cw(PEN1), PRF1 => curr_cw(PRF1), PRF2 => curr_cw(PRF2), others =>'0');
        cw_b :=( PEN1 => expected_cw(PEN1), PRF1 => expected_cw(PRF1), PRF2 => expected_cw(PRF2), others =>'0');
      when 1 =>
        cw_a :=( PEN2 => curr_cw(PEN2), PS1 => curr_cw(PS1), PS2 => curr_cw(PS2), PALU1 => curr_cw(PALU1), PALU2 => curr_cw(PALU2), others =>'0');
        cw_b :=( PEN2 => expected_cw(PEN2), PS1 => expected_cw(PS1), PS2 => expected_cw(PS2), PALU1 => expected_cw(PALU1), PALU2 => expected_cw(PALU2), others =>'0');
      when 2 =>
        cw_a :=( PEN3 => curr_cw(PEN3), PRM => curr_cw(PRM), PWM => curr_cw(PWM), PS3 => curr_cw(PS3), PWF1 => curr_cw(PWF1), others =>'0');
        cw_b :=( PEN3 => expected_cw(PEN3), PRM => expected_cw(PRM), PWM => expected_cw(PWM), PS3 => expected_cw(PS3), PWF1 => expected_cw(PWF1), others =>'0');
    end case;
    if cw_a /= cw_b then ret:= '0'; end if;
    return ret;
  end function;

  function test_result(
    opcode: std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    func  : std_logic_vector(FUNC_SIZE - 1 downto 0);
    cw    : std_logic_vector(CW_SIZE - 1 downto 0);
    stage : integer range 0 to 2
  ) return std_logic is 
    variable ret : std_logic := '1';
  begin
    case to_integer(unsigned(opcode)) is 
      when RTYPE_OPCODE_i  =>
        case to_integer(unsigned(func)) is
          when ADD_FUNC_i => if test_cw_stage(cw,RTYPE_ADD_CW,stage) /='1' then report "Error on OPCODE RTYPE_OPCODE FUNC ADD_FUNC in stage="& integer'image(stage) severity error; ret:='0'; end if;
          when SUB_FUNC_i => if test_cw_stage(cw,RTYPE_SUB_CW,stage) /='1' then report "Error on OPCODE RTYPE_OPCODE FUNC SUB_FUNC in stage="& integer'image(stage) severity error; ret:='0'; end if;
          when AND_FUNC_i => if test_cw_stage(cw,RTYPE_AND_CW,stage) /='1' then report "Error on OPCODE RTYPE_OPCODE FUNC AND_FUNC in stage="& integer'image(stage) severity error; ret:='0'; end if;
          when OR_FUNC_i  => if test_cw_stage(cw,RTYPE_OR_CW ,stage) /='1' then report "Error on OPCODE RTYPE_OPCODE FUNC OR_FUNC  in stage="& integer'image(stage) severity error; ret:='0'; end if;
          when others => report "Error Unable to find this FUNC: "& Integer'image(to_integer(unsigned(func))) severity failure; 
        end case;
      when ADDI1_OPCODE_i	 => if test_cw_stage(cw,ITYPE_ADDI1_CW ,stage) /='1' then report "Error on OPCODE ADDI1_OPCODE in stage=" & integer'image(stage) severity error; ret:='0'; end if;
      when SUBI1_OPCODE_i	 => if test_cw_stage(cw,ITYPE_SUBI1_CW ,stage) /='1' then report "Error on OPCODE SUBI1_OPCODE in stage=" & integer'image(stage) severity error; ret:='0'; end if;
      when ANDI1_OPCODE_i	 => if test_cw_stage(cw,ITYPE_ANDI1_CW ,stage) /='1' then report "Error on OPCODE ANDI1_OPCODE in stage=" & integer'image(stage) severity error; ret:='0'; end if;
      when ORI1_OPCODE_i	 => if test_cw_stage(cw,ITYPE_ORI1_CW  ,stage) /='1' then report "Error on OPCODE ORI1_OPCODE in stage="  & integer'image(stage) severity error; ret:='0'; end if;
      when ADDI2_OPCODE_i	 => if test_cw_stage(cw,ITYPE_ADDI2_CW ,stage) /='1' then report "Error on OPCODE ADDI2_OPCODE in stage=" & integer'image(stage) severity error; ret:='0'; end if;
      when SUBI2_OPCODE_i	 => if test_cw_stage(cw,ITYPE_SUBI2_CW ,stage) /='1' then report "Error on OPCODE SUBI2_OPCODE in stage=" & integer'image(stage) severity error; ret:='0'; end if;
      when ANDI2_OPCODE_i	 => if test_cw_stage(cw,ITYPE_ANDI2_CW ,stage) /='1' then report "Error on OPCODE ANDI2_OPCODE in stage=" & integer'image(stage) severity error; ret:='0'; end if;
      when ORI2_OPCODE_i	 => if test_cw_stage(cw,ITYPE_ORI2_CW  ,stage) /='1' then report "Error on OPCODE ORI2_OPCODE in stage="  & integer'image(stage) severity error; ret:='0'; end if;
      when MOV_OPCODE_i	   => if test_cw_stage(cw,ITYPE_MOV_CW   ,stage) /='1' then report "Error on OPCODE MOV_OPCODE in stage="   & integer'image(stage) severity error; ret:='0'; end if;
      when S_REG1_OPCODE_i => if test_cw_stage(cw,ITYPE_S_REG1_CW,stage) /='1' then report "Error on OPCODE S_REG1_OPCODE in stage="& integer'image(stage) severity error; ret:='0'; end if;
      when S_REG2_OPCODE_i => if test_cw_stage(cw,ITYPE_S_REG2_CW,stage) /='1' then report "Error on OPCODE S_REG2_OPCODE in stage="& integer'image(stage) severity error; ret:='0'; end if;
      when S_MEM2_OPCODE_i => if test_cw_stage(cw,ITYPE_S_MEM2_CW,stage) /='1' then report "Error on OPCODE S_MEM2_OPCODE in stage="& integer'image(stage) severity error; ret:='0'; end if;
      when L_MEM1_OPCODE_i => if test_cw_stage(cw,ITYPE_L_MEM1_CW,stage) /='1' then report "Error on OPCODE L_MEM1_OPCODE in stage="& integer'image(stage) severity error; ret:='0'; end if;
      when L_MEM2_OPCODE_i => if test_cw_stage(cw,ITYPE_L_MEM2_CW,stage) /='1' then report "Error on OPCODE L_MEM2_OPCODE in stage="& integer'image(stage) severity error; ret:='0'; end if;
      when others => report "Error Unable to find this OPTCODE: "& Integer'image(to_integer(unsigned(opcode))) severity failure; 
    end case;
    return ret;
  end function;


  procedure run_test(
    signal cu_opcode_i : inout std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    signal cu_func_i   : inout std_logic_vector(FUNC_SIZE - 1 downto 0);
    constant new_opcode: in std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    constant new_func  : in std_logic_vector(FUNC_SIZE - 1 downto 0);
    signal ret         : inout std_logic
  ) is
    variable res : std_logic;
  begin
    cu_opcode_i <= new_opcode;
    cu_func_i <= new_func;
    ret <= '1';
    wait for 2 ns;
    res := test_result( opcode=>cu_opcode_i, func=>cu_func_i, cw=>cw, stage=>0);
    ret <= res AND ret;
    wait for 2 ns;
    res := test_result( opcode=>cu_opcode_i, func=>cu_func_i, cw=>cw, stage=>1);
    ret <= res AND ret;
    wait for 2 ns;
    res := test_result( opcode=>cu_opcode_i, func=>cu_func_i, cw=>cw, stage=>2);
    ret <= res AND ret;
    wait for 2 ns;
  end procedure;

begin

   CU: CU_FSM
   port map (
     -- OUTPUTS
     EN1    => EN1_i,
     RF1    => RF1_i,
     RF2    => RF2_i,
     WF1    => WF1_i,
     EN2    => EN2_i,
     S1     => S1_i,
     S2     => S2_i,
     ALU1   => ALU1_i,
     ALU2   => ALU2_i,
     EN3    => EN3_i,
     RM     => RM_i,
     WM     => WM_i,
     S3     => S3_i,
     -- INPUTS
     OPCODE => cu_opcode_i,
     FUNC   => cu_func_i,            
     Clk    => Clock,
     Rst    => Reset
  );

  Clock <= not Clock after 1 ns;
  Reset <= '0', '1' after 6 ns;

  cw <= ( 
     PEN1    => EN1_i,
     PRF1    => RF1_i,
     PRF2    => RF2_i,
     PWF1    => WF1_i,
     PEN2    => EN2_i,
     PS1     => S1_i,
     PS2     => S2_i,
     PALU1   => ALU1_i,
     PALU2   => ALU2_i,
     PEN3    => EN3_i,
     PRM     => RM_i,
     PWM     => WM_i,
     PS3     => S3_i,
     others  => '0'
    );

  CONTROL: process
  begin

  wait for 6 ns;  

  -- SUB RS1,RS2,RD -> Rtype
  run_test(cu_opcode_i,cu_func_i,RTYPE_OPCODE,SUB_FUNC,result);
  if result = '1' then report "......................................... SUB    : OK" severity note; 
  else                 report "......................................... SUB    : ERR" severity error; end if;

  -- ADD RS1,RS2,RD -> Rtype
  run_test(cu_opcode_i,cu_func_i,RTYPE_OPCODE,ADD_FUNC,result);
  if result = '1' then report "......................................... ADD    : OK" severity note;
  else                 report "......................................... ADD    : ERR" severity error; end if;

  -- AND RS1,RS2,RD -> Rtype
  run_test(cu_opcode_i,cu_func_i,RTYPE_OPCODE,AND_FUNC,result);
  if result = '1' then report "......................................... AND    : OK" severity note;
  else                 report "......................................... AND    : ERR" severity error; end if;

  -- OR RS1,RS2,RD -> Rtype
  run_test(cu_opcode_i,cu_func_i,RTYPE_OPCODE,OR_FUNC,result);
  if result = '1' then report "......................................... OR     : OK" severity note;
  else                 report "......................................... OR     : ERR" severity error; end if;

  -- ADDI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,ADDI1_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... ADDI1  : OK" severity note;
  else                 report "......................................... ADDI1  : ERR" severity error; end if;

  -- SUBI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,SUBI1_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... SUBI1  : OK" severity note;
  else                 report "......................................... SUBI1  : ERR" severity error; end if;

  -- ANDI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,ANDI1_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... ANDI1  : OK" severity note;
  else                 report "......................................... ANDI1  : ERR" severity error; end if;

  -- ORI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,ORI1_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... ORI1   : OK" severity note;
  else                 report "......................................... ORI1   : ERR" severity error; end if;

  -- ADDI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,ADDI2_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... ADDI1  : OK" severity note;
  else                 report "......................................... ADDI1  : ERR" severity error; end if;

  -- SUBI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,SUBI2_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... SUBI1  : OK" severity note;
  else                 report "......................................... SUBI1  : ERR" severity error; end if;

  -- ANDI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,ANDI2_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... ANDI1  : OK" severity note;
  else                 report "......................................... ANDI1  : ERR" severity error; end if;

  -- ORI1 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,ORI2_OPCODE	 ,(others => '0'),result);
  if result = '1' then report "......................................... ORI1   : OK" severity note;
  else                 report "......................................... ORI1   : ERR" severity error; end if;

  -- MOV RS1,RD,INP2 -> Itype INP = 0
  run_test(cu_opcode_i,cu_func_i,MOV_OPCODE	   ,(others => '0'),result);
  if result = '1' then report "......................................... MOV    : OK" severity note;
  else                 report "......................................... MOV    : ERR" severity error; end if;

  -- S_REG1 RS2,RD,INP1 -> Itype RS2= 0
  run_test(cu_opcode_i,cu_func_i,S_REG1_OPCODE ,(others => '0'),result);
  if result = '1' then report "......................................... S_REG1 : OK" severity note;
  else                 report "......................................... S_REG1 : ERR" severity error; end if;

  -- S_REG2 RS1,RD,INP2 -> Itype RS1= 0
  run_test(cu_opcode_i,cu_func_i,S_REG2_OPCODE ,(others => '0'),result);
  if result = '1' then report "......................................... S_REG2 : OK" severity note;
  else                 report "......................................... S_REG2 : ERR" severity error; end if;

  -- S_MEM2 RS1,RS2,INP2 -> Itype
  run_test(cu_opcode_i,cu_func_i,S_MEM2_OPCODE ,(others => '0'),result);
  if result = '1' then report "......................................... S_MEM2 : OK" severity note;
  else                 report "......................................... S_MEM2 : ERR" severity error; end if;

  -- L_MEM1 RS2,RD,INP2 -> Itype
  run_test(cu_opcode_i,cu_func_i,L_MEM1_OPCODE ,(others => '0'),result);
  if result = '1' then report "......................................... L_MEM1 : OK" severity note;
  else                 report "......................................... L_MEM1 : ERR" severity error; end if;

  -- L_MEM2 RS1,RD,INP1 -> Itype
  run_test(cu_opcode_i,cu_func_i,L_MEM2_OPCODE ,(others => '0'),result);
  if result = '1' then report "......................................... L_MEM2 : OK" severity note;
  else                 report "......................................... L_MEM2 : ERR" severity error; end if;

  wait;
  end process;

end TEST;
