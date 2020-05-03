----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2017 07:31:32
-- Design Name: 
-- Module Name: tb_Full - Behavioral
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

entity tb_Full is
 -- Port();
end tb_Full;

architecture Behavioral of tb_Full is
        component Full is 
            Port ( a : in STD_LOGIC;
                   b : in STD_LOGIC;
                   cout_m : in STD_LOGIC;
                   cout_n : out STD_LOGIC;
                   sn : out STD_LOGIC);
        end component;
        
        signal ab : STD_LOGIC_VECTOR (1 downto 0) := "00";
        signal cout_m : STD_LOGIC := '0';
        signal cout_n : STD_LOGIC;
        signal sn : STD_LOGIC; 

begin
    DUT: Full port map (ab(1), ab(0), cout_m, cout_n, sn);
    
    cout_m <= not cout_m after 20ns;
    
    P: process
    begin
        wait for 40ns;
        ab <= STD_LOGIC_VECTOR (unsigned (ab) + 1);
    end process P;
    
end Behavioral;