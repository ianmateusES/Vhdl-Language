library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main_tb is
--Port ();
end main_tb;

architecture Behavioral of main_tb is
    
    component main is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               C : in STD_LOGIC;
               S : out STD_LOGIC);
    end component;
    
    signal A, B, C: STD_LOGIC := '0';
    signal S: STD_LOGIC;

begin
    DUT: main port map (A, B, C, S);
    
    P: process
    variable soma := STD_LOGIC_VECTOR(2 downto 0);
    begin
        soma := A & B & C;
        
        wait for 20ns;
        soma := STD_LOGIC_VECTOR( UNSIGNED (soma) + 1);
        
    end process P;

end Behavioral;
