
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity G_XOR_4 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end G_XOR_4;

architecture Behavioral of G_XOR_4 is

    signal ab : UNSIGNED (1 downto 0);

begin
    ab <= a & b;
    
    WITH ab SELECT
    s <= '0' when "00" | "01",
         '1' when others;
          
end Behavioral;