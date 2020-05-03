----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2017 18:10:55
-- Design Name: 
-- Module Name: tb_DIRECIONAL - Behavioral
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

entity tb_DIRECIONAL is
-- Port();  
end tb_DIRECIONAL;

architecture Behavioral of tb_DIRECIONAL is
    component DIRECIONAL is 
        Port ( ct : in STD_LOGIC_VECTOR (1 downto 0);
               N : out STD_LOGIC;
               L : out STD_LOGIC;
               S : out STD_LOGIC;
               O : out STD_LOGIC);
    end component;
    
    signal ct : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
    signal N, L, S, O : STD_LOGIC;

begin
    DUT: DIRECIONAL port map (ct, N, L, S, O);
    
    P : process
    begin
    wait for 20ns;
    ct <= STD_LOGIC_VECTOR (UNSIGNED (ct) + 1);
    end process P;

end Behavioral;