library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;
 
	entity mux4to1_36bit is
		GENERIC ( N : integer:=36);
		port(
				selP_P: in std_logic_vector(1 downto 0);
				Input_Z,Input_A,Input_mA,Input_m2A: in std_logic_vector(N-4 downto 0);
				P_Pout: out std_logic_vector(N-1 downto 0));
	end mux4to1_36bit;
 
	Architecture behavioural of mux4to1_36bit is

		signal pp: std_logic_vector(N-4 downto 0);
		signal s_z: std_logic_vector(N-5 downto 0);
		signal s: std_logic_vector(N-4 downto 0);
		signal temp: std_logic_vector(N-4 downto 0);

		begin
		
			MUX:process (selP_P,Input_Z,Input_A,Input_mA,Input_m2A)
			begin
			 case selP_P is
				when "00" => pp <= Input_Z;
				when "01" => pp <= Input_A;
				when "10" => pp<= Input_m2A;
				when "11" => pp <= Input_mA;
				when others => pp <= Input_Z; --0
			 end case;
			end process MUX;

			--s_z<= (others => '0');
			--s<= s_z & selP_P(1);
			--temp<= std_logic_vector(unsigned(s)+unsigned(pp));
			temp <= pp;
			P_Pout<= not(selP_P(1))&selP_P(1)&selP_P(1)&temp;

		
		
	end behavioural;
