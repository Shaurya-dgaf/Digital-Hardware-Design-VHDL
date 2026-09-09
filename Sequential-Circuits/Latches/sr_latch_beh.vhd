library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sr_latch_beh is
    Port (
        s    : in  STD_LOGIC;
        r    : in  STD_LOGIC;
        q    : out STD_LOGIC;
        qbar : out STD_LOGIC
    );
end sr_latch_beh;

architecture Behavioral of sr_latch_beh is
begin
    process(s, r)
    begin
        if (s = '0' and r = '0') then
            null;
        elsif (s = '0' and r = '1') then
            q    <= '0';
            qbar <= '1';
        elsif (s = '1' and r = '0') then
            q    <= '1';
            qbar <= '0';
        elsif (s = '1' and r = '1') then
            q    <= 'X';
            qbar <= 'X';
        end if;
    end process;
end Behavioral;
