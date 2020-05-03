library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Diagrama_3 is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           btn : in STD_LOGIC_VECTOR (3 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0);
           clk_150Mhz : in STD_LOGIC);
end Diagrama_3;

architecture Behavioral of Diagrama_3 is

    component Divisor_de_F is
        Port(clk_150Mhz :in STD_LOGIC;
             clk_1hz : buffer STD_LOGIC);
    end component;

    signal clk_1hz: STD_LOGIC;
    signal x, y: STD_LOGIC;
    Type StateMachine is (Q0, Q1, Q2);
    signal M_A: StateMachine := Q0;
    
begin
    DIV: Divisor_de_F port map (clk_150Mhz, clk_1hz);
    
    F: process(clk_1hz)
    begin
        
        if clk_1hz'event and clk_1hz = '1' then
            x <= sw(0);
        end if;
        
    end process F;
    
    B: process(clk_1hz, M_A, x)
    begin
        case x is
        when '0' =>
            case M_A is
            when Q0 =>
                M_A <= Q2;
                x <= '0';
                y <= '0';
            when Q1 =>
                M_A <= Q0;
                x <= '0';
                y <= '0';
            when Q2 =>
                x <= '0';
                y <= '0';
            end case;
        when '1' =>
            case M_A is 
            when Q0 =>
                x <= '0';
                y <= '0';
            when Q1 =>
                M_A <= Q0;
                x <= '1';
                y <= '0';            
            when Q2 =>
                M_A <= Q1;
                x <= '1';
                y <= '1'; 
            end case;
        end case;
    end process;
    
    L: process(y)
    begin
        case y is
        when '0' => led(0) <= y;
        when '1' => led(0) <= y;
        end case
    end process L;

end Behavioral;
    