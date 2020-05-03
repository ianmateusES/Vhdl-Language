library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Impar is
    Port ( ent : in STD_LOGIC_VECTOR (2 downto 0);
           ni : out STD_LOGIC);
end Impar;

architecture Behavioral of Impar is

begin

    ni <= ((not ent(2)) and (not ent(1)) and (not ent(0))) or (ent(2) and (not ent(1)) and ent(0)) or ((not ent(2)) and ent(1) and ent(0)) or (ent(2) and ent(1) and (not ent(0)));

end Behavioral;
