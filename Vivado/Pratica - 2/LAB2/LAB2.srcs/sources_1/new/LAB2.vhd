----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2017 22:59:16
-- Design Name: 
-- Module Name: LAB2 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LAB2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s1 : out STD_LOGIC;
           s2 : out STD_LOGIC);
end LAB2;

architecture Behavioral of LAB2 is

begin
s1 <= (a or (not b)) and (a or (not b) or (not c)) and (b or c or (not d)) and ((not a) or b or (not c) or d);
s2 <= (a and b) or (a and (c xnor d)) or ((a nor b) and (c or (not d))) or ((not b) and (c xnor d));

end Behavioral;
