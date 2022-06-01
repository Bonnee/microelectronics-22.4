library ieee;
use ieee.std_logic_1164.all;

package CU_FSM_CFG is

  -- CW1
  constant PEN1 : integer := 0;  -- enables the Register File and the pipeline registers
  constant PRF1 : integer := 1;  -- enables the read port 1 of the Register File
  constant PRF2 : integer := 2;  -- enables the read port 2 of the Register File
  -- CW2
  constant PEN2 : integer := 3;  -- enables the pipe registers
  constant PS1 : integer := 4;   -- allows the input selection of the first multiplexer
  constant PS2 : integer := 5;   -- allows the input selection of the second multiplexer;
  constant PALU1 : integer := 6; --
  constant PALU2 : integer := 7; --
  -- CW3
  constant PEN3 : integer := 8;  --
  constant PRM : integer := 9;   --
  constant PWM : integer := 10;  --
  constant PS3 : integer := 11;  --
  constant PWF1 : integer := 12; -- enables the write pport of the Register File

  constant CW_SIZE : integer := 13; -- Length of the control word == Number of control signals

-- Control unit input sizes
  constant OP_CODE_SIZE : integer :=  6;                                              -- OPCODE field size
  constant FUNC_SIZE    : integer :=  11;                                             -- FUNC field size

-- R-Type instruction -> FUNC field
  constant RTYPE_ADD_CW : std_logic_vector(CW_SIZE - 1 downto 0)	:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'0', PALU1=>'0', PALU2=>'0', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');
  constant RTYPE_SUB_CW : std_logic_vector(CW_SIZE - 1 downto 0)	:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'0', PALU1=>'0', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');
  constant RTYPE_AND_CW : std_logic_vector(CW_SIZE - 1 downto 0)	:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'0', PALU1=>'1', PALU2=>'0', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');
  constant RTYPE_OR_CW  : std_logic_vector(CW_SIZE - 1 downto 0)	:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'0', PALU1=>'1', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');

-- I-Type instruction -> OPCODE field
  --constant ITYPE_ADDI1_CW : std_logic_vector(CW_SIZE - 1 downto 0)	 	:= (PEN1=>'1', PRF1=>'1', PRF2=>'0', PEN2=>'1', PS1=>'1', PS2=>'0', PALU1=>'0', PALU2=>'0', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  -- RA,RB,INP1 (meaning R[RB] = R[RA] + INP1);		TODO
  --constant ITYPE_SUBI1_CW : std_logic_vector(CW_SIZE - 1 downto 0)	 	:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'0', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  -- RA,RB,INP1 (meaning R[RB] = R[RA] - INP1);		TODO
  --constant ITYPE_ANDI1_CW : std_logic_vector(CW_SIZE - 1 downto 0)	 	:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'1', PALU2=>'0', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  -- RA,RB,INP1 (meaning R[RB] = R[RA] AND INP1);		TODO
  --constant ITYPE_ORI1_CW : std_logic_vector(CW_SIZE - 1 downto 0)	  	:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'1', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP1 (meaning R[RB] = R[RA] OR INP1);		TODO
  constant ITYPE_ADDI2_CW : std_logic_vector(CW_SIZE - 1 downto 0)	 	:= (PEN1=>'1', PRF1=>'1', PRF2=>'0', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'0', PALU2=>'0', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP2 (meaning R[RB] = R[RA] + INP2);		DONE
  constant ITYPE_SUBI2_CW : std_logic_vector(CW_SIZE - 1 downto 0)	 	:= (PEN1=>'1', PRF1=>'1', PRF2=>'0', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'0', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP2 (meaning R[RB] = R[RA] - INP2);		TODO
  constant ITYPE_ANDI2_CW : std_logic_vector(CW_SIZE - 1 downto 0)	 	:= (PEN1=>'1', PRF1=>'1', PRF2=>'0', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'1', PALU2=>'0', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP2 (meaning R[RB] = R[RA] AND INP2);		TODO
  constant ITYPE_ORI2_CW : std_logic_vector(CW_SIZE - 1 downto 0)	  	:= (PEN1=>'1', PRF1=>'1', PRF2=>'0', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'1', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP2 (meaning R[RB] = R[RA] OR INP2);		TODO
  constant ITYPE_MOV_CW : std_logic_vector(CW_SIZE - 1 downto 0)	   	:= (PEN1=>'1', PRF1=>'1', PRF2=>'0', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'0', PALU2=>'0', PEN3=>'0', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB (meaning R[RB] = R[RA]) - The value of the immediate must be equal to 0; DONE
  constant ITYPE_S_REG1_CW : std_logic_vector(CW_SIZE - 1 downto 0)		:= (PEN1=>'1', PRF1=>'0', PRF2=>'0', PEN2=>'1', PS1=>'0', PS2=>'1', PALU1=>'1', PALU2=>'1', PEN3=>'0', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RB,INP1 (meaning R[RD] = INP1) - Save the value INP1 in the register file, RA field is not used; DONE (INP1==INP2?)
  constant ITYPE_S_REG2_CW : std_logic_vector(CW_SIZE - 1 downto 0)		:= (PEN1=>'1', PRF1=>'0', PRF2=>'0', PEN2=>'1', PS1=>'0', PS2=>'1', PALU1=>'1', PALU2=>'1', PEN3=>'0', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RB,INP2 (meaning R[RD] = INP2) - Save the value INP2 in the register file, RA field is not used; DONE (INP1==INP2?)
  constant ITYPE_S_MEM2_CW : std_logic_vector(CW_SIZE - 1 downto 0)		:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'1', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP2 (meaning MEM[R[RA]+INP2] = R[RB]) - The content of the register RB is saved in a memory cell, whose address is calculated adding the content of the register RA to the value INP2; TODO
  constant ITYPE_L_MEM1_CW : std_logic_vector(CW_SIZE - 1 downto 0)		:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'1', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP1 (meaning R[RB] = MEM[R[RA]+INP1]) - The content of the memory cell, whose address is calculated adding the content of the register RA to the value INP1, is saved in the register RB; TODO
  constant ITYPE_L_MEM2_CW : std_logic_vector(CW_SIZE - 1 downto 0)		:= (PEN1=>'1', PRF1=>'1', PRF2=>'1', PEN2=>'1', PS1=>'1', PS2=>'1', PALU1=>'1', PALU2=>'1', PEN3=>'1', PRM=>'0', PWM=>'0', PS3=>'1', PWF1=>'1');  --RA,RB,INP2 (meaning R[RB] = MEM[R[RA]+INP2]) - The content of the memory cell, whose address is calculated adding the content of the register RA to the value TODO

  -- ...................
  -- to be completed with the others I-Type instructions
  -- ...................

-- Change the values of the instructions coding as you want, depending also on the type of control unit choosen

end CU_FSM_CFG;
