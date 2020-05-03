library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Full_Adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC;
           s : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

    s <= a xor b xor carry_in;
    carry_out <= (a and b) or ((a xor b) and carry_in);

end Behavioral;
