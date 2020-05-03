library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Somador_Subtractor is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC;
           carry : inout STD_LOGIC_VECTOR (2 downto 0);
           borrow : inout STD_LOGIC_VECTOR (2 downto 0);
           overflow : out STD_LOGIC;
           sf : out STD_LOGIC_VECTOR (3 downto 0));
end Somador_Subtractor;

architecture Behavioral of Somador_Subtractor is

    component Somador_4bits is
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               carry : inout STD_LOGIC_VECTOR (2 downto 0);
               overflow : out STD_LOGIC;
               sn : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component Subtractor_4bits is
            Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
                   B : in STD_LOGIC_VECTOR (3 downto 0);
                   borrow : inout STD_LOGIC_VECTOR (2 downto 0);
                   overflow : out STD_LOGIC;
                   s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal sn, s: STD_LOGIC_VECTOR (3 downto 0);
    signal overSO, overSU: STD_LOGIC; 
    
begin
       SOMA: Somador_4bits port map(A, B, carry, overSO, sn);
    SUBTRAI: Subtractor_4bits port map(A, B, borrow, overSU, s);
    
    with OP select
    sf <= sn when '0',
           s when others;
    
    with OP select
    overflow <= overSO when '0',
                overSU when others;
              
end Behavioral;
