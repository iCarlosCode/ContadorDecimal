library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ContadorDecimal is
	port(
		sentido_contagem: std_logic;
		reset: in std_logic;
		s_reset: out std_logic;
		clk : in std_logic;
		s_decimal: out std_logic_vector (6 downto 0);
		s_unidade: out std_logic_vector (6 downto 0);
		s_dezena: out std_logic_vector (6 downto 0);
		s_bcd7s_dezena: out std_logic_vector (0 to 6);
		s_bcd7s_unidade: out std_logic_vector (0 to 6);
		s_bcd: out std_logic_vector (7 downto 0)
		
	);
end ContadorDecimal;

architecture A of ContadorDecimal is

component CLOCK1HZ
	port (clkin : in std_logic;
       clkout : out std_logic
     );
end component;


signal q: std_logic_vector (6 downto 0);
signal dezena: std_logic_vector (6 downto 0);
signal unidade: std_logic_vector (6 downto 0);
--signal sentido_contagem: std_logic := '0';-- Quando 0 é pra somar, quando 1 é pra subtrair
signal clock: std_logic;
begin
s_reset <= clock;
s_decimal <= q;
s_dezena <= dezena;
s_unidade <= unidade;
with dezena select
	s_bcd7s_dezena <= "0000001" when "0000000",
			"1001111" when "0000001",
			"0010010" when "0000010",
			"0000110" when "0000011",
			"1001100" when "0000100",
			"0100100" when "0000101",
			"0100000" when "0000110",
			"0001111" when "0000111",
			"0000000" when "0001000",
			"0001100" when "0001001",
			"1111110" when others;
with unidade select
	s_bcd7s_unidade <= "0000001" when "0000000",
			"1001111" when "0000001",
			"0010010" when "0000010",
			"0000110" when "0000011",
			"1001100" when "0000100",
			"0100100" when "0000101",
			"0100000" when "0000110",
			"0001111" when "0000111",
			"0000000" when "0001000",
			"0001100" when "0001001",
			"1111110" when others;
			
			
	clkdiv: CLOCK1HZ PORT MAP (clk, clock);		
	contar: process(clock, reset)
	begin
		if (reset = '0' and sentido_contagem = '0') then
			q <= "0000000";
			dezena <= "0000000";
			unidade <= "0000000";
			--sentido_contagem <= '0';
		elsif (reset = '0' and sentido_contagem = '1') then
			q <= "1100011";
			dezena <= "0001001";
			unidade <= "0001001";
			--sentido_contagem <= '0';
			-- use clk para a simulação
		elsif clock'event AND clock='0' then
		
			if sentido_contagem = '0' then
				if (q >= 89) then
					dezena <= "0001001";
					unidade <= q - 89;
				elsif (q >= 79) then
					dezena <= "0001000";
					unidade <= q - 79;
				elsif (q >= 69) then
					dezena <= "0000111";
					unidade <= q - 69;				
				elsif (q >= 59) then
					dezena <= "0000110";
					unidade <= q - 59;				
				elsif (q >= 49) then
					dezena <= "0000101";
					unidade <= q - 49;				
				elsif (q >= 39) then
					dezena <= "0000100";
					unidade <= q - 39;				
				elsif (q >= 29) then
					dezena <= "0000011";
					unidade <= q - 29;				
				elsif (q >= 19) then
					dezena <= "0000010";
					unidade <= q - 19;				
				elsif (q >= 9) then
					dezena <= "0000001";
					unidade <= q - 9;
				else
					dezena <= "0000000";
					unidade <= q+1;
				end if;
				
				q <= q + 1;
				if q = 99 then
					--sentido_contagem <= '1';
					q <= "0000000";
					dezena <= "0000000";
					unidade <= "0000000";
				end if;
			elsif sentido_contagem = '1' then
				if (q >= 91) then
					dezena <= "0001001";
					unidade <= q - 91;
				elsif (q >= 81) then
					dezena <= "0001000";
					unidade <= q - 81;
				elsif (q >= 71) then
					dezena <= "0000111";
					unidade <= q - 71;				
				elsif (q >= 61) then
					dezena <= "0000110";
					unidade <= q - 61;				
				elsif (q >= 51) then
					dezena <= "0000101";
					unidade <= q - 51;				
				elsif (q >= 41) then
					dezena <= "0000100";
					unidade <= q - 41;				
				elsif (q >= 31) then
					dezena <= "0000011";
					unidade <= q - 31;				
				elsif (q >= 21) then
					dezena <= "0000010";
					unidade <= q - 21;				
				elsif (q >= 11) then
					dezena <= "0000001";
					unidade <= q - 11;
				else
					dezena <= "0000000";
					unidade <= q - 1;
				end if;
				
				q <= q - 1;
				if q = 0 then
					--sentido_contagem <= '0';
					q <= "1100011";
					dezena <= "0001001";
					unidade <= "0001001";
				end if;
			end if;
		end if;
	
	end process contar;
end A;