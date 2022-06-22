library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity BoothMultiplier is
	port ( clk, rst : in std_logic;
	a, b : in std_logic_vector (3 downto 0);
	result : out std_logic_vector (7 downto 0) );
end entity;

architecture boothmultiplier of BoothMultiplier is 

signal state,next_state: std_logic;
signal P1P0,P3P2: std_logic_vector(7 downto 0);

begin

process (clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				state <= '0';
				P1P0<="00000000";
				P3P2<="00000000";
			else
				state <= next_state;
			end if;
		end if;
		if state = '0' then
			if b(1)='0' and b(0)='0' then
				P1P0 <= "00000000";
			elsif b(1)='0' and b(0)='1' then
				P1P0 <= "0000" & a(3 downto 0);
			elsif b(1)='1' and b(0)='0' then
				P1P0 <= "000" & a(3 downto 0) & '0';
			else
				P1P0 <= ("00" & a(3 downto 0) & "00")-("0000" & a(3 downto 0));
			end if;
				
			if b(3)='0' and b(2)='0' then
				P3P2 <= "00000000";
			elsif b(3)='0' and b(2)='1' then
				P3P2 <= "0000" & a(3 downto 0);
			elsif b(3)='1' and b(2)='0' then
				P3P2 <= "000" & a(3 downto 0) & '0';
			else
				P3P2 <= ("00" & a(3 downto 0) & "00")-("0000" & a(3 downto 0));
			end if;
			--sum <= (P3P2(5 downto 0) & "00") + P1P0;
			
		else 
			result <= P3P2(5 downto 0) & "00" + P1P0;
			
		end if;
		next_state <= not(state);

				
end process;
	
--	process(sum)
--		begin
--			result <= sum;
--	end process;
	
	
end architecture;