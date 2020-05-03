library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Diagrama_1 is
    Port ( sw : in unsigned (3 downto 0);
           btn : in unsigned (3 downto 0);
           led : out unsigned (3 downto 0);
           clk_150Mhz : in STD_LOGIC);
end Diagrama_1;

architecture Behavioral of Diagrama_1 is

    component Divisor_de_F is
        Port(clk_150Mhz :in STD_LOGIC;
             clk_1hz : buffer STD_LOGIC);
    end component;

    signal clk_1hz: STD_LOGIC;
    signal x, y: unsigned (1 downto 0);
    Type StateMachine is (Q0, Q1, Q2);
    signal M_A: StateMachine := Q0;

    
begin
    DIV: Divisor_de_F port map (clk_150Mhz, clk_1hz);
    
    B: process(sw)
    begin
        x <= sw(1 downto 0);
    end process B;
    
    C: process(clk_1hz, M_A)
    begin
        if clk_1hz'event and clk_1hz = '1' then
            case x is
            when "00" => 
                case M_A is
                when Q0 =>
                    y <= "00";
                    x <= "01";
                when Q1 =>
                    y <= "00";
                when Q2 =>
                    y <= "01";
                    x <= "00";
                end case;
                
            when "01" =>
                case M_A is
                when Q0 =>
                    y <= "01";
                    x <= "01";
                when Q1 =>
                    M_A <= Q0;
                    y <= "01";
                when Q2 =>
                    M_A <= Q1;
                    y <= "00";
                end case;
            
            when "10" =>
                case M_A is
                when Q0 =>
                    M_A <= Q1;
                    y <= "00";
                when Q1 =>
                    M_A <= Q0;
                    y <= "00";
                when Q2 =>
                    M_A <= Q1;
                    y <= "00";
                end case;
            when "11" =>
                case M_A is
                when Q0 =>
                    M_A <= Q2;
                    y <= "01";
                when Q1 =>
                    M_A <= Q0;
                    y <= "01";
                when Q2 =>
                    x <= "00";
                    y <= "01";
                end case;
            end case;
        end if;
    end process C;
    
    L: process(y)
    begin
        case y is
        when "00" => led <= y;
        when "01" => led <= y;
        end case;
    end process L;
    
end Behavioral;
