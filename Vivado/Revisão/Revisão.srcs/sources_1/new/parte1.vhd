library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parte1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           M : out STD_LOGIC);
end parte1;

architecture Behavioral of parte1 is

begin

    M <= (A and B) or (A xnor C);

end Behavioral;
