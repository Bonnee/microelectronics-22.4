--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini  [simone.ruffini@studenti.polito.it]
-- Engineer: Matteo Bonora    [matteo.bonora@studenti.polito.it]
-- Engineer: Lorenzo Latella  [s292653@studenti.polito,it]
--
-- Create Date:     Wed May 11 17:32:18 CEST 2022
-- Design Name:     Control Unit Finite State Machine
-- Module Name:     CU_FSM.vhd
-- Project Name:    DLX control unit
-- Description:     Control unit for the DLX datapath
--
--
-- Revision:
-- Revision 00 - Matteo Bonora
--  first implementation
-- Additional Comments:
--
--------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
library work;
  use work.COMM_PKG.all;

entity CU_FSM is
  port (
    -- INPUTS
    Clk    : in std_logic;
    Rst    : in std_logic;                -- Active Low
    OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);
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
    S3     : out std_logic                -- input selection of the multiplexer
  );
end CU_FSM;

architecture behavioural of CU_FSM is
 
  -- Define cw output signal
  signal cw: std_logic_vector(CW_SIZE-1 downto 0);

  -- Declarations for FSM implementation

  -- This is a Moore finite state machine, with a starting DECODE state and
  -- three states for every instruction: one state for each pipeline stage

	type TYPE_STATE is (
    DECODE,

    -- State name pattern: TYPE_INSTRNAME_STAGE
    R_ADD_1,
    R_ADD_2,
    R_ADD_3,

    R_SUB_1,
    R_SUB_2,
    R_SUB_3,

    R_OR_1,
    R_OR_2,
    R_OR_3,

    R_AND_1,
    R_AND_2,
    R_AND_3,

    I_ADDI1_1,
    I_ADDI1_2,
    I_ADDI1_3,

    I_SUBI1_1,
    I_SUBI1_2,
    I_SUBI1_3,

    I_ANDI1_1,
    I_ANDI1_2,
    I_ANDI1_3,

    I_ORI1_1,
    I_ORI1_2,
    I_ORI1_3,

    I_ADDI2_1,
    I_ADDI2_2,
    I_ADDI2_3,

    I_SUBI2_1,
    I_SUBI2_2,
    I_SUBI2_3,

    I_ANDI2_1,
    I_ANDI2_2,
    I_ANDI2_3,

    I_ORI2_1,
    I_ORI2_2,
    I_ORI2_3,

    I_MOV_1,
    I_MOV_2,
    I_MOV_3,

    I_S_REG1_1,
    I_S_REG1_2,
    I_S_REG1_3,

    I_S_REG2_1,
    I_S_REG2_2,
    I_S_REG2_3,

    I_S_MEM2_1,
    I_S_MEM2_2,
    I_S_MEM2_3,

    I_L_MEM1_1,
    I_L_MEM1_2,
    I_L_MEM1_3,

    I_L_MEM2_1,
    I_L_MEM2_2,
    I_L_MEM2_3
	);

	signal CURRENT_STATE : TYPE_STATE := DECODE;
	signal NEXT_STATE : TYPE_STATE := DECODE;

begin

  -- Map cw to single output signals
  EN1<=cw(PEN1);
  RF1<=cw(PRF1);
  RF2<=cw(PRF2);
  WF1<=cw(PWF1);
  EN2<=cw(PEN2);
  S1<=cw(PS1);
  S2<=cw(PS2);
  ALU1<=cw(PALU1);
  ALU2<=cw(PALU2);
  EN3<=cw(PEN3);
  RM<=cw(PRM);
  WM<=cw(PWM);
  S3<=cw(PS3);

 	P_OPC : process(Clk, Rst)		
	begin
		if Rst='0' then
	    CURRENT_STATE <= DECODE;
		elsif (Clk ='1' and Clk'EVENT) then 
			CURRENT_STATE <= NEXT_STATE;
		end if;
	end process P_OPC;

	P_NEXT_STATE : process(CURRENT_STATE, OPCODE, FUNC)
	begin
		NEXT_STATE <= CURRENT_STATE;
		case CURRENT_STATE is
			when DECODE =>
        case to_integer(unsigned(OPCODE)) is
          when RTYPE_OPCODE_i=>
            -- when OPCODE=0x0 we parse FUNC to get ALU config
            case to_integer(unsigned(FUNC)) is
              when ADD_FUNC_i=>
                NEXT_STATE <= R_ADD_1;
              when SUB_FUNC_i=>
                NEXT_STATE <= R_SUB_1;
              when AND_FUNC_i=>
                NEXT_STATE <= R_AND_1;
              when OR_FUNC_i=>
                NEXT_STATE <= R_OR_1;
              when others => NEXT_STATE<=DECODE;
            end case;

          -- Map OPCODE to first state for each I-type instruction
          when ADDI1_OPCODE_i=>
              NEXT_STATE<=I_ADDI1_1;
          when SUBI1_OPCODE_i  =>
              NEXT_STATE<=I_SUBI1_1;
          when ANDI1_OPCODE_i  =>
              NEXT_STATE<=I_ANDI1_1;
          when ORI1_OPCODE_i   =>
              NEXT_STATE<=I_ORI1_1;
          when ADDI2_OPCODE_i  =>
              NEXT_STATE<=I_ADDI2_1;
          when SUBI2_OPCODE_i  =>
              NEXT_STATE<=I_SUBI2_1;
          when ANDI2_OPCODE_i  =>
              NEXT_STATE<=I_ANDI2_1;
          when ORI2_OPCODE_i   =>
              NEXT_STATE<=I_ORI2_1;
          when MOV_OPCODE_i    =>
              NEXT_STATE<=I_MOV_1;
          when S_REG1_OPCODE_i =>
              NEXT_STATE<=I_S_REG1_1;
          when S_REG2_OPCODE_i =>
              NEXT_STATE<=I_S_REG2_1;
          when S_MEM2_OPCODE_i =>
              NEXT_STATE<=I_S_MEM2_1;
          when L_MEM1_OPCODE_i =>
              NEXT_STATE<=I_L_MEM1_1;
          when L_MEM2_OPCODE_i =>              
              NEXT_STATE<=I_L_MEM2_1;
          when others =>
              NEXT_STATE<=DECODE;
				end case;

      -- Define FSM progression through the stages
      -- BEGIN R-Type
      when R_ADD_1=>
        -- 1st to 2nd stage
        NEXT_STATE<=R_ADD_2;
      when R_ADD_2=>
        -- 2nd to 3rd stage
        NEXT_STATE<=R_ADD_3;
      when R_ADD_3=>
        -- 3rd back to DECODE
        NEXT_STATE<=DECODE;

      when R_SUB_1=>
        NEXT_STATE<=R_SUB_2;
      when R_SUB_2=>
        NEXT_STATE<=R_SUB_3;
      when R_SUB_3=>
        NEXT_STATE<=DECODE;

      when R_AND_1=>
        NEXT_STATE<=R_AND_2;
      when R_AND_2=>
        NEXT_STATE<=R_AND_3;
      when R_AND_3=>
        NEXT_STATE<=DECODE;

      when R_OR_1=>
        NEXT_STATE<=R_OR_2;
      when R_OR_2=>
        NEXT_STATE<=R_OR_3;
      when R_OR_3=>
        NEXT_STATE<=DECODE;


      -- BEGIN I-Type
      when I_ADDI1_1=>
          NEXT_STATE<=I_ADDI1_2;
      when I_SUBI1_1  =>
          NEXT_STATE<=I_SUBI1_2;
      when I_ANDI1_1  =>
          NEXT_STATE<=I_ANDI1_2;
      when I_ORI1_1   =>
          NEXT_STATE<=I_ORI1_2;
      when I_ADDI2_1  =>
          NEXT_STATE<=I_ADDI2_2;
      when I_SUBI2_1  =>
          NEXT_STATE<=I_SUBI2_2;
      when I_ANDI2_1  =>
          NEXT_STATE<=I_ANDI2_2;
      when I_ORI2_1   =>
          NEXT_STATE<=I_ORI2_2;
      when I_MOV_1    =>
          NEXT_STATE<=I_MOV_2;
      when I_S_REG1_1 =>
          NEXT_STATE<=I_S_REG1_2;
      when I_S_REG2_1 =>
          NEXT_STATE<=I_S_REG2_2;
      when I_S_MEM2_1 =>
          NEXT_STATE<=I_S_MEM2_2;
      when I_L_MEM1_1 =>
          NEXT_STATE<=I_L_MEM1_2;
      when I_L_MEM2_1 =>              
          NEXT_STATE<=I_L_MEM2_2;

      when I_ADDI1_2=>
          NEXT_STATE<=I_ADDI1_3;
      when I_SUBI1_2  =>
          NEXT_STATE<=I_SUBI1_3;
      when I_ANDI1_2  =>
          NEXT_STATE<=I_ANDI1_3;
      when I_ORI1_2   =>
          NEXT_STATE<=I_ORI1_3;
      when I_ADDI2_2  =>
          NEXT_STATE<=I_ADDI2_3;
      when I_SUBI2_2  =>
          NEXT_STATE<=I_SUBI2_3;
      when I_ANDI2_2  =>
          NEXT_STATE<=I_ANDI2_3;
      when I_ORI2_2   =>
          NEXT_STATE<=I_ORI2_3;
      when I_MOV_2    =>
          NEXT_STATE<=I_MOV_3;
      when I_S_REG1_2 =>
          NEXT_STATE<=I_S_REG1_3;
      when I_S_REG2_2 =>
          NEXT_STATE<=I_S_REG2_3;
      when I_S_MEM2_2 =>
          NEXT_STATE<=I_S_MEM2_3;
      when I_L_MEM1_2 =>
          NEXT_STATE<=I_L_MEM1_3;
      when I_L_MEM2_2 =>              
          NEXT_STATE<=I_L_MEM2_3;

      when I_ADDI1_3=>
          NEXT_STATE<=DECODE;
      when I_SUBI1_3  =>
          NEXT_STATE<=DECODE;
      when I_ANDI1_3  =>
          NEXT_STATE<=DECODE;
      when I_ORI1_3   =>
          NEXT_STATE<=DECODE;
      when I_ADDI2_3  =>
          NEXT_STATE<=DECODE;
      when I_SUBI2_3  =>
          NEXT_STATE<=DECODE;
      when I_ANDI2_3  =>
          NEXT_STATE<=DECODE;
      when I_ORI2_3   =>
          NEXT_STATE<=DECODE;
      when I_MOV_3    =>
          NEXT_STATE<=DECODE;
      when I_S_REG1_3 =>
          NEXT_STATE<=DECODE;
      when I_S_REG2_3 =>
          NEXT_STATE<=DECODE;
      when I_S_MEM2_3 =>
          NEXT_STATE<=DECODE;
      when I_L_MEM1_3 =>
          NEXT_STATE<=DECODE;
      when I_L_MEM2_3 =>              
          NEXT_STATE<=DECODE;

      when others=>NEXT_STATE<=DECODE;
		end case;	
	end process P_NEXT_STATE;
	
	P_OUTPUTS: process(CURRENT_STATE)
	begin
		cw <= (others=>'0');
		case CURRENT_STATE is	
			when DECODE => cw <= (others => '0');

      -- Set outputs for each state
      -- CW is partially set during each stage execution

			when R_ADD_1 => 
        -- Set 1st stage portion of control word to the R-Type ADD predefined output defined in COMM_PKG.vhd
        cw(CW1_SIZE-1 downto 0) <= RTYPE_ADD_CW(CW1_SIZE-1 downto 0);
			when R_ADD_2 => 
        -- Set 2nd stage portion of the control word to the R-Type ADD predefined output defined in COMM_PKG.vhd
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= RTYPE_ADD_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when R_ADD_3 => 
        -- Set 3rd stage portion of the control word to the R-Type ADD predefined output defined in COMM_PKG.vhd
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= RTYPE_ADD_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

			when R_SUB_1 => 
        cw(CW1_SIZE-1 downto 0) <= RTYPE_SUB_CW(CW1_SIZE-1 downto 0);
			when R_SUB_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= RTYPE_SUB_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when R_SUB_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= RTYPE_SUB_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

			when R_OR_1 => 
        cw(CW1_SIZE-1 downto 0) <= RTYPE_OR_CW(CW1_SIZE-1 downto 0);
			when R_OR_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= RTYPE_OR_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when R_OR_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= RTYPE_OR_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when R_AND_1 =>
        cw(CW1_SIZE-1 downto 0) <= RTYPE_AND_CW(CW1_SIZE-1 downto 0);
			when R_AND_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= RTYPE_AND_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when R_AND_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= RTYPE_AND_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_ADDI1_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_ADDI1_CW(CW1_SIZE-1 downto 0);
			when I_ADDI1_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_ADDI1_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_ADDI1_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_ADDI1_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_SUBI1_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_SUBI1_CW(CW1_SIZE-1 downto 0);
			when I_SUBI1_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_SUBI1_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_SUBI1_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_SUBI1_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_ANDI1_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_ANDI1_CW(CW1_SIZE-1 downto 0);
			when I_ANDI1_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_ANDI1_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_ANDI1_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_ANDI1_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_ORI1_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_ORI1_CW(CW1_SIZE-1 downto 0);
			when I_ORI1_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_ORI1_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_ORI1_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_ORI1_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_ADDI2_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_ADDI2_CW(CW1_SIZE-1 downto 0);
			when I_ADDI2_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_ADDI2_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_ADDI2_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_ADDI2_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_SUBI2_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_SUBI2_CW(CW1_SIZE-1 downto 0);
			when I_SUBI2_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_SUBI2_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_SUBI2_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_SUBI2_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_ANDI2_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_ANDI2_CW(CW1_SIZE-1 downto 0);
			when I_ANDI2_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_ANDI2_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_ANDI2_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_ANDI2_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_ORI2_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_ORI2_CW(CW1_SIZE-1 downto 0);
			when I_ORI2_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_ORI2_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_ORI2_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_ORI2_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_MOV_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_MOV_CW(CW1_SIZE-1 downto 0);
			when I_MOV_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_MOV_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_MOV_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_MOV_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_S_REG1_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_S_REG1_CW(CW1_SIZE-1 downto 0);
			when I_S_REG1_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_S_REG1_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_S_REG1_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_S_REG1_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_S_REG2_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_S_REG2_CW(CW1_SIZE-1 downto 0);
			when I_S_REG2_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_S_REG2_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_S_REG2_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_S_REG2_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_S_MEM2_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_S_MEM2_CW(CW1_SIZE-1 downto 0);
			when I_S_MEM2_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_S_MEM2_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_S_MEM2_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_S_MEM2_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_L_MEM1_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_L_MEM1_CW(CW1_SIZE-1 downto 0);
			when I_L_MEM1_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_L_MEM1_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_L_MEM1_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_L_MEM1_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

      when I_L_MEM2_1 =>
        cw(CW1_SIZE-1 downto 0) <= ITYPE_L_MEM2_CW(CW1_SIZE-1 downto 0);
			when I_L_MEM2_2 => 
        cw((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE) <= ITYPE_L_MEM2_CW((CW1_SIZE+CW2_SIZE)-1 downto CW1_SIZE);
			when I_L_MEM2_3 => 
        cw(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE)) <= ITYPE_L_MEM2_CW(CW_SIZE-1 downto (CW1_SIZE+CW2_SIZE));

			when others => cw <= (others => '0'); -- error 		
		end case; 	
	end process P_OUTPUTS;

end behavioural;
