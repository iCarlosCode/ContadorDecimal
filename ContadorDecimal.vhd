library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ContadorDecimal is
	port(
		-- Entradas
		sentido_contagem: std_logic;
		reset: in std_logic;
		clock_50mhz : in std_logic;
		
		-- Saidas para simulacao
		s_decimal: out std_logic_vector (6 downto 0);
		s_unidade: out std_logic_vector (6 downto 0);
		s_dezena: out std_logic_vector (6 downto 0);
		
		-- Saidas para a placa
		s_clock: out std_logic;
		s_bcd7s_dezena: out std_logic_vector (0 to 6);
		s_bcd7s_infos: out std_logic_vector (0 to 6);
		s_bcd7s_unidade: out std_logic_vector (0 to 6)
		
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
signal clock_1hz: std_logic;
begin
	s_clock <= clock_1hz;
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
			
	s_bcd7s_infos <= "1111010" WHEN reset='0' else
			"0110001" WHEN sentido_contagem='0' else
			"1000010" WHEN sentido_contagem='1' else
			"0110000";
			
			
	clkdiv: CLOCK1HZ PORT MAP (clock_50mhz, clock_1hz);		
	contar: process(clock_50mhz, reset)
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
			-- use clock_50mhz para a simulação
		elsif clock_1hz'event AND clock_1hz='0' then
		
			if sentido_contagem = '0' then
				for i in 8 downto 0 loop
					if q >= i * 10 + 9 then
						dezena <= "000" & std_logic_vector(to_unsigned(i+1, dezena'length-3));
						unidade <= q - (i * 10 + 9);
						exit; -- Sai da loop
					elsif q < 9 then
						unidade <= q + 1;
						exit;
					end if;
				end loop;
				
				q <= q + 1;
				if q = 99 then
					--sentido_contagem <= '1';
					q <= "0000000";
					dezena <= "0000000";
					unidade <= "0000000";
				end if;
			elsif sentido_contagem = '1' then
				for i in 9 downto 0 loop
					if q >= i * 10 + 1 then
						dezena <= "000" & std_logic_vector(to_unsigned(i, dezena'length-3));
						unidade <= q - (i * 10 + 1);
						exit; -- Sai da loop
					elsif q < 9 then
						unidade <= q - 1;
						exit;
					end if;
				end loop;
				
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