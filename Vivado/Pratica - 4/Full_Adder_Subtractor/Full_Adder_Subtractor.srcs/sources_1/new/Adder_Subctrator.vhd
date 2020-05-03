----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2017 19:26:45
-- Design Name: 
-- Module Name: Adder_Subctrator - Behavioral
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

entity Adder_Subctrator is
    Port ( op : in STD_LOGIC;
           a : in SIGNED (3 downto 0);
           b : in SIGNED (3 downto 0);
           overflowAdder : out STD_LOGIC;
           carry : inout SIGNED (2 downto 0);
           overflowSubtractor : out STD_LOGIC;
           borrow : inout SIGNED (2 downto 0); 
           sn : out SIGNED (3 downto 0));
end Adder_Subctrator;

architecture Behavioral of Adder_Subctrator is
    
    component Full_4bits is
        Port ( a : in SIGNED (3 downto 0);
               b : in SIGNED (3 downto 0);
               carry : inout SIGNED (2 downto 0);
               overflow : out STD_LOGIC;
               sn : out SIGNED (3 downto 0));
    end component;
    
    component Subtractor is
        Port ( a : in SIGNED (3 downto 0);
               b : in SIGNED (3 downto 0);
               borrow : inout SIGNED (2 downto 0);
               overflow : out STD_LOGIC;
               s : out SIGNED (3 downto 0));
    end component;
      
       signal s1, s2: SIGNED(3 downto 0);
       
begin
    UUT: Full_4bits port map (a, b, carry, overflowAdder, s1);
    HUM: Subtractor port map (a, b, borrow, overflowSubtractor, s2);
    
    WITH op SELECT
    sn <= s1 when '0',
          s2 when others; 

end Behavioral;
