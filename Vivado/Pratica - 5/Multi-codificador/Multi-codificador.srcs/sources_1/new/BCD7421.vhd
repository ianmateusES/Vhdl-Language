library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity BCD7421 is
  Port (bcd : in STD_LOGIC_VECTOR (3 downto 0);
        bcd7421 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD7421;

architecture Behavioral of BCD7421 is

begin
    
    WITH bcd SELECT
    bcd7421 <= "0000" when "0000",
               "0001" when "0001",
               "0010" when "0010",
               "0011" when "0011",
               "0100" when "0100",
               "0101" when "0101",
               "0110" when "0110",
               "1000" when "0111",
               "1001" when "1000",
               "1010" when "1001",
               "ZZZZ" when others; 

end Behavioral;
