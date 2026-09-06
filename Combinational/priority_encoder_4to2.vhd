
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_4to2 is
    Port (
        d     : in  STD_LOGIC_VECTOR(3 downto 0); -- Inputs: d(3) highest priority, d(0) lowest
        y     : out STD_LOGIC_VECTOR(1 downto 0); -- Encoded output
        valid : out STD_LOGIC                     -- '1' if at least one input is high
    );
end priority_encoder_4to2;

architecture Behavioral of priority_encoder_4to2 is
begin
    process(d)
    begin
        valid <= '1';
        if d(3) = '1' then
            y <= "11";
        elsif d(2) = '1' then
            y <= "10";
        elsif d(1) = '1' then
            y <= "01";
        elsif d(0) = '1' then
            y <= "00";
        else
            y <= "00";
            valid <= '0'; -- All inputs are zero
        end if;
    end process;
end Behavioral;
