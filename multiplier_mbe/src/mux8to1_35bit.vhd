library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;
 
	entity mux8to1_35bit is
		GENERIC ( N : integer:=35);
		port(
				selP_P: in std_logic_vector(2 downto 0);
				Input_Z,Input_A,Input_2A,Input_mA,Input_m2A: in std_logic_vector(N-3 downto 0);
				P_Pout: out std_logic_vector(N-1 downto 0));
	end mux8to1_35bit;
 
	Architecture behavioural of mux8to1_35bit is
		
		signal pp: std_logic_vector(N-3 downto 0);
		signal sign :std_logic;
		begin
		
		MUX:process (selP_P,Input_Z,Input_A,Input_mA,Input_m2A,Input_2A)
			begin
			sign <= selP_P(2);
			 case selP_P is
				when "000" => 
					pp <= Input_Z; --0
				when "001" => 
					pp <= Input_A; --A
				when "010" => 
					pp<= Input_A; --A
				when "011" => 
					pp <= Input_2A; --2A
				when "100" => 
					pp <= Input_m2A; -- -2A
				when "101" => 
					pp <= Input_mA; -- -A
				when "110" => 
					pp <= Input_mA; -- -A
				when "111" => 
					pp <= Input_Z; -- 0
					sign <= '0';
				when others => 
					pp <= Input_Z; --0
			 end case;
		end process MUX;

		P_Pout<= '1'&not(sign)&pp;
		
	end behavioural;
