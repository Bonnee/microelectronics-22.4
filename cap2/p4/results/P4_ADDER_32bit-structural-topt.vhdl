
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1_13;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_2_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n12, n13
      , n14, n15, n16, n17 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_2_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => n12, ZN => Co);
   U4 : INV_X1 port map( A => n13, ZN => S(0));
   U5 : INV_X1 port map( A => n14, ZN => S(1));
   U6 : INV_X1 port map( A => n15, ZN => S(2));
   U7 : INV_X1 port map( A => n16, ZN => S(3));
   U8 : AOI22_X1 port map( A1 => Co0, A2 => n17, B1 => Co1, B2 => Cin, ZN => 
                           n12);
   U9 : AOI22_X1 port map( A1 => S0_3_port, A2 => n17, B1 => S1_3_port, B2 => 
                           Cin, ZN => n16);
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n17, B1 => S1_2_port, B2 => 
                           Cin, ZN => n15);
   U11 : AOI22_X1 port map( A1 => S0_1_port, A2 => n17, B1 => S1_1_port, B2 => 
                           Cin, ZN => n14);
   U12 : AOI22_X1 port map( A1 => S0_0_port, A2 => n17, B1 => S1_0_port, B2 => 
                           Cin, ZN => n13);
   U13 : INV_X1 port map( A => Cin, ZN => n17);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1_12;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_2_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n8, 
      net5381, net5430, n6, n7, n12, n13, n14 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_2_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => S0_2_port, ZN => n6);
   U4 : INV_X1 port map( A => S1_2_port, ZN => n7);
   U5 : MUX2_X1 port map( A => n6, B => n7, S => Cin, Z => n8);
   U6 : MUX2_X1 port map( A => S0_3_port, B => S1_3_port, S => Cin, Z => S(3));
   U7 : CLKBUF_X1 port map( A => Cin, Z => net5430);
   U8 : INV_X1 port map( A => Cin, ZN => net5381);
   U9 : INV_X1 port map( A => n12, ZN => Co);
   U10 : INV_X1 port map( A => n13, ZN => S(0));
   U11 : AOI22_X1 port map( A1 => net5381, A2 => S0_0_port, B1 => S1_0_port, B2
                           => Cin, ZN => n13);
   U12 : INV_X1 port map( A => n14, ZN => S(1));
   U13 : AOI22_X1 port map( A1 => net5381, A2 => S0_1_port, B1 => S1_1_port, B2
                           => Cin, ZN => n14);
   U14 : INV_X1 port map( A => n8, ZN => S(2));
   U15 : AOI22_X1 port map( A1 => Co0, A2 => net5381, B1 => Co1, B2 => net5430,
                           ZN => n12);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1_11;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_2_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n12, n13
      , n14, n15, n16, n17, n18, n19, n20, n21 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_2_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n12);
   U4 : CLKBUF_X1 port map( A => Cin, Z => n13);
   U5 : INV_X1 port map( A => Cin, ZN => n14);
   U6 : INV_X1 port map( A => Cin, ZN => n15);
   U7 : INV_X1 port map( A => n16, ZN => Co);
   U8 : INV_X1 port map( A => n17, ZN => S(0));
   U9 : INV_X1 port map( A => n18, ZN => S(1));
   U10 : INV_X1 port map( A => n19, ZN => S(2));
   U11 : INV_X1 port map( A => n20, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => Co0, A2 => n12, B1 => Co1, B2 => n13, ZN => 
                           n16);
   U13 : AOI22_X1 port map( A1 => S0_3_port, A2 => n14, B1 => S1_3_port, B2 => 
                           Cin, ZN => n20);
   U14 : AOI22_X1 port map( A1 => S0_2_port, A2 => n12, B1 => S1_2_port, B2 => 
                           Cin, ZN => n19);
   U15 : AOI22_X1 port map( A1 => S0_1_port, A2 => n15, B1 => S1_1_port, B2 => 
                           Cin, ZN => n18);
   U16 : AOI22_X1 port map( A1 => S0_0_port, A2 => n21, B1 => S1_0_port, B2 => 
                           Cin, ZN => n17);
   U17 : INV_X1 port map( A => Cin, ZN => n21);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1_10;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_2_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, 
      net5051, n7 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_2_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : MUX2_X1 port map( A => S0_0_port, B => S1_0_port, S => Cin, Z => S(0));
   U4 : MUX2_X1 port map( A => S0_1_port, B => S1_1_port, S => Cin, Z => S(1));
   U5 : MUX2_X1 port map( A => S0_2_port, B => S1_2_port, S => Cin, Z => S(2));
   U6 : MUX2_X1 port map( A => S0_3_port, B => S1_3_port, S => Cin, Z => S(3));
   U7 : CLKBUF_X1 port map( A => Cin, Z => net5051);
   U8 : INV_X1 port map( A => n7, ZN => Co);
   U9 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => net5051, ZN =>
                           n7);
   U10 : INV_X1 port map( A => net5051, ZN => n6);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1_9;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_2_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, 
      net5049, n7 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_2_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : MUX2_X1 port map( A => S0_0_port, B => S1_0_port, S => Cin, Z => S(0));
   U4 : MUX2_X1 port map( A => S0_1_port, B => S1_1_port, S => Cin, Z => S(1));
   U5 : MUX2_X1 port map( A => S0_2_port, B => S1_2_port, S => Cin, Z => S(2));
   U6 : MUX2_X1 port map( A => S0_3_port, B => S1_3_port, S => Cin, Z => S(3));
   U7 : CLKBUF_X1 port map( A => Cin, Z => net5049);
   U8 : INV_X1 port map( A => n7, ZN => Co);
   U9 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => net5049, ZN =>
                           n7);
   U10 : INV_X1 port map( A => net5049, ZN => n6);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1_8;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_2_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, 
      net5055, n7 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_2_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : MUX2_X1 port map( A => S0_0_port, B => S1_0_port, S => Cin, Z => S(0));
   U4 : MUX2_X1 port map( A => S0_1_port, B => S1_1_port, S => Cin, Z => S(1));
   U5 : MUX2_X1 port map( A => S0_2_port, B => S1_2_port, S => Cin, Z => S(2));
   U6 : MUX2_X1 port map( A => S0_3_port, B => S1_3_port, S => Cin, Z => S(3));
   U7 : CLKBUF_X1 port map( A => Cin, Z => net5055);
   U8 : INV_X1 port map( A => n7, ZN => Co);
   U9 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => net5055, ZN =>
                           n7);
   U10 : INV_X1 port map( A => net5055, ZN => n6);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_80 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_80;

architecture SYN_BEHAVIORAL of gp_80 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_79 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_79;

architecture SYN_BEHAVIORAL of gp_79 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_78 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_78;

architecture SYN_BEHAVIORAL of gp_78 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_77 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_77;

architecture SYN_BEHAVIORAL of gp_77 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_76 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_76;

architecture SYN_BEHAVIORAL of gp_76 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_75 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_75;

architecture SYN_BEHAVIORAL of gp_75 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_74 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_74;

architecture SYN_BEHAVIORAL of gp_74 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_73 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_73;

architecture SYN_BEHAVIORAL of gp_73 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_72 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_72;

architecture SYN_BEHAVIORAL of gp_72 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_71 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_71;

architecture SYN_BEHAVIORAL of gp_71 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_70 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_70;

architecture SYN_BEHAVIORAL of gp_70 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_69 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_69;

architecture SYN_BEHAVIORAL of gp_69 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_68 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_68;

architecture SYN_BEHAVIORAL of gp_68 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_67 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_67;

architecture SYN_BEHAVIORAL of gp_67 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_66 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_66;

architecture SYN_BEHAVIORAL of gp_66 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_65 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_65;

architecture SYN_BEHAVIORAL of gp_65 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_64 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_64;

architecture SYN_BEHAVIORAL of gp_64 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_63 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_63;

architecture SYN_BEHAVIORAL of gp_63 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_62 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_62;

architecture SYN_BEHAVIORAL of gp_62 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_61 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_61;

architecture SYN_BEHAVIORAL of gp_61 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_60 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_60;

architecture SYN_BEHAVIORAL of gp_60 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_59 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_59;

architecture SYN_BEHAVIORAL of gp_59 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_58 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_58;

architecture SYN_BEHAVIORAL of gp_58 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_57 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_57;

architecture SYN_BEHAVIORAL of gp_57 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_56 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_56;

architecture SYN_BEHAVIORAL of gp_56 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_55 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_55;

architecture SYN_BEHAVIORAL of gp_55 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_110 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_110;

architecture SYN_BEHAVIORAL of GG_110 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => G_prev, B2 => P_current, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_109 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_109;

architecture SYN_BEHAVIORAL of GG_109 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_108 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_108;

architecture SYN_BEHAVIORAL of GG_108 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_107 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_107;

architecture SYN_BEHAVIORAL of GG_107 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_106 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_106;

architecture SYN_BEHAVIORAL of GG_106 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_105 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_105;

architecture SYN_BEHAVIORAL of GG_105 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_104 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_104;

architecture SYN_BEHAVIORAL of GG_104 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_103 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_103;

architecture SYN_BEHAVIORAL of GG_103 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_102 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_102;

architecture SYN_BEHAVIORAL of GG_102 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_101 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_101;

architecture SYN_BEHAVIORAL of GG_101 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_100 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_100;

architecture SYN_BEHAVIORAL of GG_100 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_99 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_99;

architecture SYN_BEHAVIORAL of GG_99 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_98 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_98;

architecture SYN_BEHAVIORAL of GG_98 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_97 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_97;

architecture SYN_BEHAVIORAL of GG_97 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_96 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_96;

architecture SYN_BEHAVIORAL of GG_96 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_95 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_95;

architecture SYN_BEHAVIORAL of GG_95 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_94 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_94;

architecture SYN_BEHAVIORAL of GG_94 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => G_prev, B2 => P_current, A => G_current, ZN =>
                           n3);
   U2 : INV_X1 port map( A => n3, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_93 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_93;

architecture SYN_BEHAVIORAL of GG_93 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);
   U2 : INV_X1 port map( A => n3, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_92 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_92;

architecture SYN_BEHAVIORAL of GG_92 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_91 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_91;

architecture SYN_BEHAVIORAL of GG_91 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_90 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_90;

architecture SYN_BEHAVIORAL of GG_90 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_89 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_89;

architecture SYN_BEHAVIORAL of GG_89 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_88 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_88;

architecture SYN_BEHAVIORAL of GG_88 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_87 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_87;

architecture SYN_BEHAVIORAL of GG_87 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);
   U2 : INV_X1 port map( A => n3, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_86 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_86;

architecture SYN_BEHAVIORAL of GG_86 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => G_current, ZN => n3);
   U2 : NAND2_X1 port map( A1 => G_prev, A2 => P_current, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_85 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_85;

architecture SYN_BEHAVIORAL of GG_85 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);
   U2 : INV_X1 port map( A => n3, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_84 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_84;

architecture SYN_BEHAVIORAL of GG_84 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_83 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_83;

architecture SYN_BEHAVIORAL of GG_83 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_82 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_82;

architecture SYN_BEHAVIORAL of GG_82 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => G_prev, B2 => P_current, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_81 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_81;

architecture SYN_BEHAVIORAL of GG_81 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => G_current, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => G);
   U3 : NAND2_X1 port map( A1 => G_prev, A2 => P_current, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_80 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_80;

architecture SYN_BEHAVIORAL of GG_80 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_79 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_79;

architecture SYN_BEHAVIORAL of GG_79 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_78 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_78;

architecture SYN_BEHAVIORAL of GG_78 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => G);
   U2 : INV_X1 port map( A => G_current, ZN => n3);
   U3 : NAND2_X1 port map( A1 => G_prev, A2 => P_current, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_77 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_77;

architecture SYN_BEHAVIORAL of GG_77 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => G);
   U2 : INV_X1 port map( A => G_current, ZN => n3);
   U3 : NAND2_X1 port map( A1 => G_prev, A2 => P_current, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_76 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_76;

architecture SYN_BEHAVIORAL of GG_76 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => G);
   U2 : INV_X1 port map( A => G_current, ZN => n3);
   U3 : NAND2_X1 port map( A1 => G_prev, A2 => P_current, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_75 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_75;

architecture SYN_BEHAVIORAL of GG_75 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_95 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_95;

architecture SYN_BEHAVIORAL of PG_PRIM_95 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_94 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_94;

architecture SYN_BEHAVIORAL of PG_PRIM_94 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_93 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_93;

architecture SYN_BEHAVIORAL of PG_PRIM_93 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_92 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_92;

architecture SYN_BEHAVIORAL of PG_PRIM_92 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_91 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_91;

architecture SYN_BEHAVIORAL of PG_PRIM_91 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_90 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_90;

architecture SYN_BEHAVIORAL of PG_PRIM_90 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_89 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_89;

architecture SYN_BEHAVIORAL of PG_PRIM_89 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_88 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_88;

architecture SYN_BEHAVIORAL of PG_PRIM_88 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_87 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_87;

architecture SYN_BEHAVIORAL of PG_PRIM_87 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_86 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_86;

architecture SYN_BEHAVIORAL of PG_PRIM_86 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_85 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_85;

architecture SYN_BEHAVIORAL of PG_PRIM_85 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_84 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_84;

architecture SYN_BEHAVIORAL of PG_PRIM_84 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_83 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_83;

architecture SYN_BEHAVIORAL of PG_PRIM_83 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_82 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_82;

architecture SYN_BEHAVIORAL of PG_PRIM_82 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_81 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_81;

architecture SYN_BEHAVIORAL of PG_PRIM_81 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_80 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_80;

architecture SYN_BEHAVIORAL of PG_PRIM_80 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_79 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_79;

architecture SYN_BEHAVIORAL of PG_PRIM_79 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_78 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_78;

architecture SYN_BEHAVIORAL of PG_PRIM_78 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_77 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_77;

architecture SYN_BEHAVIORAL of PG_PRIM_77 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_76 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_76;

architecture SYN_BEHAVIORAL of PG_PRIM_76 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_75 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_75;

architecture SYN_BEHAVIORAL of PG_PRIM_75 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_74 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_74;

architecture SYN_BEHAVIORAL of PG_PRIM_74 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_73 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_73;

architecture SYN_BEHAVIORAL of PG_PRIM_73 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_72 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_72;

architecture SYN_BEHAVIORAL of PG_PRIM_72 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_71 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_71;

architecture SYN_BEHAVIORAL of PG_PRIM_71 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_70 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_70;

architecture SYN_BEHAVIORAL of PG_PRIM_70 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_69 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_69;

architecture SYN_BEHAVIORAL of PG_PRIM_69 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_68 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_68;

architecture SYN_BEHAVIORAL of PG_PRIM_68 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_67 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_67;

architecture SYN_BEHAVIORAL of PG_PRIM_67 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_66 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_66;

architecture SYN_BEHAVIORAL of PG_PRIM_66 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_65 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_65;

architecture SYN_BEHAVIORAL of PG_PRIM_65 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => p);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_14;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_14 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_13;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_13 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_12;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_12 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_11;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_2_11 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_10;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_10 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_9;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_2_9 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_8;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_8 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_7;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_2_7 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_6;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_6 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_5;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_2_5 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_4;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_4 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_3;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_2_3 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_2;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_2 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_1;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_2_1 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1_7;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_2_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, n7, 
      n8, n9, n10, n11 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_2_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => n11, ZN => Co);
   U4 : INV_X1 port map( A => n10, ZN => S(0));
   U5 : INV_X1 port map( A => n9, ZN => S(1));
   U6 : INV_X1 port map( A => n8, ZN => S(2));
   U7 : INV_X1 port map( A => n7, ZN => S(3));
   U8 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => n11
                           );
   U9 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n7);
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n8);
   U11 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n9);
   U12 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n10);
   U13 : INV_X1 port map( A => Cin, ZN => n6);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_54 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_54;

architecture SYN_BEHAVIORAL of gp_54 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_74 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_74;

architecture SYN_BEHAVIORAL of GG_74 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => G);
   U2 : AOI21_X1 port map( B1 => P_current, B2 => G_prev, A => G_current, ZN =>
                           n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_PRIM_64 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_64;

architecture SYN_BEHAVIORAL of PG_PRIM_64 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => B, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => p);
   U4 : INV_X1 port map( A => B, ZN => n1);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7_3 is

   port( A, B : in std_logic_vector (27 downto 0);  Ci : in std_logic_vector (6
         downto 0);  S : out std_logic_vector (27 downto 0));

end SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7_3;

architecture SYN_BEHAVIOURAL of SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7_3 is

   component CSB_NBIT4_1_8
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_1_9
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_1_10
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_1_11
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_1_12
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_1_13
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_1_7
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006 : std_logic;

begin
   
   U_CSB_1 : CSB_NBIT4_1_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Cin => Ci(0), S(3) => S(3), S(2)
                           => S(2), S(1) => S(1), S(0) => S(0), Co => n_1000);
   U_CSB_2 : CSB_NBIT4_1_13 port map( A(3) => A(7), A(2) => A(6), A(1) => A(5),
                           A(0) => A(4), B(3) => B(7), B(2) => B(6), B(1) => 
                           B(5), B(0) => B(4), Cin => Ci(1), S(3) => S(7), S(2)
                           => S(6), S(1) => S(5), S(0) => S(4), Co => n_1001);
   U_CSB_3 : CSB_NBIT4_1_12 port map( A(3) => A(11), A(2) => A(10), A(1) => 
                           A(9), A(0) => A(8), B(3) => B(11), B(2) => B(10), 
                           B(1) => B(9), B(0) => B(8), Cin => Ci(2), S(3) => 
                           S(11), S(2) => S(10), S(1) => S(9), S(0) => S(8), Co
                           => n_1002);
   U_CSB_4 : CSB_NBIT4_1_11 port map( A(3) => A(15), A(2) => A(14), A(1) => 
                           A(13), A(0) => A(12), B(3) => B(15), B(2) => B(14), 
                           B(1) => B(13), B(0) => B(12), Cin => Ci(3), S(3) => 
                           S(15), S(2) => S(14), S(1) => S(13), S(0) => S(12), 
                           Co => n_1003);
   U_CSB_5 : CSB_NBIT4_1_10 port map( A(3) => A(19), A(2) => A(18), A(1) => 
                           A(17), A(0) => A(16), B(3) => B(19), B(2) => B(18), 
                           B(1) => B(17), B(0) => B(16), Cin => Ci(4), S(3) => 
                           S(19), S(2) => S(18), S(1) => S(17), S(0) => S(16), 
                           Co => n_1004);
   U_CSB_6 : CSB_NBIT4_1_9 port map( A(3) => A(23), A(2) => A(22), A(1) => 
                           A(21), A(0) => A(20), B(3) => B(23), B(2) => B(22), 
                           B(1) => B(21), B(0) => B(20), Cin => Ci(5), S(3) => 
                           S(23), S(2) => S(22), S(1) => S(21), S(0) => S(20), 
                           Co => n_1005);
   U_CSB_7 : CSB_NBIT4_1_8 port map( A(3) => A(27), A(2) => A(26), A(1) => 
                           A(25), A(0) => A(24), B(3) => B(27), B(2) => B(26), 
                           B(1) => B(25), B(0) => B(24), Cin => Ci(6), S(3) => 
                           S(27), S(2) => S(26), S(1) => S(25), S(0) => S(24), 
                           Co => n_1006);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_2_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2_0;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_43_2_carry_1_port, add_1_root_add_43_2_carry_2_port, 
      add_1_root_add_43_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_43_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_43_2_carry_1_port, S => S(0));
   add_1_root_add_43_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_43_2_carry_1_port, CO => 
                           add_1_root_add_43_2_carry_2_port, S => S(1));
   add_1_root_add_43_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_43_2_carry_2_port, CO => 
                           add_1_root_add_43_2_carry_3_port, S => S(2));
   add_1_root_add_43_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_43_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4_3 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4_3;

architecture SYN_STRUCTURAL of CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4_3 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GG_75
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_76
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_77
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_78
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_55
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_79
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_56
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_80
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_81
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_82
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_57
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_83
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_58
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_84
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_59
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_85
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_86
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_60
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_87
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_61
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_88
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_62
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_89
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_63
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_90
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_64
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_91
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_65
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_92
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_66
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_93
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_94
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_67
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_95
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_68
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_96
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_69
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_97
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_70
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_98
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_71
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_99
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_72
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_100
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_73
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_101
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_74
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_102
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_75
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_103
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_76
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_104
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_77
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_105
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_78
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_106
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_79
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_107
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_80
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_108
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_54
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_109
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_110
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component PG_PRIM_65
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_66
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_67
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_68
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_69
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_70
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_71
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_72
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_73
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_74
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_75
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_76
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_77
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_78
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_79
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_80
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_81
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_82
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_83
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_84
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_85
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_86
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_87
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_88
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_89
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_90
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_91
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_92
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_93
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_94
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_95
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component GG_74
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component PG_PRIM_64
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, n6, Co_2_port, n7, n8, 
      p_0, g_0, CG_xbars_4_31_1_port, CG_xbars_4_31_0_port, 
      CG_xbars_4_27_1_port, CG_xbars_4_27_0_port, CG_xbars_3_31_1_port, 
      CG_xbars_3_31_0_port, CG_xbars_3_23_1_port, CG_xbars_3_23_0_port, 
      CG_xbars_3_15_1_port, CG_xbars_3_15_0_port, CG_xbars_2_31_1_port, 
      CG_xbars_2_31_0_port, CG_xbars_2_27_1_port, CG_xbars_2_27_0_port, 
      CG_xbars_2_23_1_port, CG_xbars_2_23_0_port, CG_xbars_2_19_1_port, 
      CG_xbars_2_19_0_port, CG_xbars_2_15_1_port, CG_xbars_2_15_0_port, 
      CG_xbars_2_11_1_port, CG_xbars_2_11_0_port, CG_xbars_2_7_1_port, 
      CG_xbars_2_7_0_port, CG_xbars_1_31_1_port, CG_xbars_1_31_0_port, 
      CG_xbars_1_29_1_port, CG_xbars_1_29_0_port, CG_xbars_1_27_1_port, 
      CG_xbars_1_27_0_port, CG_xbars_1_25_1_port, CG_xbars_1_25_0_port, 
      CG_xbars_1_23_1_port, CG_xbars_1_23_0_port, CG_xbars_1_21_1_port, 
      CG_xbars_1_21_0_port, CG_xbars_1_19_1_port, CG_xbars_1_19_0_port, 
      CG_xbars_1_17_1_port, CG_xbars_1_17_0_port, CG_xbars_1_15_1_port, 
      CG_xbars_1_15_0_port, CG_xbars_1_13_1_port, CG_xbars_1_13_0_port, 
      CG_xbars_1_11_1_port, CG_xbars_1_11_0_port, CG_xbars_1_9_1_port, 
      CG_xbars_1_9_0_port, CG_xbars_1_7_1_port, CG_xbars_1_7_0_port, 
      CG_xbars_1_5_1_port, CG_xbars_1_5_0_port, CG_xbars_1_3_1_port, 
      CG_xbars_1_3_0_port, CG_xbars_1_1_0_port, CG_xbars_0_31_1_port, 
      CG_xbars_0_31_0_port, CG_xbars_0_30_1_port, CG_xbars_0_30_0_port, 
      CG_xbars_0_29_1_port, CG_xbars_0_29_0_port, CG_xbars_0_28_1_port, 
      CG_xbars_0_28_0_port, CG_xbars_0_27_1_port, CG_xbars_0_27_0_port, 
      CG_xbars_0_26_1_port, CG_xbars_0_26_0_port, CG_xbars_0_25_1_port, 
      CG_xbars_0_25_0_port, CG_xbars_0_24_1_port, CG_xbars_0_24_0_port, 
      CG_xbars_0_23_1_port, CG_xbars_0_23_0_port, CG_xbars_0_22_1_port, 
      CG_xbars_0_22_0_port, CG_xbars_0_21_1_port, CG_xbars_0_21_0_port, 
      CG_xbars_0_20_1_port, CG_xbars_0_20_0_port, CG_xbars_0_19_1_port, 
      CG_xbars_0_19_0_port, CG_xbars_0_18_1_port, CG_xbars_0_18_0_port, 
      CG_xbars_0_17_1_port, CG_xbars_0_17_0_port, CG_xbars_0_16_1_port, 
      CG_xbars_0_16_0_port, CG_xbars_0_15_1_port, CG_xbars_0_15_0_port, 
      CG_xbars_0_14_1_port, CG_xbars_0_14_0_port, CG_xbars_0_13_1_port, 
      CG_xbars_0_13_0_port, CG_xbars_0_12_1_port, CG_xbars_0_12_0_port, 
      CG_xbars_0_11_1_port, CG_xbars_0_11_0_port, CG_xbars_0_10_1_port, 
      CG_xbars_0_10_0_port, CG_xbars_0_9_1_port, CG_xbars_0_9_0_port, 
      CG_xbars_0_8_1_port, CG_xbars_0_8_0_port, CG_xbars_0_7_1_port, 
      CG_xbars_0_7_0_port, CG_xbars_0_6_1_port, CG_xbars_0_6_0_port, 
      CG_xbars_0_5_1_port, CG_xbars_0_5_0_port, CG_xbars_0_4_1_port, 
      CG_xbars_0_4_0_port, CG_xbars_0_3_1_port, CG_xbars_0_3_0_port, 
      CG_xbars_0_2_1_port, CG_xbars_0_2_0_port, CG_xbars_0_1_1_port, 
      CG_xbars_0_1_0_port, CG_xbars_0_0_0_port, n1, Co_3_port, n3, Co_1_port, 
      Co_0_port : std_logic;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   U_PG_PRIM_0 : PG_PRIM_64 port map( A => A(0), B => B(0), g => g_0, p => p_0)
                           ;
   U_RXMOST_PG_PRIM_IS_GG_UNIT_0 : GG_74 port map( G_current => g_0, P_current 
                           => p_0, G_prev => Cin, G => CG_xbars_0_0_0_port);
   U_PG_PRIM_1 : PG_PRIM_95 port map( A => A(1), B => B(1), g => 
                           CG_xbars_0_1_0_port, p => CG_xbars_0_1_1_port);
   U_PG_PRIM_2 : PG_PRIM_94 port map( A => A(2), B => B(2), g => 
                           CG_xbars_0_2_0_port, p => CG_xbars_0_2_1_port);
   U_PG_PRIM_3 : PG_PRIM_93 port map( A => A(3), B => B(3), g => 
                           CG_xbars_0_3_0_port, p => CG_xbars_0_3_1_port);
   U_PG_PRIM_4 : PG_PRIM_92 port map( A => A(4), B => B(4), g => 
                           CG_xbars_0_4_0_port, p => CG_xbars_0_4_1_port);
   U_PG_PRIM_5 : PG_PRIM_91 port map( A => A(5), B => B(5), g => 
                           CG_xbars_0_5_0_port, p => CG_xbars_0_5_1_port);
   U_PG_PRIM_6 : PG_PRIM_90 port map( A => A(6), B => B(6), g => 
                           CG_xbars_0_6_0_port, p => CG_xbars_0_6_1_port);
   U_PG_PRIM_7 : PG_PRIM_89 port map( A => A(7), B => B(7), g => 
                           CG_xbars_0_7_0_port, p => CG_xbars_0_7_1_port);
   U_PG_PRIM_8 : PG_PRIM_88 port map( A => A(8), B => B(8), g => 
                           CG_xbars_0_8_0_port, p => CG_xbars_0_8_1_port);
   U_PG_PRIM_9 : PG_PRIM_87 port map( A => A(9), B => B(9), g => 
                           CG_xbars_0_9_0_port, p => CG_xbars_0_9_1_port);
   U_PG_PRIM_10 : PG_PRIM_86 port map( A => A(10), B => B(10), g => 
                           CG_xbars_0_10_0_port, p => CG_xbars_0_10_1_port);
   U_PG_PRIM_11 : PG_PRIM_85 port map( A => A(11), B => B(11), g => 
                           CG_xbars_0_11_0_port, p => CG_xbars_0_11_1_port);
   U_PG_PRIM_12 : PG_PRIM_84 port map( A => A(12), B => B(12), g => 
                           CG_xbars_0_12_0_port, p => CG_xbars_0_12_1_port);
   U_PG_PRIM_13 : PG_PRIM_83 port map( A => A(13), B => B(13), g => 
                           CG_xbars_0_13_0_port, p => CG_xbars_0_13_1_port);
   U_PG_PRIM_14 : PG_PRIM_82 port map( A => A(14), B => B(14), g => 
                           CG_xbars_0_14_0_port, p => CG_xbars_0_14_1_port);
   U_PG_PRIM_15 : PG_PRIM_81 port map( A => A(15), B => B(15), g => 
                           CG_xbars_0_15_0_port, p => CG_xbars_0_15_1_port);
   U_PG_PRIM_16 : PG_PRIM_80 port map( A => A(16), B => B(16), g => 
                           CG_xbars_0_16_0_port, p => CG_xbars_0_16_1_port);
   U_PG_PRIM_17 : PG_PRIM_79 port map( A => A(17), B => B(17), g => 
                           CG_xbars_0_17_0_port, p => CG_xbars_0_17_1_port);
   U_PG_PRIM_18 : PG_PRIM_78 port map( A => A(18), B => B(18), g => 
                           CG_xbars_0_18_0_port, p => CG_xbars_0_18_1_port);
   U_PG_PRIM_19 : PG_PRIM_77 port map( A => A(19), B => B(19), g => 
                           CG_xbars_0_19_0_port, p => CG_xbars_0_19_1_port);
   U_PG_PRIM_20 : PG_PRIM_76 port map( A => A(20), B => B(20), g => 
                           CG_xbars_0_20_0_port, p => CG_xbars_0_20_1_port);
   U_PG_PRIM_21 : PG_PRIM_75 port map( A => A(21), B => B(21), g => 
                           CG_xbars_0_21_0_port, p => CG_xbars_0_21_1_port);
   U_PG_PRIM_22 : PG_PRIM_74 port map( A => A(22), B => B(22), g => 
                           CG_xbars_0_22_0_port, p => CG_xbars_0_22_1_port);
   U_PG_PRIM_23 : PG_PRIM_73 port map( A => A(23), B => B(23), g => 
                           CG_xbars_0_23_0_port, p => CG_xbars_0_23_1_port);
   U_PG_PRIM_24 : PG_PRIM_72 port map( A => A(24), B => B(24), g => 
                           CG_xbars_0_24_0_port, p => CG_xbars_0_24_1_port);
   U_PG_PRIM_25 : PG_PRIM_71 port map( A => A(25), B => B(25), g => 
                           CG_xbars_0_25_0_port, p => CG_xbars_0_25_1_port);
   U_PG_PRIM_26 : PG_PRIM_70 port map( A => A(26), B => B(26), g => 
                           CG_xbars_0_26_0_port, p => CG_xbars_0_26_1_port);
   U_PG_PRIM_27 : PG_PRIM_69 port map( A => A(27), B => B(27), g => 
                           CG_xbars_0_27_0_port, p => CG_xbars_0_27_1_port);
   U_PG_PRIM_28 : PG_PRIM_68 port map( A => A(28), B => B(28), g => 
                           CG_xbars_0_28_0_port, p => CG_xbars_0_28_1_port);
   U_PG_PRIM_29 : PG_PRIM_67 port map( A => A(29), B => B(29), g => 
                           CG_xbars_0_29_0_port, p => CG_xbars_0_29_1_port);
   U_PG_PRIM_30 : PG_PRIM_66 port map( A => A(30), B => B(30), g => 
                           CG_xbars_0_30_0_port, p => CG_xbars_0_30_1_port);
   U_PG_PRIM_31 : PG_PRIM_65 port map( A => A(31), B => B(31), g => 
                           CG_xbars_0_31_0_port, p => CG_xbars_0_31_1_port);
   U_BKBONE_GG_UNIT_1_1 : GG_110 port map( G_current => CG_xbars_0_1_0_port, 
                           P_current => CG_xbars_0_1_1_port, G_prev => 
                           CG_xbars_0_0_0_port, G => CG_xbars_1_1_0_port);
   U_BKBONE_GG_UNIT_1_3 : GG_109 port map( G_current => CG_xbars_0_3_0_port, 
                           P_current => CG_xbars_0_3_1_port, G_prev => 
                           CG_xbars_0_2_0_port, G => CG_xbars_1_3_0_port);
   U_BKBONE_GP_UNIT_1_3 : gp_54 port map( P_current => CG_xbars_0_3_1_port, 
                           P_prev => CG_xbars_0_2_1_port, P => 
                           CG_xbars_1_3_1_port);
   U_BKBONE_GG_UNIT_1_5 : GG_108 port map( G_current => CG_xbars_0_5_0_port, 
                           P_current => CG_xbars_0_5_1_port, G_prev => 
                           CG_xbars_0_4_0_port, G => CG_xbars_1_5_0_port);
   U_BKBONE_GP_UNIT_1_5 : gp_80 port map( P_current => CG_xbars_0_5_1_port, 
                           P_prev => CG_xbars_0_4_1_port, P => 
                           CG_xbars_1_5_1_port);
   U_BKBONE_GG_UNIT_1_7 : GG_107 port map( G_current => CG_xbars_0_7_0_port, 
                           P_current => CG_xbars_0_7_1_port, G_prev => 
                           CG_xbars_0_6_0_port, G => CG_xbars_1_7_0_port);
   U_BKBONE_GP_UNIT_1_7 : gp_79 port map( P_current => CG_xbars_0_7_1_port, 
                           P_prev => CG_xbars_0_6_1_port, P => 
                           CG_xbars_1_7_1_port);
   U_BKBONE_GG_UNIT_1_9 : GG_106 port map( G_current => CG_xbars_0_9_0_port, 
                           P_current => CG_xbars_0_9_1_port, G_prev => 
                           CG_xbars_0_8_0_port, G => CG_xbars_1_9_0_port);
   U_BKBONE_GP_UNIT_1_9 : gp_78 port map( P_current => CG_xbars_0_9_1_port, 
                           P_prev => CG_xbars_0_8_1_port, P => 
                           CG_xbars_1_9_1_port);
   U_BKBONE_GG_UNIT_1_11 : GG_105 port map( G_current => CG_xbars_0_11_0_port, 
                           P_current => CG_xbars_0_11_1_port, G_prev => 
                           CG_xbars_0_10_0_port, G => CG_xbars_1_11_0_port);
   U_BKBONE_GP_UNIT_1_11 : gp_77 port map( P_current => CG_xbars_0_11_1_port, 
                           P_prev => CG_xbars_0_10_1_port, P => 
                           CG_xbars_1_11_1_port);
   U_BKBONE_GG_UNIT_1_13 : GG_104 port map( G_current => CG_xbars_0_13_0_port, 
                           P_current => CG_xbars_0_13_1_port, G_prev => 
                           CG_xbars_0_12_0_port, G => CG_xbars_1_13_0_port);
   U_BKBONE_GP_UNIT_1_13 : gp_76 port map( P_current => CG_xbars_0_13_1_port, 
                           P_prev => CG_xbars_0_12_1_port, P => 
                           CG_xbars_1_13_1_port);
   U_BKBONE_GG_UNIT_1_15 : GG_103 port map( G_current => CG_xbars_0_15_0_port, 
                           P_current => CG_xbars_0_15_1_port, G_prev => 
                           CG_xbars_0_14_0_port, G => CG_xbars_1_15_0_port);
   U_BKBONE_GP_UNIT_1_15 : gp_75 port map( P_current => CG_xbars_0_15_1_port, 
                           P_prev => CG_xbars_0_14_1_port, P => 
                           CG_xbars_1_15_1_port);
   U_BKBONE_GG_UNIT_1_17 : GG_102 port map( G_current => CG_xbars_0_17_0_port, 
                           P_current => CG_xbars_0_17_1_port, G_prev => 
                           CG_xbars_0_16_0_port, G => CG_xbars_1_17_0_port);
   U_BKBONE_GP_UNIT_1_17 : gp_74 port map( P_current => CG_xbars_0_17_1_port, 
                           P_prev => CG_xbars_0_16_1_port, P => 
                           CG_xbars_1_17_1_port);
   U_BKBONE_GG_UNIT_1_19 : GG_101 port map( G_current => CG_xbars_0_19_0_port, 
                           P_current => CG_xbars_0_19_1_port, G_prev => 
                           CG_xbars_0_18_0_port, G => CG_xbars_1_19_0_port);
   U_BKBONE_GP_UNIT_1_19 : gp_73 port map( P_current => CG_xbars_0_19_1_port, 
                           P_prev => CG_xbars_0_18_1_port, P => 
                           CG_xbars_1_19_1_port);
   U_BKBONE_GG_UNIT_1_21 : GG_100 port map( G_current => CG_xbars_0_21_0_port, 
                           P_current => CG_xbars_0_21_1_port, G_prev => 
                           CG_xbars_0_20_0_port, G => CG_xbars_1_21_0_port);
   U_BKBONE_GP_UNIT_1_21 : gp_72 port map( P_current => CG_xbars_0_21_1_port, 
                           P_prev => CG_xbars_0_20_1_port, P => 
                           CG_xbars_1_21_1_port);
   U_BKBONE_GG_UNIT_1_23 : GG_99 port map( G_current => CG_xbars_0_23_0_port, 
                           P_current => CG_xbars_0_23_1_port, G_prev => 
                           CG_xbars_0_22_0_port, G => CG_xbars_1_23_0_port);
   U_BKBONE_GP_UNIT_1_23 : gp_71 port map( P_current => CG_xbars_0_23_1_port, 
                           P_prev => CG_xbars_0_22_1_port, P => 
                           CG_xbars_1_23_1_port);
   U_BKBONE_GG_UNIT_1_25 : GG_98 port map( G_current => CG_xbars_0_25_0_port, 
                           P_current => CG_xbars_0_25_1_port, G_prev => 
                           CG_xbars_0_24_0_port, G => CG_xbars_1_25_0_port);
   U_BKBONE_GP_UNIT_1_25 : gp_70 port map( P_current => CG_xbars_0_25_1_port, 
                           P_prev => CG_xbars_0_24_1_port, P => 
                           CG_xbars_1_25_1_port);
   U_BKBONE_GG_UNIT_1_27 : GG_97 port map( G_current => CG_xbars_0_27_0_port, 
                           P_current => CG_xbars_0_27_1_port, G_prev => 
                           CG_xbars_0_26_0_port, G => CG_xbars_1_27_0_port);
   U_BKBONE_GP_UNIT_1_27 : gp_69 port map( P_current => CG_xbars_0_27_1_port, 
                           P_prev => CG_xbars_0_26_1_port, P => 
                           CG_xbars_1_27_1_port);
   U_BKBONE_GG_UNIT_1_29 : GG_96 port map( G_current => CG_xbars_0_29_0_port, 
                           P_current => CG_xbars_0_29_1_port, G_prev => 
                           CG_xbars_0_28_0_port, G => CG_xbars_1_29_0_port);
   U_BKBONE_GP_UNIT_1_29 : gp_68 port map( P_current => CG_xbars_0_29_1_port, 
                           P_prev => CG_xbars_0_28_1_port, P => 
                           CG_xbars_1_29_1_port);
   U_BKBONE_GG_UNIT_1_31 : GG_95 port map( G_current => CG_xbars_0_31_0_port, 
                           P_current => CG_xbars_0_31_1_port, G_prev => 
                           CG_xbars_0_30_0_port, G => CG_xbars_1_31_0_port);
   U_BKBONE_GP_UNIT_1_31 : gp_67 port map( P_current => CG_xbars_0_31_1_port, 
                           P_prev => CG_xbars_0_30_1_port, P => 
                           CG_xbars_1_31_1_port);
   U_BKBONE_GG_UNIT_2_3 : GG_94 port map( G_current => CG_xbars_1_3_0_port, 
                           P_current => CG_xbars_1_3_1_port, G_prev => 
                           CG_xbars_1_1_0_port, G => n8);
   U_BKBONE_GG_UNIT_2_7 : GG_93 port map( G_current => CG_xbars_1_7_0_port, 
                           P_current => CG_xbars_1_7_1_port, G_prev => 
                           CG_xbars_1_5_0_port, G => CG_xbars_2_7_0_port);
   U_BKBONE_GP_UNIT_2_7 : gp_66 port map( P_current => CG_xbars_1_7_1_port, 
                           P_prev => CG_xbars_1_5_1_port, P => 
                           CG_xbars_2_7_1_port);
   U_BKBONE_GG_UNIT_2_11 : GG_92 port map( G_current => CG_xbars_1_11_0_port, 
                           P_current => CG_xbars_1_11_1_port, G_prev => 
                           CG_xbars_1_9_0_port, G => CG_xbars_2_11_0_port);
   U_BKBONE_GP_UNIT_2_11 : gp_65 port map( P_current => CG_xbars_1_11_1_port, 
                           P_prev => CG_xbars_1_9_1_port, P => 
                           CG_xbars_2_11_1_port);
   U_BKBONE_GG_UNIT_2_15 : GG_91 port map( G_current => CG_xbars_1_15_0_port, 
                           P_current => CG_xbars_1_15_1_port, G_prev => 
                           CG_xbars_1_13_0_port, G => CG_xbars_2_15_0_port);
   U_BKBONE_GP_UNIT_2_15 : gp_64 port map( P_current => CG_xbars_1_15_1_port, 
                           P_prev => CG_xbars_1_13_1_port, P => 
                           CG_xbars_2_15_1_port);
   U_BKBONE_GG_UNIT_2_19 : GG_90 port map( G_current => CG_xbars_1_19_0_port, 
                           P_current => CG_xbars_1_19_1_port, G_prev => 
                           CG_xbars_1_17_0_port, G => CG_xbars_2_19_0_port);
   U_BKBONE_GP_UNIT_2_19 : gp_63 port map( P_current => CG_xbars_1_19_1_port, 
                           P_prev => CG_xbars_1_17_1_port, P => 
                           CG_xbars_2_19_1_port);
   U_BKBONE_GG_UNIT_2_23 : GG_89 port map( G_current => CG_xbars_1_23_0_port, 
                           P_current => CG_xbars_1_23_1_port, G_prev => 
                           CG_xbars_1_21_0_port, G => CG_xbars_2_23_0_port);
   U_BKBONE_GP_UNIT_2_23 : gp_62 port map( P_current => CG_xbars_1_23_1_port, 
                           P_prev => CG_xbars_1_21_1_port, P => 
                           CG_xbars_2_23_1_port);
   U_BKBONE_GG_UNIT_2_27 : GG_88 port map( G_current => CG_xbars_1_27_0_port, 
                           P_current => CG_xbars_1_27_1_port, G_prev => 
                           CG_xbars_1_25_0_port, G => CG_xbars_2_27_0_port);
   U_BKBONE_GP_UNIT_2_27 : gp_61 port map( P_current => CG_xbars_1_27_1_port, 
                           P_prev => CG_xbars_1_25_1_port, P => 
                           CG_xbars_2_27_1_port);
   U_BKBONE_GG_UNIT_2_31 : GG_87 port map( G_current => CG_xbars_1_31_0_port, 
                           P_current => CG_xbars_1_31_1_port, G_prev => 
                           CG_xbars_1_29_0_port, G => CG_xbars_2_31_0_port);
   U_BKBONE_GP_UNIT_2_31 : gp_60 port map( P_current => CG_xbars_1_31_1_port, 
                           P_prev => CG_xbars_1_29_1_port, P => 
                           CG_xbars_2_31_1_port);
   U_LF_GG_UNIT_1_7 : GG_86 port map( G_current => CG_xbars_2_7_0_port, 
                           P_current => CG_xbars_2_7_1_port, G_prev => n8, G =>
                           n7);
   U_LF_GG_UNIT_1_15 : GG_85 port map( G_current => CG_xbars_2_15_0_port, 
                           P_current => CG_xbars_2_15_1_port, G_prev => 
                           CG_xbars_2_11_0_port, G => CG_xbars_3_15_0_port);
   U_LF_GP_UNIT_1_15 : gp_59 port map( P_current => CG_xbars_2_15_1_port, 
                           P_prev => CG_xbars_2_11_1_port, P => 
                           CG_xbars_3_15_1_port);
   U_LF_GG_UNIT_1_23 : GG_84 port map( G_current => CG_xbars_2_23_0_port, 
                           P_current => CG_xbars_2_23_1_port, G_prev => 
                           CG_xbars_2_19_0_port, G => CG_xbars_3_23_0_port);
   U_LF_GP_UNIT_1_23 : gp_58 port map( P_current => CG_xbars_2_23_1_port, 
                           P_prev => CG_xbars_2_19_1_port, P => 
                           CG_xbars_3_23_1_port);
   U_LF_GG_UNIT_1_31 : GG_83 port map( G_current => CG_xbars_2_31_0_port, 
                           P_current => CG_xbars_2_31_1_port, G_prev => 
                           CG_xbars_2_27_0_port, G => CG_xbars_3_31_0_port);
   U_LF_GP_UNIT_1_31 : gp_57 port map( P_current => CG_xbars_2_31_1_port, 
                           P_prev => CG_xbars_2_27_1_port, P => 
                           CG_xbars_3_31_1_port);
   U_LF_GG_UNIT_2_11 : GG_82 port map( G_current => CG_xbars_2_11_0_port, 
                           P_current => CG_xbars_2_11_1_port, G_prev => n1, G 
                           => Co_2_port);
   U_LF_GG_UNIT_2_15 : GG_81 port map( G_current => CG_xbars_3_15_0_port, 
                           P_current => CG_xbars_3_15_1_port, G_prev => n7, G 
                           => n6);
   U_LF_GG_UNIT_2_27 : GG_80 port map( G_current => CG_xbars_2_27_0_port, 
                           P_current => CG_xbars_2_27_1_port, G_prev => 
                           CG_xbars_3_23_0_port, G => CG_xbars_4_27_0_port);
   U_LF_GP_UNIT_2_27 : gp_56 port map( P_current => CG_xbars_2_27_1_port, 
                           P_prev => CG_xbars_3_23_1_port, P => 
                           CG_xbars_4_27_1_port);
   U_LF_GG_UNIT_2_31 : GG_79 port map( G_current => CG_xbars_3_31_0_port, 
                           P_current => CG_xbars_3_31_1_port, G_prev => 
                           CG_xbars_3_23_0_port, G => CG_xbars_4_31_0_port);
   U_LF_GP_UNIT_2_31 : gp_55 port map( P_current => CG_xbars_3_31_1_port, 
                           P_prev => CG_xbars_3_23_1_port, P => 
                           CG_xbars_4_31_1_port);
   U_LF_GG_UNIT_3_19 : GG_78 port map( G_current => CG_xbars_2_19_0_port, 
                           P_current => CG_xbars_2_19_1_port, G_prev => n6, G 
                           => Co_4_port);
   U_LF_GG_UNIT_3_23 : GG_77 port map( G_current => CG_xbars_3_23_0_port, 
                           P_current => CG_xbars_3_23_1_port, G_prev => n6, G 
                           => Co_5_port);
   U_LF_GG_UNIT_3_27 : GG_76 port map( G_current => CG_xbars_4_27_0_port, 
                           P_current => CG_xbars_4_27_1_port, G_prev => n6, G 
                           => Co_6_port);
   U_LF_GG_UNIT_3_31 : GG_75 port map( G_current => CG_xbars_4_31_0_port, 
                           P_current => CG_xbars_4_31_1_port, G_prev => 
                           Co_3_port, G => Co_7_port);
   U1 : BUF_X1 port map( A => n7, Z => n1);
   U2 : BUF_X2 port map( A => n6, Z => Co_3_port);
   U3 : INV_X1 port map( A => n1, ZN => n3);
   U4 : INV_X1 port map( A => n3, ZN => Co_1_port);
   U5 : CLKBUF_X1 port map( A => n8, Z => Co_0_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity P4_ADDER_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER_NBIT32;

architecture SYN_STRUCTURAL of P4_ADDER_NBIT32 is

   component SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7_3
      port( A, B : in std_logic_vector (27 downto 0);  Ci : in std_logic_vector
            (6 downto 0);  S : out std_logic_vector (27 downto 0));
   end component;
   
   component RCA_NBIT4_2_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4_3
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal carry_gen_Co_6_port, carry_gen_Co_5_port, carry_gen_Co_4_port, 
      carry_gen_Co_3_port, carry_gen_Co_2_port, carry_gen_Co_1_port, 
      carry_gen_Co_0_port, n_1007 : std_logic;

begin
   
   U_CARRY_GENERATOR : CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4_3 port map( A(31)
                           => A(31), A(30) => A(30), A(29) => A(29), A(28) => 
                           A(28), A(27) => A(27), A(26) => A(26), A(25) => 
                           A(25), A(24) => A(24), A(23) => A(23), A(22) => 
                           A(22), A(21) => A(21), A(20) => A(20), A(19) => 
                           A(19), A(18) => A(18), A(17) => A(17), A(16) => 
                           A(16), A(15) => A(15), A(14) => A(14), A(13) => 
                           A(13), A(12) => A(12), A(11) => A(11), A(10) => 
                           A(10), A(9) => A(9), A(8) => A(8), A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(31) => B(31), B(30) => B(30), B(29) => B(29), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           Cin => Cin, Co(7) => Cout, Co(6) => 
                           carry_gen_Co_6_port, Co(5) => carry_gen_Co_5_port, 
                           Co(4) => carry_gen_Co_4_port, Co(3) => 
                           carry_gen_Co_3_port, Co(2) => carry_gen_Co_2_port, 
                           Co(1) => carry_gen_Co_1_port, Co(0) => 
                           carry_gen_Co_0_port);
   U_FIRST_RCA : RCA_NBIT4_2_0 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => Cin, S(3) => S(3), S(2)
                           => S(2), S(1) => S(1), S(0) => S(0), Co => n_1007);
   U_SUM_GENERATOR : SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7_3 port map( A(27) 
                           => A(31), A(26) => A(30), A(25) => A(29), A(24) => 
                           A(28), A(23) => A(27), A(22) => A(26), A(21) => 
                           A(25), A(20) => A(24), A(19) => A(23), A(18) => 
                           A(22), A(17) => A(21), A(16) => A(20), A(15) => 
                           A(19), A(14) => A(18), A(13) => A(17), A(12) => 
                           A(16), A(11) => A(15), A(10) => A(14), A(9) => A(13)
                           , A(8) => A(12), A(7) => A(11), A(6) => A(10), A(5) 
                           => A(9), A(4) => A(8), A(3) => A(7), A(2) => A(6), 
                           A(1) => A(5), A(0) => A(4), B(27) => B(31), B(26) =>
                           B(30), B(25) => B(29), B(24) => B(28), B(23) => 
                           B(27), B(22) => B(26), B(21) => B(25), B(20) => 
                           B(24), B(19) => B(23), B(18) => B(22), B(17) => 
                           B(21), B(16) => B(20), B(15) => B(19), B(14) => 
                           B(18), B(13) => B(17), B(12) => B(16), B(11) => 
                           B(15), B(10) => B(14), B(9) => B(13), B(8) => B(12),
                           B(7) => B(11), B(6) => B(10), B(5) => B(9), B(4) => 
                           B(8), B(3) => B(7), B(2) => B(6), B(1) => B(5), B(0)
                           => B(4), Ci(6) => carry_gen_Co_6_port, Ci(5) => 
                           carry_gen_Co_5_port, Ci(4) => carry_gen_Co_4_port, 
                           Ci(3) => carry_gen_Co_3_port, Ci(2) => 
                           carry_gen_Co_2_port, Ci(1) => carry_gen_Co_1_port, 
                           Ci(0) => carry_gen_Co_0_port, S(27) => S(31), S(26) 
                           => S(30), S(25) => S(29), S(24) => S(28), S(23) => 
                           S(27), S(22) => S(26), S(21) => S(25), S(20) => 
                           S(24), S(19) => S(23), S(18) => S(22), S(17) => 
                           S(21), S(16) => S(20), S(15) => S(19), S(14) => 
                           S(18), S(13) => S(17), S(12) => S(16), S(11) => 
                           S(15), S(10) => S(14), S(9) => S(13), S(8) => S(12),
                           S(7) => S(11), S(6) => S(10), S(5) => S(9), S(4) => 
                           S(8), S(3) => S(7), S(2) => S(6), S(1) => S(5), S(0)
                           => S(4));

end SYN_STRUCTURAL;
