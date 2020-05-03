----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2017 09:19:57
-- Design Name: 
-- Module Name: Full_4bits - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_4bits is
    Port ( a : in SIGNED (3 downto 0);
           b : in SIGNED (3 downto 0);
           carry : inout SIGNED (2 downto 0);
           overflow : out STD_LOGIC;
           sn : out SIGNED (3 downto 0));
end Full_4bits;

architecture Behavioral of Full_4bits is
    
begin
    
    sn(0) <= a(0) xor b(0);
    carry(0) <= (a(0) and b(0));
    
    sn(1) <= a(1) xor b(1) xor carry(0);
    carry(1) <= (a(1) and b(1)) or ((a(1)xor b(1)) and carry(0));
    
    sn(2) <= a(2) xor b(2) xor carry(1);
    carry(2) <= (a(2) and b(2)) or ((a(2)xor b(2)) and carry(1));
    
    sn(3) <= a(3) xor b(3) xor carry(2);
    overflow <= (a(3) and b(3)) or ((a(3)xor b(3)) and carry(2));        

end Behavioral;
