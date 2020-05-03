library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Full_Subtractor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           borrow_in : in STD_LOGIC;
           borrow_out : out STD_LOGIC;
           sn : out STD_LOGIC);
end Full_Subtractor;

architecture Behavioral of Full_Subtractor is

begin

    sn <= a xor b xor borrow_in;
    borrow_out <= ((not a) and b) or (((not a) xor b) and borrow_in);

end Behavioral;
