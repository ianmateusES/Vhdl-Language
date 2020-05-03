library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity XS3_Exp is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           xs3 : out STD_LOGIC_VECTOR (3 downto 0));
end XS3_Exp;

architecture Behavioral of XS3_Exp is

begin

  xs3(3) <= (bcd(2) and bcd(1)) or (bcd(2) and bcd(0)) or (bcd(3) and (not bcd(1)));
  xs3(2) <= (bcd(1) and (not bcd(2))) or (bcd(0) and (not bcd(2)) and (not bcd(3))) or (bcd(2) and (not bcd(1)) and (not bcd(0))) or (bcd(3) and (not bcd(1)) and bcd(0));
  xs3(1) <= bcd(1) xnor bcd(0); 
  xs3(0) <= (not bcd(0));
    
end Behavioral;
