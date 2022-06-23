
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_6;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, n12,
      n13, n14, n15, n16 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n6);
   U4 : INV_X1 port map( A => n12, ZN => Co);
   U5 : INV_X1 port map( A => n13, ZN => S(0));
   U6 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n13);
   U7 : INV_X1 port map( A => n14, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n14);
   U9 : INV_X1 port map( A => n15, ZN => S(2));
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n15);
   U11 : INV_X1 port map( A => n16, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n16);
   U13 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => 
                           n12);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_5;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, n12,
      n13, n14, n15, n16 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n6);
   U4 : INV_X1 port map( A => n12, ZN => Co);
   U5 : INV_X1 port map( A => n13, ZN => S(0));
   U6 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n13);
   U7 : INV_X1 port map( A => n14, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n14);
   U9 : INV_X1 port map( A => n15, ZN => S(2));
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n15);
   U11 : INV_X1 port map( A => n16, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n16);
   U13 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => 
                           n12);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_4;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, n12,
      n13, n14, n15, n16 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n6);
   U4 : INV_X1 port map( A => n12, ZN => Co);
   U5 : INV_X1 port map( A => n13, ZN => S(0));
   U6 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n13);
   U7 : INV_X1 port map( A => n14, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n14);
   U9 : INV_X1 port map( A => n15, ZN => S(2));
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n15);
   U11 : INV_X1 port map( A => n16, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n16);
   U13 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => 
                           n12);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_3;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, n12,
      n13, n14, n15, n16 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n6);
   U4 : INV_X1 port map( A => n12, ZN => Co);
   U5 : INV_X1 port map( A => n13, ZN => S(0));
   U6 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n13);
   U7 : INV_X1 port map( A => n14, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n14);
   U9 : INV_X1 port map( A => n15, ZN => S(2));
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n15);
   U11 : INV_X1 port map( A => n16, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n16);
   U13 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => 
                           n12);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_2;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, n12,
      n13, n14, n15, n16 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n6);
   U4 : INV_X1 port map( A => n12, ZN => Co);
   U5 : INV_X1 port map( A => n13, ZN => S(0));
   U6 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n13);
   U7 : INV_X1 port map( A => n14, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n14);
   U9 : INV_X1 port map( A => n15, ZN => S(2));
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n15);
   U11 : INV_X1 port map( A => n16, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n16);
   U13 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => 
                           n12);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CSB_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_1;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n6, n12,
      n13, n14, n15, n16 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n6);
   U4 : INV_X1 port map( A => n12, ZN => Co);
   U5 : INV_X1 port map( A => n13, ZN => S(0));
   U6 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n13);
   U7 : INV_X1 port map( A => n14, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n14);
   U9 : INV_X1 port map( A => n15, ZN => S(2));
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n15);
   U11 : INV_X1 port map( A => n16, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n16);
   U13 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => 
                           n12);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_26 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_26;

architecture SYN_BEHAVIORAL of gp_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_25 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_25;

architecture SYN_BEHAVIORAL of gp_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_24 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_24;

architecture SYN_BEHAVIORAL of gp_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_23 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_23;

architecture SYN_BEHAVIORAL of gp_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_22 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_22;

architecture SYN_BEHAVIORAL of gp_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_21 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_21;

architecture SYN_BEHAVIORAL of gp_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_20 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_20;

architecture SYN_BEHAVIORAL of gp_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_19 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_19;

architecture SYN_BEHAVIORAL of gp_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_18 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_18;

architecture SYN_BEHAVIORAL of gp_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_17 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_17;

architecture SYN_BEHAVIORAL of gp_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_16 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_16;

architecture SYN_BEHAVIORAL of gp_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_15 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_15;

architecture SYN_BEHAVIORAL of gp_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_14 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_14;

architecture SYN_BEHAVIORAL of gp_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_13 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_13;

architecture SYN_BEHAVIORAL of gp_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_12 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_12;

architecture SYN_BEHAVIORAL of gp_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_11 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_11;

architecture SYN_BEHAVIORAL of gp_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_10 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_10;

architecture SYN_BEHAVIORAL of gp_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_9 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_9;

architecture SYN_BEHAVIORAL of gp_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_8 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_8;

architecture SYN_BEHAVIORAL of gp_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_7 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_7;

architecture SYN_BEHAVIORAL of gp_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_6 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_6;

architecture SYN_BEHAVIORAL of gp_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_5 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_5;

architecture SYN_BEHAVIORAL of gp_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_4 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_4;

architecture SYN_BEHAVIORAL of gp_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_3 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_3;

architecture SYN_BEHAVIORAL of gp_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_2 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_2;

architecture SYN_BEHAVIORAL of gp_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_1 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_1;

architecture SYN_BEHAVIORAL of gp_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_36 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_36;

architecture SYN_BEHAVIORAL of GG_36 is

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

entity GG_35 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_35;

architecture SYN_BEHAVIORAL of GG_35 is

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

entity GG_34 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_34;

architecture SYN_BEHAVIORAL of GG_34 is

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

entity GG_33 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_33;

architecture SYN_BEHAVIORAL of GG_33 is

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

entity GG_32 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_32;

architecture SYN_BEHAVIORAL of GG_32 is

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

entity GG_31 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_31;

architecture SYN_BEHAVIORAL of GG_31 is

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

entity GG_30 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_30;

architecture SYN_BEHAVIORAL of GG_30 is

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

entity GG_29 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_29;

architecture SYN_BEHAVIORAL of GG_29 is

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

entity GG_28 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_28;

architecture SYN_BEHAVIORAL of GG_28 is

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

entity GG_27 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_27;

architecture SYN_BEHAVIORAL of GG_27 is

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

entity GG_26 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_26;

architecture SYN_BEHAVIORAL of GG_26 is

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

entity GG_25 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_25;

architecture SYN_BEHAVIORAL of GG_25 is

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

entity GG_24 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_24;

architecture SYN_BEHAVIORAL of GG_24 is

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

entity GG_23 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_23;

architecture SYN_BEHAVIORAL of GG_23 is

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

entity GG_22 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_22;

architecture SYN_BEHAVIORAL of GG_22 is

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

entity GG_21 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_21;

architecture SYN_BEHAVIORAL of GG_21 is

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

entity GG_20 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_20;

architecture SYN_BEHAVIORAL of GG_20 is

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

entity GG_19 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_19;

architecture SYN_BEHAVIORAL of GG_19 is

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

entity GG_18 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_18;

architecture SYN_BEHAVIORAL of GG_18 is

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

entity GG_17 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_17;

architecture SYN_BEHAVIORAL of GG_17 is

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

entity GG_16 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_16;

architecture SYN_BEHAVIORAL of GG_16 is

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

entity GG_15 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_15;

architecture SYN_BEHAVIORAL of GG_15 is

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

entity GG_14 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_14;

architecture SYN_BEHAVIORAL of GG_14 is

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

entity GG_13 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_13;

architecture SYN_BEHAVIORAL of GG_13 is

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

entity GG_12 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_12;

architecture SYN_BEHAVIORAL of GG_12 is

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

entity GG_11 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_11;

architecture SYN_BEHAVIORAL of GG_11 is

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

entity GG_10 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_10;

architecture SYN_BEHAVIORAL of GG_10 is

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

entity GG_9 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_9;

architecture SYN_BEHAVIORAL of GG_9 is

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

entity GG_8 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_8;

architecture SYN_BEHAVIORAL of GG_8 is

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

entity GG_7 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_7;

architecture SYN_BEHAVIORAL of GG_7 is

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

entity GG_6 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_6;

architecture SYN_BEHAVIORAL of GG_6 is

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

entity GG_5 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_5;

architecture SYN_BEHAVIORAL of GG_5 is

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

entity GG_4 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_4;

architecture SYN_BEHAVIORAL of GG_4 is

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

entity GG_3 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_3;

architecture SYN_BEHAVIORAL of GG_3 is

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

entity GG_2 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_2;

architecture SYN_BEHAVIORAL of GG_2 is

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

entity GG_1 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_1;

architecture SYN_BEHAVIORAL of GG_1 is

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

entity PG_PRIM_31 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_31;

architecture SYN_BEHAVIORAL of PG_PRIM_31 is

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

entity PG_PRIM_30 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_30;

architecture SYN_BEHAVIORAL of PG_PRIM_30 is

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

entity PG_PRIM_29 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_29;

architecture SYN_BEHAVIORAL of PG_PRIM_29 is

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

entity PG_PRIM_28 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_28;

architecture SYN_BEHAVIORAL of PG_PRIM_28 is

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

entity PG_PRIM_27 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_27;

architecture SYN_BEHAVIORAL of PG_PRIM_27 is

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

entity PG_PRIM_26 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_26;

architecture SYN_BEHAVIORAL of PG_PRIM_26 is

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

entity PG_PRIM_25 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_25;

architecture SYN_BEHAVIORAL of PG_PRIM_25 is

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

entity PG_PRIM_24 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_24;

architecture SYN_BEHAVIORAL of PG_PRIM_24 is

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

entity PG_PRIM_23 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_23;

architecture SYN_BEHAVIORAL of PG_PRIM_23 is

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

entity PG_PRIM_22 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_22;

architecture SYN_BEHAVIORAL of PG_PRIM_22 is

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

entity PG_PRIM_21 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_21;

architecture SYN_BEHAVIORAL of PG_PRIM_21 is

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

entity PG_PRIM_20 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_20;

architecture SYN_BEHAVIORAL of PG_PRIM_20 is

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

entity PG_PRIM_19 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_19;

architecture SYN_BEHAVIORAL of PG_PRIM_19 is

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

entity PG_PRIM_18 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_18;

architecture SYN_BEHAVIORAL of PG_PRIM_18 is

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

entity PG_PRIM_17 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_17;

architecture SYN_BEHAVIORAL of PG_PRIM_17 is

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

entity PG_PRIM_16 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_16;

architecture SYN_BEHAVIORAL of PG_PRIM_16 is

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

entity PG_PRIM_15 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_15;

architecture SYN_BEHAVIORAL of PG_PRIM_15 is

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

entity PG_PRIM_14 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_14;

architecture SYN_BEHAVIORAL of PG_PRIM_14 is

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

entity PG_PRIM_13 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_13;

architecture SYN_BEHAVIORAL of PG_PRIM_13 is

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

entity PG_PRIM_12 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_12;

architecture SYN_BEHAVIORAL of PG_PRIM_12 is

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

entity PG_PRIM_11 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_11;

architecture SYN_BEHAVIORAL of PG_PRIM_11 is

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

entity PG_PRIM_10 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_10;

architecture SYN_BEHAVIORAL of PG_PRIM_10 is

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

entity PG_PRIM_9 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_9;

architecture SYN_BEHAVIORAL of PG_PRIM_9 is

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

entity PG_PRIM_8 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_8;

architecture SYN_BEHAVIORAL of PG_PRIM_8 is

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

entity PG_PRIM_7 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_7;

architecture SYN_BEHAVIORAL of PG_PRIM_7 is

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

entity PG_PRIM_6 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_6;

architecture SYN_BEHAVIORAL of PG_PRIM_6 is

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

entity PG_PRIM_5 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_5;

architecture SYN_BEHAVIORAL of PG_PRIM_5 is

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

entity PG_PRIM_4 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_4;

architecture SYN_BEHAVIORAL of PG_PRIM_4 is

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

entity PG_PRIM_3 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_3;

architecture SYN_BEHAVIORAL of PG_PRIM_3 is

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

entity PG_PRIM_2 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_2;

architecture SYN_BEHAVIORAL of PG_PRIM_2 is

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

entity PG_PRIM_1 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_1;

architecture SYN_BEHAVIORAL of PG_PRIM_1 is

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

entity RCA_NBIT4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_14;

architecture SYN_BEHAVIORAL of RCA_NBIT4_14 is

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

entity RCA_NBIT4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_13;

architecture SYN_BEHAVIORAL of RCA_NBIT4_13 is

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

entity RCA_NBIT4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_12;

architecture SYN_BEHAVIORAL of RCA_NBIT4_12 is

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

entity RCA_NBIT4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_11;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_11 is

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

entity RCA_NBIT4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_10;

architecture SYN_BEHAVIORAL of RCA_NBIT4_10 is

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

entity RCA_NBIT4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_9;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_9 is

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

entity RCA_NBIT4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_8;

architecture SYN_BEHAVIORAL of RCA_NBIT4_8 is

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

entity RCA_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_7;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_7 is

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

entity RCA_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_6;

architecture SYN_BEHAVIORAL of RCA_NBIT4_6 is

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

entity RCA_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_5;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_5 is

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

entity RCA_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_4;

architecture SYN_BEHAVIORAL of RCA_NBIT4_4 is

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

entity RCA_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_3;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_3 is

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

entity RCA_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2 is

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

entity RCA_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_1;

architecture SYN_BEHAVIORAL_architecture of RCA_NBIT4_1 is

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

entity CSB_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0);  Co : out std_logic);

end CSB_NBIT4_0;

architecture SYN_BEHAVIOURAL of CSB_NBIT4_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, Co0, S1_3_port, S1_2_port, S1_1_port, S1_0_port, Co1, n7, n8, 
      n9, n10, n11, n6 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U_RCA0 : RCA_NBIT4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           S0_3_port, S(2) => S0_2_port, S(1) => S0_1_port, 
                           S(0) => S0_0_port, Co => Co0);
   U_RCA1 : RCA_NBIT4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           S1_3_port, S(2) => S1_2_port, S(1) => S1_1_port, 
                           S(0) => S1_0_port, Co => Co1);
   U3 : INV_X1 port map( A => Cin, ZN => n6);
   U4 : INV_X1 port map( A => n11, ZN => Co);
   U5 : INV_X1 port map( A => n10, ZN => S(0));
   U6 : AOI22_X1 port map( A1 => S0_0_port, A2 => n6, B1 => S1_0_port, B2 => 
                           Cin, ZN => n10);
   U7 : INV_X1 port map( A => n9, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n6, B1 => S1_1_port, B2 => 
                           Cin, ZN => n9);
   U9 : INV_X1 port map( A => n8, ZN => S(2));
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n6, B1 => S1_2_port, B2 => 
                           Cin, ZN => n8);
   U11 : INV_X1 port map( A => n7, ZN => S(3));
   U12 : AOI22_X1 port map( A1 => S0_3_port, A2 => n6, B1 => S1_3_port, B2 => 
                           Cin, ZN => n7);
   U13 : AOI22_X1 port map( A1 => Co0, A2 => n6, B1 => Co1, B2 => Cin, ZN => 
                           n11);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity gp_0 is

   port( P_current, P_prev : in std_logic;  P : out std_logic);

end gp_0;

architecture SYN_BEHAVIORAL of gp_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => P_prev, A2 => P_current, ZN => P);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_0 is

   port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);

end GG_0;

architecture SYN_BEHAVIORAL of GG_0 is

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

entity PG_PRIM_0 is

   port( A, B : in std_logic;  g, p : out std_logic);

end PG_PRIM_0;

architecture SYN_BEHAVIORAL of PG_PRIM_0 is

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

entity SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7 is

   port( A, B : in std_logic_vector (27 downto 0);  Ci : in std_logic_vector (6
         downto 0);  S : out std_logic_vector (27 downto 0));

end SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7;

architecture SYN_BEHAVIOURAL of SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7 is

   component CSB_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CSB_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006 : std_logic;

begin
   
   U_CSB_1 : CSB_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Cin => Ci(0), S(3) => S(3), S(2)
                           => S(2), S(1) => S(1), S(0) => S(0), Co => n_1000);
   U_CSB_2 : CSB_NBIT4_6 port map( A(3) => A(7), A(2) => A(6), A(1) => A(5), 
                           A(0) => A(4), B(3) => B(7), B(2) => B(6), B(1) => 
                           B(5), B(0) => B(4), Cin => Ci(1), S(3) => S(7), S(2)
                           => S(6), S(1) => S(5), S(0) => S(4), Co => n_1001);
   U_CSB_3 : CSB_NBIT4_5 port map( A(3) => A(11), A(2) => A(10), A(1) => A(9), 
                           A(0) => A(8), B(3) => B(11), B(2) => B(10), B(1) => 
                           B(9), B(0) => B(8), Cin => Ci(2), S(3) => S(11), 
                           S(2) => S(10), S(1) => S(9), S(0) => S(8), Co => 
                           n_1002);
   U_CSB_4 : CSB_NBIT4_4 port map( A(3) => A(15), A(2) => A(14), A(1) => A(13),
                           A(0) => A(12), B(3) => B(15), B(2) => B(14), B(1) =>
                           B(13), B(0) => B(12), Cin => Ci(3), S(3) => S(15), 
                           S(2) => S(14), S(1) => S(13), S(0) => S(12), Co => 
                           n_1003);
   U_CSB_5 : CSB_NBIT4_3 port map( A(3) => A(19), A(2) => A(18), A(1) => A(17),
                           A(0) => A(16), B(3) => B(19), B(2) => B(18), B(1) =>
                           B(17), B(0) => B(16), Cin => Ci(4), S(3) => S(19), 
                           S(2) => S(18), S(1) => S(17), S(0) => S(16), Co => 
                           n_1004);
   U_CSB_6 : CSB_NBIT4_2 port map( A(3) => A(23), A(2) => A(22), A(1) => A(21),
                           A(0) => A(20), B(3) => B(23), B(2) => B(22), B(1) =>
                           B(21), B(0) => B(20), Cin => Ci(5), S(3) => S(23), 
                           S(2) => S(22), S(1) => S(21), S(0) => S(20), Co => 
                           n_1005);
   U_CSB_7 : CSB_NBIT4_1 port map( A(3) => A(27), A(2) => A(26), A(1) => A(25),
                           A(0) => A(24), B(3) => B(27), B(2) => B(26), B(1) =>
                           B(25), B(0) => B(24), Cin => Ci(6), S(3) => S(27), 
                           S(2) => S(26), S(1) => S(25), S(0) => S(24), Co => 
                           n_1006);

end SYN_BEHAVIOURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity RCA_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_0;

architecture SYN_BEHAVIORAL of RCA_NBIT4_0 is

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

entity CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_STRUCTURAL of CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   component GG_1
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_2
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_3
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_4
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_1
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_5
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_2
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_6
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_7
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_8
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_3
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_9
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_4
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_10
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_5
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_11
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_12
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_6
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_13
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_7
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_14
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_8
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_15
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_9
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_16
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_10
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_17
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_11
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_18
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_12
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_19
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_20
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_13
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_21
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_14
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_22
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_15
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_23
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_16
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_24
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_17
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_25
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_18
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_26
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_19
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_27
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_20
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_28
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_21
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_29
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_22
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_30
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_23
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_31
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_24
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_32
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_25
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_33
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_26
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_34
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component gp_0
      port( P_current, P_prev : in std_logic;  P : out std_logic);
   end component;
   
   component GG_35
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component GG_36
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component PG_PRIM_1
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_2
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_3
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_4
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_5
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_6
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_7
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_8
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_9
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_10
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_11
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_12
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_13
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_14
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_15
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_16
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_17
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_18
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_19
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_20
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_21
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_22
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_23
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_24
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_25
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_26
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_27
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_28
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_29
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_30
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component PG_PRIM_31
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   component GG_0
      port( G_current, P_current, G_prev : in std_logic;  G : out std_logic);
   end component;
   
   component PG_PRIM_0
      port( A, B : in std_logic;  g, p : out std_logic);
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port, p_0, g_0, CG_xbars_4_31_1_port, 
      CG_xbars_4_31_0_port, CG_xbars_4_27_1_port, CG_xbars_4_27_0_port, 
      CG_xbars_3_31_1_port, CG_xbars_3_31_0_port, CG_xbars_3_23_1_port, 
      CG_xbars_3_23_0_port, CG_xbars_3_15_1_port, CG_xbars_3_15_0_port, 
      CG_xbars_2_31_1_port, CG_xbars_2_31_0_port, CG_xbars_2_27_1_port, 
      CG_xbars_2_27_0_port, CG_xbars_2_23_1_port, CG_xbars_2_23_0_port, 
      CG_xbars_2_19_1_port, CG_xbars_2_19_0_port, CG_xbars_2_15_1_port, 
      CG_xbars_2_15_0_port, CG_xbars_2_11_1_port, CG_xbars_2_11_0_port, 
      CG_xbars_2_7_1_port, CG_xbars_2_7_0_port, CG_xbars_1_31_1_port, 
      CG_xbars_1_31_0_port, CG_xbars_1_29_1_port, CG_xbars_1_29_0_port, 
      CG_xbars_1_27_1_port, CG_xbars_1_27_0_port, CG_xbars_1_25_1_port, 
      CG_xbars_1_25_0_port, CG_xbars_1_23_1_port, CG_xbars_1_23_0_port, 
      CG_xbars_1_21_1_port, CG_xbars_1_21_0_port, CG_xbars_1_19_1_port, 
      CG_xbars_1_19_0_port, CG_xbars_1_17_1_port, CG_xbars_1_17_0_port, 
      CG_xbars_1_15_1_port, CG_xbars_1_15_0_port, CG_xbars_1_13_1_port, 
      CG_xbars_1_13_0_port, CG_xbars_1_11_1_port, CG_xbars_1_11_0_port, 
      CG_xbars_1_9_1_port, CG_xbars_1_9_0_port, CG_xbars_1_7_1_port, 
      CG_xbars_1_7_0_port, CG_xbars_1_5_1_port, CG_xbars_1_5_0_port, 
      CG_xbars_1_3_1_port, CG_xbars_1_3_0_port, CG_xbars_1_1_0_port, 
      CG_xbars_0_31_1_port, CG_xbars_0_31_0_port, CG_xbars_0_30_1_port, 
      CG_xbars_0_30_0_port, CG_xbars_0_29_1_port, CG_xbars_0_29_0_port, 
      CG_xbars_0_28_1_port, CG_xbars_0_28_0_port, CG_xbars_0_27_1_port, 
      CG_xbars_0_27_0_port, CG_xbars_0_26_1_port, CG_xbars_0_26_0_port, 
      CG_xbars_0_25_1_port, CG_xbars_0_25_0_port, CG_xbars_0_24_1_port, 
      CG_xbars_0_24_0_port, CG_xbars_0_23_1_port, CG_xbars_0_23_0_port, 
      CG_xbars_0_22_1_port, CG_xbars_0_22_0_port, CG_xbars_0_21_1_port, 
      CG_xbars_0_21_0_port, CG_xbars_0_20_1_port, CG_xbars_0_20_0_port, 
      CG_xbars_0_19_1_port, CG_xbars_0_19_0_port, CG_xbars_0_18_1_port, 
      CG_xbars_0_18_0_port, CG_xbars_0_17_1_port, CG_xbars_0_17_0_port, 
      CG_xbars_0_16_1_port, CG_xbars_0_16_0_port, CG_xbars_0_15_1_port, 
      CG_xbars_0_15_0_port, CG_xbars_0_14_1_port, CG_xbars_0_14_0_port, 
      CG_xbars_0_13_1_port, CG_xbars_0_13_0_port, CG_xbars_0_12_1_port, 
      CG_xbars_0_12_0_port, CG_xbars_0_11_1_port, CG_xbars_0_11_0_port, 
      CG_xbars_0_10_1_port, CG_xbars_0_10_0_port, CG_xbars_0_9_1_port, 
      CG_xbars_0_9_0_port, CG_xbars_0_8_1_port, CG_xbars_0_8_0_port, 
      CG_xbars_0_7_1_port, CG_xbars_0_7_0_port, CG_xbars_0_6_1_port, 
      CG_xbars_0_6_0_port, CG_xbars_0_5_1_port, CG_xbars_0_5_0_port, 
      CG_xbars_0_4_1_port, CG_xbars_0_4_0_port, CG_xbars_0_3_1_port, 
      CG_xbars_0_3_0_port, CG_xbars_0_2_1_port, CG_xbars_0_2_0_port, 
      CG_xbars_0_1_1_port, CG_xbars_0_1_0_port, CG_xbars_0_0_0_port : std_logic
      ;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   U_PG_PRIM_0 : PG_PRIM_0 port map( A => A(0), B => B(0), g => g_0, p => p_0);
   U_RXMOST_PG_PRIM_IS_GG_UNIT_0 : GG_0 port map( G_current => g_0, P_current 
                           => p_0, G_prev => Cin, G => CG_xbars_0_0_0_port);
   U_PG_PRIM_1 : PG_PRIM_31 port map( A => A(1), B => B(1), g => 
                           CG_xbars_0_1_0_port, p => CG_xbars_0_1_1_port);
   U_PG_PRIM_2 : PG_PRIM_30 port map( A => A(2), B => B(2), g => 
                           CG_xbars_0_2_0_port, p => CG_xbars_0_2_1_port);
   U_PG_PRIM_3 : PG_PRIM_29 port map( A => A(3), B => B(3), g => 
                           CG_xbars_0_3_0_port, p => CG_xbars_0_3_1_port);
   U_PG_PRIM_4 : PG_PRIM_28 port map( A => A(4), B => B(4), g => 
                           CG_xbars_0_4_0_port, p => CG_xbars_0_4_1_port);
   U_PG_PRIM_5 : PG_PRIM_27 port map( A => A(5), B => B(5), g => 
                           CG_xbars_0_5_0_port, p => CG_xbars_0_5_1_port);
   U_PG_PRIM_6 : PG_PRIM_26 port map( A => A(6), B => B(6), g => 
                           CG_xbars_0_6_0_port, p => CG_xbars_0_6_1_port);
   U_PG_PRIM_7 : PG_PRIM_25 port map( A => A(7), B => B(7), g => 
                           CG_xbars_0_7_0_port, p => CG_xbars_0_7_1_port);
   U_PG_PRIM_8 : PG_PRIM_24 port map( A => A(8), B => B(8), g => 
                           CG_xbars_0_8_0_port, p => CG_xbars_0_8_1_port);
   U_PG_PRIM_9 : PG_PRIM_23 port map( A => A(9), B => B(9), g => 
                           CG_xbars_0_9_0_port, p => CG_xbars_0_9_1_port);
   U_PG_PRIM_10 : PG_PRIM_22 port map( A => A(10), B => B(10), g => 
                           CG_xbars_0_10_0_port, p => CG_xbars_0_10_1_port);
   U_PG_PRIM_11 : PG_PRIM_21 port map( A => A(11), B => B(11), g => 
                           CG_xbars_0_11_0_port, p => CG_xbars_0_11_1_port);
   U_PG_PRIM_12 : PG_PRIM_20 port map( A => A(12), B => B(12), g => 
                           CG_xbars_0_12_0_port, p => CG_xbars_0_12_1_port);
   U_PG_PRIM_13 : PG_PRIM_19 port map( A => A(13), B => B(13), g => 
                           CG_xbars_0_13_0_port, p => CG_xbars_0_13_1_port);
   U_PG_PRIM_14 : PG_PRIM_18 port map( A => A(14), B => B(14), g => 
                           CG_xbars_0_14_0_port, p => CG_xbars_0_14_1_port);
   U_PG_PRIM_15 : PG_PRIM_17 port map( A => A(15), B => B(15), g => 
                           CG_xbars_0_15_0_port, p => CG_xbars_0_15_1_port);
   U_PG_PRIM_16 : PG_PRIM_16 port map( A => A(16), B => B(16), g => 
                           CG_xbars_0_16_0_port, p => CG_xbars_0_16_1_port);
   U_PG_PRIM_17 : PG_PRIM_15 port map( A => A(17), B => B(17), g => 
                           CG_xbars_0_17_0_port, p => CG_xbars_0_17_1_port);
   U_PG_PRIM_18 : PG_PRIM_14 port map( A => A(18), B => B(18), g => 
                           CG_xbars_0_18_0_port, p => CG_xbars_0_18_1_port);
   U_PG_PRIM_19 : PG_PRIM_13 port map( A => A(19), B => B(19), g => 
                           CG_xbars_0_19_0_port, p => CG_xbars_0_19_1_port);
   U_PG_PRIM_20 : PG_PRIM_12 port map( A => A(20), B => B(20), g => 
                           CG_xbars_0_20_0_port, p => CG_xbars_0_20_1_port);
   U_PG_PRIM_21 : PG_PRIM_11 port map( A => A(21), B => B(21), g => 
                           CG_xbars_0_21_0_port, p => CG_xbars_0_21_1_port);
   U_PG_PRIM_22 : PG_PRIM_10 port map( A => A(22), B => B(22), g => 
                           CG_xbars_0_22_0_port, p => CG_xbars_0_22_1_port);
   U_PG_PRIM_23 : PG_PRIM_9 port map( A => A(23), B => B(23), g => 
                           CG_xbars_0_23_0_port, p => CG_xbars_0_23_1_port);
   U_PG_PRIM_24 : PG_PRIM_8 port map( A => A(24), B => B(24), g => 
                           CG_xbars_0_24_0_port, p => CG_xbars_0_24_1_port);
   U_PG_PRIM_25 : PG_PRIM_7 port map( A => A(25), B => B(25), g => 
                           CG_xbars_0_25_0_port, p => CG_xbars_0_25_1_port);
   U_PG_PRIM_26 : PG_PRIM_6 port map( A => A(26), B => B(26), g => 
                           CG_xbars_0_26_0_port, p => CG_xbars_0_26_1_port);
   U_PG_PRIM_27 : PG_PRIM_5 port map( A => A(27), B => B(27), g => 
                           CG_xbars_0_27_0_port, p => CG_xbars_0_27_1_port);
   U_PG_PRIM_28 : PG_PRIM_4 port map( A => A(28), B => B(28), g => 
                           CG_xbars_0_28_0_port, p => CG_xbars_0_28_1_port);
   U_PG_PRIM_29 : PG_PRIM_3 port map( A => A(29), B => B(29), g => 
                           CG_xbars_0_29_0_port, p => CG_xbars_0_29_1_port);
   U_PG_PRIM_30 : PG_PRIM_2 port map( A => A(30), B => B(30), g => 
                           CG_xbars_0_30_0_port, p => CG_xbars_0_30_1_port);
   U_PG_PRIM_31 : PG_PRIM_1 port map( A => A(31), B => B(31), g => 
                           CG_xbars_0_31_0_port, p => CG_xbars_0_31_1_port);
   U_BKBONE_GG_UNIT_1_1 : GG_36 port map( G_current => CG_xbars_0_1_0_port, 
                           P_current => CG_xbars_0_1_1_port, G_prev => 
                           CG_xbars_0_0_0_port, G => CG_xbars_1_1_0_port);
   U_BKBONE_GG_UNIT_1_3 : GG_35 port map( G_current => CG_xbars_0_3_0_port, 
                           P_current => CG_xbars_0_3_1_port, G_prev => 
                           CG_xbars_0_2_0_port, G => CG_xbars_1_3_0_port);
   U_BKBONE_GP_UNIT_1_3 : gp_0 port map( P_current => CG_xbars_0_3_1_port, 
                           P_prev => CG_xbars_0_2_1_port, P => 
                           CG_xbars_1_3_1_port);
   U_BKBONE_GG_UNIT_1_5 : GG_34 port map( G_current => CG_xbars_0_5_0_port, 
                           P_current => CG_xbars_0_5_1_port, G_prev => 
                           CG_xbars_0_4_0_port, G => CG_xbars_1_5_0_port);
   U_BKBONE_GP_UNIT_1_5 : gp_26 port map( P_current => CG_xbars_0_5_1_port, 
                           P_prev => CG_xbars_0_4_1_port, P => 
                           CG_xbars_1_5_1_port);
   U_BKBONE_GG_UNIT_1_7 : GG_33 port map( G_current => CG_xbars_0_7_0_port, 
                           P_current => CG_xbars_0_7_1_port, G_prev => 
                           CG_xbars_0_6_0_port, G => CG_xbars_1_7_0_port);
   U_BKBONE_GP_UNIT_1_7 : gp_25 port map( P_current => CG_xbars_0_7_1_port, 
                           P_prev => CG_xbars_0_6_1_port, P => 
                           CG_xbars_1_7_1_port);
   U_BKBONE_GG_UNIT_1_9 : GG_32 port map( G_current => CG_xbars_0_9_0_port, 
                           P_current => CG_xbars_0_9_1_port, G_prev => 
                           CG_xbars_0_8_0_port, G => CG_xbars_1_9_0_port);
   U_BKBONE_GP_UNIT_1_9 : gp_24 port map( P_current => CG_xbars_0_9_1_port, 
                           P_prev => CG_xbars_0_8_1_port, P => 
                           CG_xbars_1_9_1_port);
   U_BKBONE_GG_UNIT_1_11 : GG_31 port map( G_current => CG_xbars_0_11_0_port, 
                           P_current => CG_xbars_0_11_1_port, G_prev => 
                           CG_xbars_0_10_0_port, G => CG_xbars_1_11_0_port);
   U_BKBONE_GP_UNIT_1_11 : gp_23 port map( P_current => CG_xbars_0_11_1_port, 
                           P_prev => CG_xbars_0_10_1_port, P => 
                           CG_xbars_1_11_1_port);
   U_BKBONE_GG_UNIT_1_13 : GG_30 port map( G_current => CG_xbars_0_13_0_port, 
                           P_current => CG_xbars_0_13_1_port, G_prev => 
                           CG_xbars_0_12_0_port, G => CG_xbars_1_13_0_port);
   U_BKBONE_GP_UNIT_1_13 : gp_22 port map( P_current => CG_xbars_0_13_1_port, 
                           P_prev => CG_xbars_0_12_1_port, P => 
                           CG_xbars_1_13_1_port);
   U_BKBONE_GG_UNIT_1_15 : GG_29 port map( G_current => CG_xbars_0_15_0_port, 
                           P_current => CG_xbars_0_15_1_port, G_prev => 
                           CG_xbars_0_14_0_port, G => CG_xbars_1_15_0_port);
   U_BKBONE_GP_UNIT_1_15 : gp_21 port map( P_current => CG_xbars_0_15_1_port, 
                           P_prev => CG_xbars_0_14_1_port, P => 
                           CG_xbars_1_15_1_port);
   U_BKBONE_GG_UNIT_1_17 : GG_28 port map( G_current => CG_xbars_0_17_0_port, 
                           P_current => CG_xbars_0_17_1_port, G_prev => 
                           CG_xbars_0_16_0_port, G => CG_xbars_1_17_0_port);
   U_BKBONE_GP_UNIT_1_17 : gp_20 port map( P_current => CG_xbars_0_17_1_port, 
                           P_prev => CG_xbars_0_16_1_port, P => 
                           CG_xbars_1_17_1_port);
   U_BKBONE_GG_UNIT_1_19 : GG_27 port map( G_current => CG_xbars_0_19_0_port, 
                           P_current => CG_xbars_0_19_1_port, G_prev => 
                           CG_xbars_0_18_0_port, G => CG_xbars_1_19_0_port);
   U_BKBONE_GP_UNIT_1_19 : gp_19 port map( P_current => CG_xbars_0_19_1_port, 
                           P_prev => CG_xbars_0_18_1_port, P => 
                           CG_xbars_1_19_1_port);
   U_BKBONE_GG_UNIT_1_21 : GG_26 port map( G_current => CG_xbars_0_21_0_port, 
                           P_current => CG_xbars_0_21_1_port, G_prev => 
                           CG_xbars_0_20_0_port, G => CG_xbars_1_21_0_port);
   U_BKBONE_GP_UNIT_1_21 : gp_18 port map( P_current => CG_xbars_0_21_1_port, 
                           P_prev => CG_xbars_0_20_1_port, P => 
                           CG_xbars_1_21_1_port);
   U_BKBONE_GG_UNIT_1_23 : GG_25 port map( G_current => CG_xbars_0_23_0_port, 
                           P_current => CG_xbars_0_23_1_port, G_prev => 
                           CG_xbars_0_22_0_port, G => CG_xbars_1_23_0_port);
   U_BKBONE_GP_UNIT_1_23 : gp_17 port map( P_current => CG_xbars_0_23_1_port, 
                           P_prev => CG_xbars_0_22_1_port, P => 
                           CG_xbars_1_23_1_port);
   U_BKBONE_GG_UNIT_1_25 : GG_24 port map( G_current => CG_xbars_0_25_0_port, 
                           P_current => CG_xbars_0_25_1_port, G_prev => 
                           CG_xbars_0_24_0_port, G => CG_xbars_1_25_0_port);
   U_BKBONE_GP_UNIT_1_25 : gp_16 port map( P_current => CG_xbars_0_25_1_port, 
                           P_prev => CG_xbars_0_24_1_port, P => 
                           CG_xbars_1_25_1_port);
   U_BKBONE_GG_UNIT_1_27 : GG_23 port map( G_current => CG_xbars_0_27_0_port, 
                           P_current => CG_xbars_0_27_1_port, G_prev => 
                           CG_xbars_0_26_0_port, G => CG_xbars_1_27_0_port);
   U_BKBONE_GP_UNIT_1_27 : gp_15 port map( P_current => CG_xbars_0_27_1_port, 
                           P_prev => CG_xbars_0_26_1_port, P => 
                           CG_xbars_1_27_1_port);
   U_BKBONE_GG_UNIT_1_29 : GG_22 port map( G_current => CG_xbars_0_29_0_port, 
                           P_current => CG_xbars_0_29_1_port, G_prev => 
                           CG_xbars_0_28_0_port, G => CG_xbars_1_29_0_port);
   U_BKBONE_GP_UNIT_1_29 : gp_14 port map( P_current => CG_xbars_0_29_1_port, 
                           P_prev => CG_xbars_0_28_1_port, P => 
                           CG_xbars_1_29_1_port);
   U_BKBONE_GG_UNIT_1_31 : GG_21 port map( G_current => CG_xbars_0_31_0_port, 
                           P_current => CG_xbars_0_31_1_port, G_prev => 
                           CG_xbars_0_30_0_port, G => CG_xbars_1_31_0_port);
   U_BKBONE_GP_UNIT_1_31 : gp_13 port map( P_current => CG_xbars_0_31_1_port, 
                           P_prev => CG_xbars_0_30_1_port, P => 
                           CG_xbars_1_31_1_port);
   U_BKBONE_GG_UNIT_2_3 : GG_20 port map( G_current => CG_xbars_1_3_0_port, 
                           P_current => CG_xbars_1_3_1_port, G_prev => 
                           CG_xbars_1_1_0_port, G => Co_0_port);
   U_BKBONE_GG_UNIT_2_7 : GG_19 port map( G_current => CG_xbars_1_7_0_port, 
                           P_current => CG_xbars_1_7_1_port, G_prev => 
                           CG_xbars_1_5_0_port, G => CG_xbars_2_7_0_port);
   U_BKBONE_GP_UNIT_2_7 : gp_12 port map( P_current => CG_xbars_1_7_1_port, 
                           P_prev => CG_xbars_1_5_1_port, P => 
                           CG_xbars_2_7_1_port);
   U_BKBONE_GG_UNIT_2_11 : GG_18 port map( G_current => CG_xbars_1_11_0_port, 
                           P_current => CG_xbars_1_11_1_port, G_prev => 
                           CG_xbars_1_9_0_port, G => CG_xbars_2_11_0_port);
   U_BKBONE_GP_UNIT_2_11 : gp_11 port map( P_current => CG_xbars_1_11_1_port, 
                           P_prev => CG_xbars_1_9_1_port, P => 
                           CG_xbars_2_11_1_port);
   U_BKBONE_GG_UNIT_2_15 : GG_17 port map( G_current => CG_xbars_1_15_0_port, 
                           P_current => CG_xbars_1_15_1_port, G_prev => 
                           CG_xbars_1_13_0_port, G => CG_xbars_2_15_0_port);
   U_BKBONE_GP_UNIT_2_15 : gp_10 port map( P_current => CG_xbars_1_15_1_port, 
                           P_prev => CG_xbars_1_13_1_port, P => 
                           CG_xbars_2_15_1_port);
   U_BKBONE_GG_UNIT_2_19 : GG_16 port map( G_current => CG_xbars_1_19_0_port, 
                           P_current => CG_xbars_1_19_1_port, G_prev => 
                           CG_xbars_1_17_0_port, G => CG_xbars_2_19_0_port);
   U_BKBONE_GP_UNIT_2_19 : gp_9 port map( P_current => CG_xbars_1_19_1_port, 
                           P_prev => CG_xbars_1_17_1_port, P => 
                           CG_xbars_2_19_1_port);
   U_BKBONE_GG_UNIT_2_23 : GG_15 port map( G_current => CG_xbars_1_23_0_port, 
                           P_current => CG_xbars_1_23_1_port, G_prev => 
                           CG_xbars_1_21_0_port, G => CG_xbars_2_23_0_port);
   U_BKBONE_GP_UNIT_2_23 : gp_8 port map( P_current => CG_xbars_1_23_1_port, 
                           P_prev => CG_xbars_1_21_1_port, P => 
                           CG_xbars_2_23_1_port);
   U_BKBONE_GG_UNIT_2_27 : GG_14 port map( G_current => CG_xbars_1_27_0_port, 
                           P_current => CG_xbars_1_27_1_port, G_prev => 
                           CG_xbars_1_25_0_port, G => CG_xbars_2_27_0_port);
   U_BKBONE_GP_UNIT_2_27 : gp_7 port map( P_current => CG_xbars_1_27_1_port, 
                           P_prev => CG_xbars_1_25_1_port, P => 
                           CG_xbars_2_27_1_port);
   U_BKBONE_GG_UNIT_2_31 : GG_13 port map( G_current => CG_xbars_1_31_0_port, 
                           P_current => CG_xbars_1_31_1_port, G_prev => 
                           CG_xbars_1_29_0_port, G => CG_xbars_2_31_0_port);
   U_BKBONE_GP_UNIT_2_31 : gp_6 port map( P_current => CG_xbars_1_31_1_port, 
                           P_prev => CG_xbars_1_29_1_port, P => 
                           CG_xbars_2_31_1_port);
   U_LF_GG_UNIT_1_7 : GG_12 port map( G_current => CG_xbars_2_7_0_port, 
                           P_current => CG_xbars_2_7_1_port, G_prev => 
                           Co_0_port, G => Co_1_port);
   U_LF_GG_UNIT_1_15 : GG_11 port map( G_current => CG_xbars_2_15_0_port, 
                           P_current => CG_xbars_2_15_1_port, G_prev => 
                           CG_xbars_2_11_0_port, G => CG_xbars_3_15_0_port);
   U_LF_GP_UNIT_1_15 : gp_5 port map( P_current => CG_xbars_2_15_1_port, P_prev
                           => CG_xbars_2_11_1_port, P => CG_xbars_3_15_1_port);
   U_LF_GG_UNIT_1_23 : GG_10 port map( G_current => CG_xbars_2_23_0_port, 
                           P_current => CG_xbars_2_23_1_port, G_prev => 
                           CG_xbars_2_19_0_port, G => CG_xbars_3_23_0_port);
   U_LF_GP_UNIT_1_23 : gp_4 port map( P_current => CG_xbars_2_23_1_port, P_prev
                           => CG_xbars_2_19_1_port, P => CG_xbars_3_23_1_port);
   U_LF_GG_UNIT_1_31 : GG_9 port map( G_current => CG_xbars_2_31_0_port, 
                           P_current => CG_xbars_2_31_1_port, G_prev => 
                           CG_xbars_2_27_0_port, G => CG_xbars_3_31_0_port);
   U_LF_GP_UNIT_1_31 : gp_3 port map( P_current => CG_xbars_2_31_1_port, P_prev
                           => CG_xbars_2_27_1_port, P => CG_xbars_3_31_1_port);
   U_LF_GG_UNIT_2_11 : GG_8 port map( G_current => CG_xbars_2_11_0_port, 
                           P_current => CG_xbars_2_11_1_port, G_prev => 
                           Co_1_port, G => Co_2_port);
   U_LF_GG_UNIT_2_15 : GG_7 port map( G_current => CG_xbars_3_15_0_port, 
                           P_current => CG_xbars_3_15_1_port, G_prev => 
                           Co_1_port, G => Co_3_port);
   U_LF_GG_UNIT_2_27 : GG_6 port map( G_current => CG_xbars_2_27_0_port, 
                           P_current => CG_xbars_2_27_1_port, G_prev => 
                           CG_xbars_3_23_0_port, G => CG_xbars_4_27_0_port);
   U_LF_GP_UNIT_2_27 : gp_2 port map( P_current => CG_xbars_2_27_1_port, P_prev
                           => CG_xbars_3_23_1_port, P => CG_xbars_4_27_1_port);
   U_LF_GG_UNIT_2_31 : GG_5 port map( G_current => CG_xbars_3_31_0_port, 
                           P_current => CG_xbars_3_31_1_port, G_prev => 
                           CG_xbars_3_23_0_port, G => CG_xbars_4_31_0_port);
   U_LF_GP_UNIT_2_31 : gp_1 port map( P_current => CG_xbars_3_31_1_port, P_prev
                           => CG_xbars_3_23_1_port, P => CG_xbars_4_31_1_port);
   U_LF_GG_UNIT_3_19 : GG_4 port map( G_current => CG_xbars_2_19_0_port, 
                           P_current => CG_xbars_2_19_1_port, G_prev => 
                           Co_3_port, G => Co_4_port);
   U_LF_GG_UNIT_3_23 : GG_3 port map( G_current => CG_xbars_3_23_0_port, 
                           P_current => CG_xbars_3_23_1_port, G_prev => 
                           Co_3_port, G => Co_5_port);
   U_LF_GG_UNIT_3_27 : GG_2 port map( G_current => CG_xbars_4_27_0_port, 
                           P_current => CG_xbars_4_27_1_port, G_prev => 
                           Co_3_port, G => Co_6_port);
   U_LF_GG_UNIT_3_31 : GG_1 port map( G_current => CG_xbars_4_31_0_port, 
                           P_current => CG_xbars_4_31_1_port, G_prev => 
                           Co_3_port, G => Co_7_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity P4_ADDER_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER_NBIT32;

architecture SYN_STRUCTURAL of P4_ADDER_NBIT32 is

   component SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7
      port( A, B : in std_logic_vector (27 downto 0);  Ci : in std_logic_vector
            (6 downto 0);  S : out std_logic_vector (27 downto 0));
   end component;
   
   component RCA_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal carry_gen_Co_6_port, carry_gen_Co_5_port, carry_gen_Co_4_port, 
      carry_gen_Co_3_port, carry_gen_Co_2_port, carry_gen_Co_1_port, 
      carry_gen_Co_0_port, n_1007 : std_logic;

begin
   
   U_CARRY_GENERATOR : CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 port map( A(31) 
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
   U_FIRST_RCA : RCA_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1)
                           , A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => Cin, S(3) => S(3), S(2) =>
                           S(2), S(1) => S(1), S(0) => S(0), Co => n_1007);
   U_SUM_GENERATOR : SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7 port map( A(27) => 
                           A(31), A(26) => A(30), A(25) => A(29), A(24) => 
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
