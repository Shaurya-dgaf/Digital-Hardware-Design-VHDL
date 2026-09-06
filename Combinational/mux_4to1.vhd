
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port (
        d   : in  STD_LOGIC_VECTOR(3 downto 0); -- Data inputs: d(0), d(1), d(2), d(3)
        sel : in  STD_LOGIC_VECTOR(1 downto 0); -- Select lines: sel(1 downto 0)
        y   : out STD_LOGIC                     -- Output
    );
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    process(d, sel)
    begin
        case sel is
            when "00" => y <= d(0);
            when "01" => y <= d(1);
            when "10" => y <= d(2);
            when "11" => y <= d(3);
            when others => y <= '0';
        end case;
    end process;
end Behavioral;
