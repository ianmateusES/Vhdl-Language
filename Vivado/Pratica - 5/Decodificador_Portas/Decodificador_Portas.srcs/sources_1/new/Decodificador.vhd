library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decodificador is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           ds7 : out STD_LOGIC_VECTOR (6 downto 0));
end Decodificador;

architecture Behavioral of Decodificador is

begin

    ds7(6) <= bcd(3) or bcd(1) or (bcd(2) xnor bcd(0));
    ds7(5) <= ((not bcd(3)) and (not bcd(2))) or ((not bcd(2)) and (not bcd(1))) or ((not bcd(3)) and (bcd(1) xnor bcd(0)));
    ds7(4) <= ((not bcd(3)) and bcd(2)) or ((not bcd(3)) and bcd(0)) or ((not bcd(2)) and (not bcd(1)));
    ds7(3) <= bcd(3) or (bcd(1) and (not bcd(0))) or ((not bcd(2)) and (not bcd(0))) or ((not bcd(2)) and bcd(1)) or (bcd(2) and (not bcd(1)) and bcd(0));
    ds7(2) <= (bcd(1) and (not bcd(0))) or (bcd(3) and bcd(2)) or ((not bcd(2)) and (not bcd(0))) or (bcd(3) and bcd(1));
    ds7(1) <= bcd(3) or (bcd(2) and (not bcd(0))) or (bcd(2) and (not bcd(1))) or ((not bcd(3)) and (not bcd(1)) and (not bcd(0)));
    ds7(0) <= bcd(3) or (bcd(1) and (not bcd(0))) or (bcd(2) xor bcd(1));

end Behavioral;
