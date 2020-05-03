library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity BCD5211 is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           bcd5211 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD5211;

architecture Behavioral of BCD5211 is

begin

    WITH bcd SELECT
    bcd5211 <= "0000" when "0000",
               "0001" when "0001",
               "0011" when "0010",
               "0101" when "0011",
               "0111" when "0100",
               "1000" when "0101",
               "1001" when "0110",
               "1011" when "0111",
               "1101" when "1000",
               "1111" when "1001",
               "ZZZZ" when others;


end Behavioral;
