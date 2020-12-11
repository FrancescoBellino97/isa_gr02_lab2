LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

	ENTITY final_adder IS
		GENERIC ( N : integer:=64);
		PORT (Add_first,Add_second: IN std_logic_vector(N-1 DOWNTO 0);
				outSum: out std_logic_vector(N-1 downto 0));
	END final_adder;

	ARCHITECTURE Behavior OF final_adder is
		signal temp: unsigned(N-1 downto 0);
		begin
		
		temp<= unsigned(Add_first) + unsigned(Add_second);
		outSum<=std_logic_vector(temp);

	end Behavior;