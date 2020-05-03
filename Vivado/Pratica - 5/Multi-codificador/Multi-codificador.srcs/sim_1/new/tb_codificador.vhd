library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_codificador is
--  Port ( );
end tb_codificador;

architecture Behavioral of tb_codificador is

    component Codificador_Exp is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               sel : in STD_LOGIC_VECTOR (1 downto 0);
               s : out STD_LOGIC_VECTOR (3 downto 0);
               erro2: buffer STD_LOGIC);
    end component;

    signal sel : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal bcd : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal s   : STD_LOGIC_VECTOR (3 downto 0);
    signal erro2: STD_LOGIC;
    
begin
    DUT : Codificador_Exp port map (bcd, sel, s, erro2);
    
    P : process
    begin
        wait for 160ns;
        sel <= STD_LOGIC_VECTOR(UNSIGNED (sel) + 1);
    end process P;
    
    D: process
    begin
        wait for 10ns;
        bcd <= STD_LOGIC_VECTOR(UNSIGNED (bcd) + 1);
    end process D;

end Behavioral;
