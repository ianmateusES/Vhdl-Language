library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           S : out STD_LOGIC);
end main;

architecture Behavioral of main is

    component parte1 is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               C : in STD_LOGIC;
               M : out STD_LOGIC);
    end component;
    
    component parte2 is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               C : in STD_LOGIC;
               N : out STD_LOGIC);
    end component;

    signal M, N : STD_LOGIC;

begin
    TUR: parte1 port map (A, B, C, M);
    TZO: parte2 port map (A, B, C, N);

    
    S <= M xor C xor N;

end Behavioral;
