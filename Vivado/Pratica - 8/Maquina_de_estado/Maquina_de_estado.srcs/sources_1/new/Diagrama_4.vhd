library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Diagrama_4 is
    Port ( sw : in unsigned (3 downto 0);
           btn : in unsigned (3 downto 0);
           led : out unsigned (3 downto 0);
           clk_150Mhz : in STD_LOGIC);
end Diagrama_4;

architecture Behavioral of Diagrama_4 is

    component Divisor_de_F is
        Port(clk_150Mhz :in STD_LOGIC;
             clk_1hz : buffer STD_LOGIC);
    end component;

    signal clk_1hz: STD_LOGIC;
    signal OB: STD_LOGIC;
    signal RL: unsigned (1 downto 0);                            
    Type StateMachine is (Sar, SrL1, Sal, Srr); 
    signal M_A: StateMachine := Sar;
    
begin
    DIV: Divisor_de_F port map (clk_150Mhz, clk_1hz);
    
    F: process(clk_1hz)                                      
    begin
        
        if clk_1hz'event and clk_1hz = '1' then
            OB <= sw(0);
        end if;
    end process;
    
    B: process(clk_1hz)
    begin
        case OB is 
        when '0' =>
            case M_A is
            when Sar =>
                OB <= '0';
                RL <= "00";
            when SrL1 =>
                M_A <= Sal;
                OB <= '0';
                RL <= "00";
            when Sal =>
                OB <= '0';
                RL <= "00";
            when Srr =>
                M_A <= Sar;
                RL <= "00";
            end case;
            
        when '1' =>
            case M_A is
            when Sar =>
                M_A <= SrL1;
                RL <= "01";
            when SrL1 =>
                OB <= '1';
                RL <= "01";
            when Sal =>
                M_A <= Srr;
                RL <= "10";
            when Srr =>
                OB <= '1';
                RL <= "10";
            end case;
        end case;
        
    end process B;
    
    L: process(RL)
    begin
        case RL is
        when "00" => led(1 downto 0) <= RL;
        when "01" => led(1 downto 0) <= RL;
        when "10" => led(1 downto 0) <= RL;
    end process L;
    
end Behavioral;
