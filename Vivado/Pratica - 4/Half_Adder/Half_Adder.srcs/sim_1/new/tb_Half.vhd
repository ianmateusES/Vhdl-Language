----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2017 15:06:11
-- Design Name: 
-- Module Name: tb_Half - Behavioral
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

entity tb_Half is
 -- port ();
end tb_Half;

architecture Behavioral of tb_Half is

    component Half is
        Port ( ab : in STD_LOGIC_VECTOR (1 downto 0);
               s : out STD_LOGIC;
               carry_ot : out STD_LOGIC);
    end component;
    
    signal ab : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal s : STD_LOGIC;
    signal carry_ot : STD_LOGIC; 

begin
    DUT: Half port map (ab, s, carry_ot);
    
    P: process
    begin
        wait for 20ns;
        ab <= STD_LOGIC_VECTOR (UNSIGNED(ab) + 1);
    end process P;
    
end Behavioral;
