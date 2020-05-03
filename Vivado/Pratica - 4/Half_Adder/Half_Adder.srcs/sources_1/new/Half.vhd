library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Half is
    Port ( ab : in STD_LOGIC_VECTOR (1 downto 0);
           s : out STD_LOGIC;
           carry_ot : out STD_LOGIC);
end Half;

architecture Behavioral of Half is

begin

s <= ab(1) xor ab(0);
carry_ot <= ab(1) and ab(0);

end Behavioral;
