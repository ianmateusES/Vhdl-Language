----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2017 14:37:15
-- Design Name: 
-- Module Name: Subtractor - Behavioral
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

-- Uncomment the following library decrlaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Subtractor is
    Port ( a : in SIGNED (3 downto 0);
           b : in SIGNED (3 downto 0);
           borrow : inout SIGNED (2 downto 0);
           overflow : out STD_LOGIC;
           sn : out SIGNED (3 downto 0));
end Subtractor;

architecture Behavioral of Subtractor is
begin

sn(0) <= a(0) xor b(0);
borrow(0) <=  (not a(0)) and b(0);

sn(1) <= a(1) xor b(1) xor borrow(0);
borrow(1) <= ((not a(1)) and b(1)) or ((not a(1) xor b(1)) and borrow(0));

sn(2) <= a(2) xor b(2) xor borrow(1);
borrow(2) <= ((not a(2)) and b(2)) or ((not a(2) xor b(2)) and borrow(1));

sn(3) <= a(3) xor b(3) xor borrow(2);
overflow <= ((not a(3)) and b(3)) or (((not a(3)) xor b(3)) and borrow(2));

end Behavioral;
