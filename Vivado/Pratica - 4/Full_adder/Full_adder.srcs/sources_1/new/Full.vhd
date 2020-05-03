library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Full is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cout_m : in STD_LOGIC;
           cout_n : out STD_LOGIC;
           sn : out STD_LOGIC);
end Full;

architecture Behavioral of Full is

begin

sn <= a xor b xor cout_m;
cout_n <= (a and b) or ((a xor b) and cout_m);

end Behavioral;
