library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD2421_Exp is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           bcd2421 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD2421_Exp;

architecture Behavioral of BCD2421_Exp is

begin

    bcd2421(3) <= ((not bcd(1)) and bcd(3)) or (bcd(2) and  bcd(0)) or (bcd(2) and  bcd(1));
    bcd2421(2) <= ((not bcd(1)) and bcd(3)) or (bcd(2) and (not bcd(0)) and (not bcd(1))) or  (bcd(2) and bcd(1));
    bcd2421(1) <= (bcd(3) and  (not bcd(1))) or (bcd(2) and (not bcd(1)) and bcd(0)) or (bcd(1) and (not bcd(2)));
    bcd2421(0) <= bcd(0);    

end Behavioral;
