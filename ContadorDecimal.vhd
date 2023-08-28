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
		s_bcd7s_dezena: out std_logic_vector (0 to 6);
		s_bcd7s_unidade: out std_logic_vector (0 to 6);
		s_bcd: out std_logic_vector (7 downto 0);
		s_decimal: out std_logic_vector (6 downto 0);
		s_unidade: out std_logic_vector (6 downto 0);
		s_dezena: out std_logic_vector (6 downto 0)
		
	);
end ContadorDecimal;

architecture Cont of ContadorDecimal is

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
			
			'
	clkdiv: CLOCK1HZ PORT MAP (clk, clock);		
	contar: process(clock, reset)
	begin
		if (reset = '0') then  
			if (sentido_contagem = '0') then
				q <= (others=>"0");
				dezena <= (others=>"0");
				unidade <= (others=>"0");
				--sentido_contagem <= '0';
			else 
				q <= "1100011";
				dezena <= "0001001";
				unidade <= "0001001";
				--sentido_contagem <= '1';
				
			end if;
			
		elsif clock'event AND clock='0' then
		
			if sentido_contagem = '0' then
				for i in 8 downto 0 loop
					if q >= i * 10 + 9 then
						dezena <= "000" & std_logic_vector(to_unsigned(i, dezena'length));
						unidade <= q - (i * 10 + 9);
						exit; -- Sai da loop
					end if;
				end loop;

				 dezena <= (others => '0');
				 unidade <= q + 1;
				 
			end if;
				
			q <= q + 1;
			
			if q = 99 then
				--sentido_contagem <= '1';
				q <= (others=>"0");
				dezena <= (others=>"0");
				unidade <= (others=>"0");
			end if;
			
			elsif sentido_contagem = '1' then
				 for i in 0 to 9 loop
					  if q >= 10*(9-i)+1 then
							dezena <= "000" & std_logic_vector(to_unsigned(i, dezena'length));
							unidade <= q - 10*(9-i);
							exit; -- Sai do loop
					  end if;
				 end loop;

				 dezena <= (others => '0'); 
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
end Cont;