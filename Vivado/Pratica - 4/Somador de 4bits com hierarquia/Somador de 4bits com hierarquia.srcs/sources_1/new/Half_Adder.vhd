library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Half_Adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           carry_out : out STD_LOGIC;
           s : out STD_LOGIC);
end Half_Adder;

architecture Behavioral of Half_Adder is

begin

    s <= a xor b;
    carry_out <= a and b;

end Behavioral;
