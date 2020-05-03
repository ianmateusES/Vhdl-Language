library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Half_Subtractor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           borrow_out : out STD_LOGIC;
           sn : out STD_LOGIC);
end Half_Subtractor;

architecture Behavioral of Half_Subtractor is

begin

    sn <= a xor b;
    borrow_out <=  (not a) and b;

end Behavioral;
