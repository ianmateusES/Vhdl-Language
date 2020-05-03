
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity G_XOR_3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end G_XOR_3;

architecture Behavioral of G_XOR_3 is

    signal ab : UNSIGNED (1 downto 0);

begin
    ab <= a & b;
    
    s <= '0' when ab = "00" else
         '0' when ab = "01" else
         '1';
    

end Behavioral;