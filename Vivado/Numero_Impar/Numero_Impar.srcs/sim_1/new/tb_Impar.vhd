library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Impar is
--  Port ( );
end tb_Impar;

architecture Behavioral of tb_Impar is

    component Impar is
        Port ( ent : in STD_LOGIC_VECTOR (2 downto 0);
               ni : out STD_LOGIC);
    end component;

    signal ent : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal ni : STD_LOGIC;

begin
    
    DUT : Impar port map (ent, ni);

    P : process
    begin
        wait for 20ns;
        ent <= STD_LOGIC_VECTOR (UNSIGNED (ent) + 1);
    end process P;

end Behavioral;
