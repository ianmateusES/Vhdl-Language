library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Decodificador is
--  Port ( );
end tb_Decodificador;

architecture Behavioral of tb_Decodificador is

    component Decodificador is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               ds7 : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal bcd : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal ds7 : STD_LOGIC_VECTOR (6 downto 0);

begin
    DUT : Decodificador port map (bcd, ds7);
    
    P : process
    begin
        wait for 20ns;
        bcd <= STD_LOGIC_VECTOR (UNSIGNED(bcd) + 1);
    end process P;

end Behavioral;
