--------------------------------------------------------------------------------
-- Engineer:  Simone Ruffini [simone.ruffini@tutanota.com]
--            Matteo Bonora [matteo.bonota@studenti.polito.it]
--
-- Create Date:     Wed Mar  9 23:20:11 CET 2022
-- Design Name:     ACC
-- Module Name:     acc.vhd - component
-- Project Name:    
-- Description:     insert description
--                  
--
-- Revision:
-- Revision 00 - Simone Ruffini
--  * File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
----------------------------- PACKAGES/LIBRARIES -------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- User Libraries
LIBRARY WORK;
USE WORK.constants.ALL;

----------------------------- ENTITY -------------------------------------------
ENTITY ACC IS
  GENERIC (NBIT : INTEGER := 32);
  PORT (
    A : IN STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0);
    CLK : IN STD_LOGIC;
    RST_n : IN STD_LOGIC;
    ACCUMULATE : IN STD_LOGIC;
    --ACC_EN_n : IN STD_LOGIC; -- optional use of the enable
    Y : OUT STD_LOGIC_VECTOR(numBit - 1 DOWNTO 0)
  );
END ACC;

----------------------------- ARCHITECTURE -------------------------------------
ARCHITECTURE STRUCTURAL OF ACC IS
  --########################### CONSTANTS 1 ####################################

  --########################### TYPES ##########################################

  --########################### FUNCTIONS ######################################

  --########################### CONSTANTS 2 ####################################

  --########################### SIGNALS ########################################
  SIGNAL mux_out : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
  SIGNAL out_add : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
  SIGNAL feed_back : STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);

  COMPONENT MUX21_GENERIC IS
    GENERIC (
      NBIT : INTEGER := NumBit);
    PORT (
      A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      SEL : IN STD_LOGIC;
      Y : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0));
  END COMPONENT;

  COMPONENT RCA_GEN IS
    GENERIC (
      DRCAS : TIME := 0 ns;
      DRCAC : TIME := 0 ns;
      NBIT : INTEGER := NumBit
    );
    PORT (
      A : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      Ci : IN STD_LOGIC;
      S : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      Co : OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT REG IS
    GENERIC (
      NBIT : INTEGER := NumBit
    );
    PORT (
      D : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
      CK : IN STD_LOGIC;
      RESET : IN STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0)
    );
  END COMPONENT;
  --########################### ARCHITECTURE BEGIN #############################
BEGIN
  --########################### ENTITY DEFINITION ##############################

  U1_RCA : RCA_GEN
  GENERIC MAP(
    DRCAS => 0 ns,
    DRCAC => 0 ns,
    NBIT => NBIT
  )
  PORT MAP(
    A => A,
    B => mux_out,
    Ci => '0',
    S => out_add,
    Co => OPEN -- /dev/null
  );

  U1_MUX : MUX21_GENERIC
  GENERIC MAP(
    NBIT => NBIT
  )
  PORT MAP(
    A => feed_back,
    B => B,
    SEL => ACCUMULATE,
    Y => mux_out
  );

  U1_REG : REG
  GENERIC MAP(
    NBIT => NBIT
    )PORT MAP(
    D => out_add,
    CK => CLK,
    RESET => '0', --ACC_EN_n,
    Q => feed_back
  );

  --########################## OUTPUT PORTS WIRING #############################
  Y <= feed_back;

  --########################## COBINATORIAL FUNCTIONS ##########################

  --########################## PROCESSES #######################################
END STRUCTURAL;

CONFIGURATION CFG_ACC_STRUCTURAL OF ACC IS
  FOR STRUCTURAL
    FOR U1_REG : REG
      USE CONFIGURATION WORK.REG_ASYNC;
    END FOR;
    FOR U1_RCA : RCA_GEN
      USE CONFIGURATION WORK.CFG_RCA_STRUCTURAL;
    END FOR;
    FOR U1_MUX : MUX21_GENERIC
    USE CONFIGURATION WORK.CFG_MUX21_GENERIC_STRUCTURAL;
  END FOR;
END FOR;
END CFG_ACC_STRUCTURAL;