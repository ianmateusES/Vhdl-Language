----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.04.2017 09:17:09
-- Design Name: 
-- Module Name: tb_Mux - Behavioral
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

entity tb_MUX is

end tb_MUX;

architecture Behavioral of tb_MUX is

   component MUX is
   Port ( ct : in STD_LOGIC_VECTOR (1 downto 0);
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           x : out STD_LOGIC);
    end component;
    
    signal ct : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
    signal a :  STD_LOGIC := '1';
    signal b :  STD_LOGIC := '0';
    signal c :  STD_LOGIC := '1';
    signal d :  STD_LOGIC := '0';
    signal x :  STD_LOGIC;
    
begin

    DUT: MUX port map (ct, a, b, c, d, x);
    
    P1: process
    begin    
        wait for 20ns;
        ct <= STD_LOGIC_VECTOR (unsigned (ct) + 1);
    
    end process P1;
    
end Behavioral;
