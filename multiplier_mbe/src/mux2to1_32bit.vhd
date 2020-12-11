library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;
 
	entity mux2to1_32bit is
		GENERIC ( N : integer:=32);
		port(
				selP_P: in std_logic;
				Input_Z,Input_A: in std_logic_vector(N-1 downto 0);
				P_Pout: out std_logic_vector(N-1 downto 0));
	end mux2to1_32bit;
 
	Architecture behavioural of mux2to1_32bit is
	
		begin
		
			MUX:process (selP_P,Input_Z,Input_A)
			begin
			 case selP_P is
				when '0' => P_Pout <= Input_Z; --0
				when '1' => P_Pout <= Input_A; --A
				when others => P_Pout <= Input_Z; --0
			 end case;
		end process MUX;
		
	end behavioural;
