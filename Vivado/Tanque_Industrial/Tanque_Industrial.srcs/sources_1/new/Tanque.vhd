library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Tanque is
    Port ( b2 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           v1 : out STD_LOGIC;
           v2 : out STD_LOGIC);
end Tanque; 

architecture Behavioral of Tanque is

    signal bs : STD_LOGIC_VECTOR (3 downto 0);

begin

    bs <= b2 & b1 & s2 & s1;
    
    v1 <= ((not bs(2)) and bs(1)) or ((not bs(3)) and (not bs(2)) and bs(0)) or ((not bs(3)) and bs(1));
    v2 <=(bs(3) and (not bs(0))) or (bs(2) and (not bs(0))) or (bs(3) and bs(2) and (not bs(1)));
    
end Behavioral;
