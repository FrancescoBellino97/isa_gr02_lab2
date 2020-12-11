library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

Entity changeSign is
   GENERIC ( N : integer:=33);
  Port(X: in std_logic_vector(N-1 downto 0);
       Y: out std_logic_vector(N-1 downto 0));
end changeSign;

Architecture behavioural of changeSign is
 
signal notInput:std_logic_vector(N-1 downto 0);
signal temp: unsigned(N-1 downto 0);

begin 

notInput<= NOT X;
temp<= unsigned(notInput) +1;
Y<= std_logic_vector(temp);

End behavioural;