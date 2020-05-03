library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Codificador_Portas is
--  Port ( );
end tb_Codificador_Portas;

architecture Behavioral of tb_Codificador_Portas is

    component Codificador_Portas is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               sel : in STD_LOGIC_VECTOR (1 downto 0);
               s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal sel : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal bcd : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal s : STD_LOGIC_VECTOR (3 downto 0);

begin
    DUT : Codificador_Portas port map (bcd, sel, s);
    
    D : process
    begin
        wait for 10ns;
        bcd <= STD_LOGIC_VECTOR (UNSIGNED(bcd) + 1);
    end process D;
    
    P : process
    begin
        wait for 160ns;
        sel <= STD_LOGIC_VECTOR (UNSIGNED(sel) + 1);
    end process P;

end Behavioral;
