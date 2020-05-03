library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity BCD2421 is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           bcd2421 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD2421;

architecture Behavioral of BCD2421 is

begin

    WITH bcd SELECT
    bcd2421 <= "0000" when "0000",
               "0001" when "0001",
               "0010" when "0010",
               "0011" when "0011",
               "0100" when "0100",
               "1011" when "0101",
               "1100" when "0110",
               "1101" when "0111",
               "1110" when "1000",
               "1111" when "1001",
               "ZZZZ" when others;

end Behavioral;
