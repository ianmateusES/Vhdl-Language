----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2017 01:08:48
-- Design Name: 
-- Module Name: XS3 - Behavioral
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

entity XS3 is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           xs3 : out STD_LOGIC_VECTOR (3 downto 0));
end XS3;

architecture Behavioral of XS3 is

begin
 
  xs3(3) <= (bcd(2) and bcd(1)) or (bcd(2) and bcd(0)) or (bcd(3) and (not bcd(1)));
  xs3(2) <= (bcd(1) and (not bcd(2))) or (bcd(0) and (not bcd(2)) and (not bcd(3))) or (bcd(2) and (not bcd(1)) and (not bcd(0))) or (bcd(3) and (not bcd(1)) and bcd(0) );
  xs3(1) <= bcd(1) xnor bcd(0); 
  xs3(0) <= (not bcd(0));  
    

end Behavioral;
