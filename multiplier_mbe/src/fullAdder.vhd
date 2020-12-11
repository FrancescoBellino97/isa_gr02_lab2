library IEEE;
Use IEEE. STD_LOGIC_1164.all;

	entity fulladder IS
		port (a,b,cin :in STD_LOGIC;
      sum,carry : out STD_LOGIC);
		end fulladder;
		
architecture FA_arch of fulladder is

   signal s1,c1,c2 : STD_LOGIC;
	
	component half_adder is
		port (a,b :in STD_LOGIC;
      sum,cry: out STD_LOGIC);
	end component;

	Begin
	
	 HA1: half_adder port map (a,b,s1,c1);
	 
	 HA2: half_adder port map (s1,cin,sum,c2);
	 
	 carry<= c1 or c2;



end FA_arch;