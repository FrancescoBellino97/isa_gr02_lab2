LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

	ENTITY regOut_Exp IS
		GENERIC ( N : integer:=8);
		PORT ( Clock,Load: IN STD_LOGIC;
				 datoInput: in std_logic_vector(N-1 downto 0);
				 datoOutput : OUT std_logic_vector(N-1 DOWNTO 0));
	END regOut_Exp ;

	ARCHITECTURE Behavior OF regOut_Exp  IS

	BEGIN
		
		PROCESS (Clock)
			BEGIN
				IF (Clock'EVENT AND Clock = '1') THEN	
					IF (Load='1') THEN
						datoOutput <= datoInput;
					END IF;
				END IF;
		END PROCESS;
		
	END Behavior;