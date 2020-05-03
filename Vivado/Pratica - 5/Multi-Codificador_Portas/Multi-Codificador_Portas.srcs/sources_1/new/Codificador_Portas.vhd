library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Codificador_Portas is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0));
end Codificador_Portas;

architecture Behavioral of Codificador_Portas is

    component BCD_7421 is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               bcd7421 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
 
    component BCD_5211 is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               bcd5211 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
   
    component BCD_2411 is
       Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
              bcd2411 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component XS3 is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               xs3 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal s1, s2, s3, s4, sm : STD_LOGIC_VECTOR (3 downto 0);
    signal erro : STD_LOGIC;

begin
    CBCD_7421 : BCD_7421 port map (bcd, s1);
    CBCD_5211 : BCD_5211 port map (bcd, s2);
    CBCD_2411 : BCD_2411 port map (bcd, s3);
    CXS3      : XS3      port map (bcd, s4);
   
   erro <= (bcd(3) and bcd(2)) or (bcd(3) and bcd(1));
    
   with sel select
   sm <= s1 when "00",
         s2 when "01",
         s3 when "10",
         s4 when others;
   
   with erro select
   s <=   sm   when '0',
        "ZZZZ" when others; 

end Behavioral;