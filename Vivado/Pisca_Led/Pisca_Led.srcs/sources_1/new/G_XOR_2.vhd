
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;


entity G_XOR_2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end G_XOR_2;

architecture Behavioral of G_XOR_2 is

    signal na, nb : STD_LOGIC;
    signal and1, and2 : STD_LOGIC;

begin

    na <= not a;
    nb <= not b;
    and1 <= a and nb;
    and2 <= na and b;
    s <= and1 or and2;

end Behavioral;
