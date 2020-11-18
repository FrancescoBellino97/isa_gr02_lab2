library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_sink is
	port (
		CLK   : in std_logic;
		FP_Z   : in std_logic_vector(31 downto 0));
end data_sink;

architecture beh of data_sink is

begin  -- beh

	process (CLK)
    file res_fp : text open WRITE_MODE is "result.hex";
    variable line_out : line;
	variable val : std_logic_vector(31 downto 0);
	begin  -- process
		if CLK'event and CLK = '1' then  -- rising clock edge
			
			val := FP_Z;
			hwrite(line_out, val);
			writeline(res_fp, line_out);
		end if;
		
	end process;
	
end beh;
