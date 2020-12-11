LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

	ENTITY regOut_Sign IS
		PORT ( Clock,Load: IN STD_LOGIC;
				 datoInput: in std_logic;
				 datoOutput : OUT std_logic);
	END regOut_Sign;

	ARCHITECTURE Behavior OF regOut_Sign IS

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
