library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Somador_4bits is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           carry : inout STD_LOGIC_VECTOR (2 downto 0);
           overflow : out STD_LOGIC;
           sn : out STD_LOGIC_VECTOR (3 downto 0));
end Somador_4bits;

architecture Behavioral of Somador_4bits is

    component Half_Adder is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               carry_out : out STD_LOGIC;
               s : out STD_LOGIC);
    end component;

    component Full_Adder is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               carry_in : in STD_LOGIC;
               carry_out : out STD_LOGIC;
               s : out STD_LOGIC);
    end component;

begin
    Bit0 : Half_Adder port map (A(0), B(0), carry(0), sn(0));
    Bit1 : Full_Adder port map (A(1), B(1), carry(0), carry(1), sn(1));
    Bit2 : Full_Adder port map (A(2), B(2), carry(1), carry(2), sn(2));
    Bit3 : Full_Adder port map (A(3), B(3), carry(2), overflow, sn(3));


end Behavioral;
