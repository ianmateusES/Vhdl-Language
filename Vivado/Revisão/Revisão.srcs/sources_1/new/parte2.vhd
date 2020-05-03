library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parte2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           N : out STD_LOGIC);
end parte2;

architecture Behavioral of parte2 is

begin

    N <= (B and C) xor (A nor B);

end Behavioral;
