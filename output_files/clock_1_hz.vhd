library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all

entity clock1hz is
	port(
		clock: in std_logic;
		clock_hz: out std_logic);
end clock1hz;

architecture RTL of clock1hz is
signal contador: std_logic_vector(25 downto 0);
signal clock_atual: std_logic;
begin
	process (clock)
	begin
		if (clock'event and clock='0') then
			contador <= contador + 1;
		end if;
		if (contador = 0) then
			clock_atual <= not clock_atual;
		end if;
		clock_hz <= clock_atual;
	end process;
end RTL;