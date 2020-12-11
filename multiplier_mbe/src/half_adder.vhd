library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    port ( a,b : in std_logic;
           sum,cry: out std_logic
           );
end half_adder;

architecture adder_arch of half_adder is

  begin
  
     sum <= a xor b;
     cry <= a and b;
	  
end adder_arch;