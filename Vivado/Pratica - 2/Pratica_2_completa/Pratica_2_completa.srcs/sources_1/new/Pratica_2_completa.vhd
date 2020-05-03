----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2017 17:08:15
-- Design Name: 
-- Module Name: Pratica_2_completa - Behavioral
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

entity Pratica_2_completa is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s1 : out STD_LOGIC;
           s2 : out STD_LOGIC;
           s3 : out STD_LOGIC;
           s4 : out STD_LOGIC;
           s5 : out STD_LOGIC;
           s6 : out STD_LOGIC;
           s7 : out STD_LOGIC;
           s8 : out STD_LOGIC;
           s9 : out STD_LOGIC;
           s10 : out STD_LOGIC);
end Pratica_2_completa;

architecture Behavioral of Pratica_2_completa is

begin

s1 <= (a or (not b)) and (a or c);
s2 <= (a and b) or ((a nand b) and c) or a;
s3 <= (a or (not a)) and ((a and b) or (a and b and (not c)));
s4 <= (a and b) or (((not a) or (not b)) and c) or (a and b);
s5 <= ((not a) and (not b) and c) or ((not a) and (not b) and c) or ((not a) and (not b) and (not c) and d);
s6 <= (b or (b and c)) and (b or ((not b) and c)) and (b or d)  ;
s7 <= (a and b and c and d) or (a and b and (c nand d)) or ((a nand b) and c and d);
s8 <=  a and b and c and ((a and b) or ((not c) and ((b and c) or (a and c))));
s9 <= ((not a) or b or (not c) or d) and (a or (not b) or c or (not d)) and (a or (not b) or (not c) or d) and ((not a) or b or c or (not d));
s10 <= (a or (not b)) and (a or (not b) or (not c)) and (b or c or (not d)) and ((not a) or b or (not c) or d);

end Behavioral;
