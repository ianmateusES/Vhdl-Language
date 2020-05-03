library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD7421_Exp is
    Port (bcd : in STD_LOGIC_VECTOR (3 downto 0);
          bcd7421 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD7421_Exp;

architecture Behavioral of BCD7421_Exp is

begin

    bcd7421(0) <= ((not bcd(1)) and (bcd(3) xor bcd(0))) or ((not bcd(3)) and (not bcd(2)) and bcd(0));
    bcd7421(1) <= ((not bcd(2)) and bcd(1)) or ((not bcd(3)) and bcd(1) and (not bcd(0))) or (bcd(3) and bcd(0));
    bcd7421(2) <= (bcd(2) and (not bcd(1))) or (bcd(2) and bcd(1) and (not bcd(0)));
    bcd7421(3) <= bcd(3) or (bcd(2) and bcd(1) and bcd(0));    

end Behavioral;
