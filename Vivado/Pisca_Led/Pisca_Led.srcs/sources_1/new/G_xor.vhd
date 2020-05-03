
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;


entity G_xor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end G_xor;

architecture Behavioral of G_xor is

begin

    s <= a xor b;

end Behavioral;
