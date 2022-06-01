--------------------------------------------------------------------------------
-- Engineer: Simone Ruffini  [simone.ruffini@studenti.polito.it]
-- Engineer: Matteo Bonora    [matteo.bonora@studenti.polito.it]
-- Engineer: Lorenzo Latella  [s292653@studenti.polito,it]
--
-- Create Date:     Wed May 11 11:07:06 CEST 2022
-- Design Name:     Control Unit Micro Programmed
-- Module Name:     CU_UP.vhd
-- Project Name:    DLX control unit
-- Description:     Control unit for the DLX datapath
--
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  first implementation
-- Additional Comments:
--
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all; -- DO NOT USE THIS HARMFUL LIBRARY
--use ieee.std_logic_arith.all;    -- DO NOT USE THIS HARMFUL LIBRARY

use ieee.numeric_std.all;
library work;
  use work.COMM_PKG.all;

entity CU_UP is
  port (
    Clk    : in  std_logic;               -- Clock
    Rst    : in  std_logic;               -- Reset:Active-Low
    OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0); -- OPCODE in
    FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);    -- FUNC code in 
    -- FIRST PIPE STAGE OUTPUTS
    EN1    : out std_logic;               -- enables the register file and the pipeline registers
    RF1    : out std_logic;               -- enables the read port 1 of the register file
    RF2    : out std_logic;               -- enables the read port 2 of the register file
    -- SECOND PIPE STAGE OUTPUTS
    EN2    : out std_logic;               -- enables the pipe registers
    S1     : out std_logic;               -- input selection of the first multiplexer
    S2     : out std_logic;               -- input selection of the second multiplexer
    ALU1   : out std_logic;               -- alu control bit
    ALU2   : out std_logic;               -- alu control bit
    -- THIRD PIPE STAGE OUTPUTS
    WF1    : out std_logic;               -- enables the write port of the register file
    EN3    : out std_logic;               -- enables the memory and the pipeline registers
    RM     : out std_logic;               -- enables the read-out of the memory
    WM     : out std_logic;               -- enables the write-in of the memory
    S3     : out std_logic                -- input selection of the multiplexer
  );

end CU_UP;

architecture Behavioural of CU_UP is

  constant N_CW : integer := (((2 ** OP_CODE_SIZE) - 1) * 3 + (2 ** FUNC_SIZE)  *3); -- number of control words

  type I_RELOC_ARRAY_T is array ((2 ** OP_CODE_SIZE - 1) - 1 downto 0) of std_logic_vector( N_CW - 1 downto 0); -- mem of I-Type instruction adresses in CW_ARRAY (opcode field)
  type R_RELOC_ARRAY_T is array (2 ** FUNC_SIZE - 1 downto 0) of std_logic_vector( N_CW - 1 downto 0);          -- mem of R-Type instruction adresses in CW_ARRAY (func field when opcode is equal to 0)
  type CW_ARRAY        is array ( N_CW - 1 downto 0) of std_logic_vector(CW_SIZE - 1 downto 0);                 -- Mem of Control Word

  signal I_TYPE_RELOC : I_RELOC_ARRAY_T := ( 
                                            ADDI1_OPCODE_i  => std_logic_vector(to_unsigned(12, N_CW )),  -- "01" ADDI1
                                            SUBI1_OPCODE_i  => std_logic_vector(to_unsigned(15, N_CW )),  -- "02" SUBI1
                                            ANDI1_OPCODE_i  => std_logic_vector(to_unsigned(18, N_CW )),  -- "03" ANDI1
                                            ORI1_OPCODE_i   => std_logic_vector(to_unsigned(21, N_CW )),  -- "04" ORI1
                                            ADDI2_OPCODE_i  => std_logic_vector(to_unsigned(24, N_CW )),  -- "05" ADDI2
                                            SUBI2_OPCODE_i  => std_logic_vector(to_unsigned(27, N_CW )),  -- "06" SUBI2
                                            ANDI2_OPCODE_i  => std_logic_vector(to_unsigned(30, N_CW )),  -- "07" ANDI2
                                            ORI2_OPCODE_i   => std_logic_vector(to_unsigned(33, N_CW )),  -- "08" ORI2
                                            MOV_OPCODE_i    => std_logic_vector(to_unsigned(36, N_CW )),  -- "09" MOV
                                            S_REG1_OPCODE_i => std_logic_vector(to_unsigned(39, N_CW )),  -- "10" S_REG1 
                                            S_REG2_OPCODE_i => std_logic_vector(to_unsigned(42, N_CW )),  -- "11" S_REG2
                                            S_MEM2_OPCODE_i => std_logic_vector(to_unsigned(45, N_CW )),  -- "12" S_MEM2
                                            L_MEM1_OPCODE_i => std_logic_vector(to_unsigned(48, N_CW )),  -- "13" L_MEM1
                                            L_MEM2_OPCODE_i => std_logic_vector(to_unsigned(51, N_CW )),  -- "14" L_MEM2
                                            others => (others => '1')
                                           );

  signal R_TYPE_RELOC : R_RELOC_ARRAY_T :=(
                                            ADD_FUNC_i  => std_logic_vector(to_unsigned(0, N_CW )),  -- "00" ADD
                                            SUB_FUNC_i  => std_logic_vector(to_unsigned(3, N_CW )),  -- "01" SUB
                                            AND_FUNC_i  => std_logic_vector(to_unsigned(6, N_CW )),  -- "02" AND
                                            OR_FUNC_i  => std_logic_vector(to_unsigned(9, N_CW )),  -- "03" OR
                                            others => (others => '1')
                                          );
  

  signal CW_CODE : CW_ARRAY := (-- We didivided in cw1-cw2-cw3 all the instruction code 
                                -- R-type instruction control word.
                                00 => RTYPE_ADD_CW ,
                                01 => RTYPE_ADD_CW ,
                                02 => RTYPE_ADD_CW ,
                                03 => RTYPE_SUB_CW ,
                                04 => RTYPE_SUB_CW ,
                                05 => RTYPE_SUB_CW ,
                                06 => RTYPE_AND_CW ,
                                07 => RTYPE_AND_CW ,
                                08 => RTYPE_AND_CW ,
                                09 => RTYPE_OR_CW ,
                                10 => RTYPE_OR_CW ,
                                11 => RTYPE_OR_CW ,
                                -- I-type instruction control word
                                12 => ITYPE_ADDI1_CW ,
                                13 => ITYPE_ADDI1_CW ,
                                14 => ITYPE_ADDI1_CW ,
                                15 => ITYPE_SUBI1_CW ,
                                16 => ITYPE_SUBI1_CW ,
                                17 => ITYPE_SUBI1_CW ,
                                18 => ITYPE_ANDI1_CW ,
                                19 => ITYPE_ANDI1_CW ,
                                20 => ITYPE_ANDI1_CW ,
                                21 => ITYPE_ORI1_CW ,
                                22 => ITYPE_ORI1_CW ,
                                23 => ITYPE_ORI1_CW ,
                                24 => ITYPE_ADDI2_CW ,
                                25 => ITYPE_ADDI2_CW ,
                                26 => ITYPE_ADDI2_CW ,
                                27 => ITYPE_SUBI2_CW ,
                                28 => ITYPE_SUBI2_CW ,
                                29 => ITYPE_SUBI2_CW ,
                                30 => ITYPE_ANDI2_CW ,
                                31 => ITYPE_ANDI2_CW ,
                                32 => ITYPE_ANDI2_CW ,
                                33 => ITYPE_ORI2_CW ,
                                34 => ITYPE_ORI2_CW ,
                                35 => ITYPE_ORI2_CW ,
                                36 => ITYPE_MOV_CW ,
                                37 => ITYPE_MOV_CW ,
                                38 => ITYPE_MOV_CW ,
                                39 => ITYPE_S_REG1_CW ,
                                40=> ITYPE_S_REG1_CW ,
                                41 => ITYPE_S_REG1_CW ,
                                42 => ITYPE_S_REG2_CW ,
                                43 => ITYPE_S_REG2_CW ,
                                44 => ITYPE_S_REG2_CW ,
                                45 => ITYPE_S_MEM2_CW ,
                                46 => ITYPE_S_MEM2_CW ,
                                47 => ITYPE_S_MEM2_CW ,
                                48 => ITYPE_L_MEM1_CW ,
                                49 => ITYPE_L_MEM1_CW ,
                                50 => ITYPE_L_MEM1_CW ,
                                51=> ITYPE_L_MEM2_CW ,
                                52=> ITYPE_L_MEM2_CW ,
                                53=> ITYPE_L_MEM2_CW,
                                others => (others => '0') 
                                );
  

  constant N_CYCLES  : integer := 4; -- decode and 3 cycles of output

  signal uPC         : integer range 0 to N_CW;       -- micro Program Counter (address of CW_ARRAY)
  signal uPC_temp    : integer range 0 to N_CW;       -- micro Program Counter Temporary, to use in the pipeline stages, to avoid the problems derived by the change of input,and of uPC too
  signal CLOCK_COUNT : integer range 0 to N_CYCLES-1; -- to know the stage of pipeline

  
begin     
  
-- Choise if is a R_TYPE or I_TYPE instruction
  uPC <= to_integer(unsigned(R_TYPE_RELOC(to_integer(unsigned(FUNC))))) when OPCODE = RTYPE_OPCODE 
    else to_integer(unsigned(I_TYPE_RELOC(to_integer(unsigned(OPCODE)))));

-- Process that create the output
  OUTPUT_CW : process (Clk,Rst)

  begin 

    if Rst = '0' then

      uPC_temp <= 0;
      CLOCK_COUNT <= 0;

    elsif Clk'event and Clk = '1' then

      -- Cw 1 output 
      if CLOCK_COUNT = 0 then

        EN1  <= CW_CODE(uPC)(PEN1);
        RF1  <= CW_CODE(uPC)(PRF1);      
        RF2  <= CW_CODE(uPC)(PRF2);
        EN2  <= '0';
        S1   <= '0';
        S2   <= '0';
        ALU1 <= '0';
        ALU2 <= '0';
        WF1  <= '0'; 
        EN3  <= '0'; 
        RM   <= '0';
        WM   <= '0';
        S3   <= '0';    
        
        uPC_temp <= uPC + 1; -- adress of CW2
        CLOCK_COUNT <= CLOCK_COUNT + 1; 
      
      -- Cw 2 output
      elsif CLOCK_COUNT = 1 then 

        EN1  <= '0';
        RF1  <= '0';
        RF2  <= '0';
        EN2  <= CW_CODE (uPC_temp)(PEN2); 
        S1   <= CW_CODE (uPC_temp)(PS1); 
        S2   <= CW_CODE (uPC_temp)(PS2); 
        ALU1 <= CW_CODE (uPC_temp)(PALU1);   
        ALU2 <= CW_CODE (uPC_temp)(PALU2);  
        WF1  <= '0'; 
        EN3  <= '0'; 
        RM   <= '0';
        WM   <= '0';
        S3   <= '0';  
      
        uPC_temp <= uPC_temp + 1; -- adress of CW3
        CLOCK_COUNT <= CLOCK_COUNT + 1;

      -- Cw 3 output  
      elsif CLOCK_COUNT = 2 then 
        
        EN1  <= '0';
        RF1  <= '0';
        RF2  <= '0';
        EN2  <= '0';
        S1   <= '0';
        S2   <= '0';
        ALU1 <= '0';
        ALU2 <= '0';
        WF1  <= CW_CODE(uPC_temp)(PWF1); 
        EN3  <= CW_CODE(uPC_temp)(PEN3); 
        RM   <= CW_CODE(uPC_temp)(PRM);
        WM   <= CW_CODE(uPC_temp)(PWM);
        S3   <= CW_CODE(uPC_temp)(PS3);

        CLOCK_COUNT <= CLOCK_COUNT + 1;
      
      --Reset of CLOCK_COUNT 
      else 
      
      CLOCK_COUNT <= 0;
      
      end if;

    end if;  

  end process OUTPUT_CW;

end Behavioural;

configuration CFG_CU_UP_BEHAVIOURAL of CU_UP is
  for Behavioural
  end for;
end configuration;
      
     
