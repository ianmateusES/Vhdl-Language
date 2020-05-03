----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2017 00:30:40
-- Design Name: 
-- Module Name: BCD_5211 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_5211 is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           bcd5211 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD_5211;

architecture Behavioral of BCD_5211 is

begin

    bcd5211(0) <= (bcd(3) and (not bcd(1))) or (bcd(2) and (not bcd(1)) and (not bcd(0))) or ((not bcd(3)) and bcd(1)) or ((not bcd(2)) and bcd(0));
    bcd5211(1) <= (bcd(2) and (not bcd(1)) and (not bcd(0))) or (bcd(3) and bcd(0)) or (bcd(2) and bcd(1) and bcd(0)) or ((not bcd(2)) and bcd(1) and (not bcd(0)));
    bcd5211(2) <= bcd(3) or ((not bcd(2)) and bcd(1) and bcd(0)) or (bcd(2) and (not bcd(1)) and (not bcd(0)));
    bcd5211(3) <= bcd(3) or (bcd(2) and bcd(0)) or (bcd(2) and bcd(1));

end Behavioral;
