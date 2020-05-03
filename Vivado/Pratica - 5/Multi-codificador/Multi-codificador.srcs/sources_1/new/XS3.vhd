library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity XS3 is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           xs3 : out STD_LOGIC_VECTOR (3 downto 0));
end XS3;

architecture Behavioral of XS3 is

begin

    WITH bcd SELECT
    xs3 <=     "0011" when "0000",
               "0100" when "0001",
               "0101" when "0010",
               "0110" when "0011",
               "0111" when "0100",
               "1000" when "0101",
               "1001" when "0110",
               "1010" when "0111",
               "1011" when "1000",
               "1100" when "1001",
               "ZZZZ" when others;

end Behavioral;
