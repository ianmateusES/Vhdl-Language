library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_2411 is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           bcd2411 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD_2411;

architecture Behavioral of BCD_2411 is

begin

    bcd2411(3) <= ((not bcd(1)) and bcd(3)) or (bcd(2) and  bcd(0)) or (bcd(2) and  bcd(1));
    bcd2411(2) <= ((not bcd(1)) and bcd(3)) or (bcd(2) and (not bcd(0)) and (not bcd(1))) or  (bcd(2) and bcd(1));
    bcd2411(1) <= (bcd(3) and  (not bcd(1))) or (bcd(2) and (not bcd(1)) and bcd(0)) or (bcd(1) and (not bcd(2)));
    bcd2411(0) <= bcd(0);
    
end Behavioral;
    