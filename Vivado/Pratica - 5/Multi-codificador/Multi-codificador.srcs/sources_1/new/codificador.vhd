library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity codificador is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           erro2: buffer STD_LOGIC;
           ct : in STD_LOGIC);
end codificador;

architecture Behavioral of codificador is
    
    component Codificador_Circ is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               sel : in STD_LOGIC_VECTOR (1 downto 0);
               s : out STD_LOGIC_VECTOR (3 downto 0);
               erro2: buffer STD_LOGIC);
    end component;
        
begin
    
--    CT0 : Codificador_Circ port map (bcd, sel, s, erro2);
    
end Behavioral;