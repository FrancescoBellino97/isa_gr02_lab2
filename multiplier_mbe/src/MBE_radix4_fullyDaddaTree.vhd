LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

	Entity MBE_radix4_fullyDaddaTree is
		GENERIC ( N : integer:=32);
		Port( multiplicand,multiplier: in std_logic_vector(N-1 downto 0);
				result: out std_logic_vector((2*N-1) downto 0)
		);
	End MBE_radix4_fullyDaddaTree;
	
	Architecture structural of MBE_radix4_fullyDaddaTree is
	
		signal p_p0 :std_logic_vector(N+3 downto 0);
		signal p_p1,p_p2,p_p3,p_p4,p_p5,p_p6,p_p7,p_p8,p_p9,p_p10,p_p11,p_p12,p_p13,p_p14:std_logic_vector(N+2 downto 0);
		signal p_p15: std_logic_vector(N+1 downto 0);
		signal p_p16: std_logic_vector(N-1 downto 0);
		signal f_add1,f_add2: std_logic_vector((2*N-1) downto 0);
		
		Component daddaTree is
		GENERIC ( N : integer:=32);
		Port( pp0: in std_logic_vector(N+3 downto 0);
		      pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10,pp11,pp12,pp13,pp14: in std_logic_vector(N+2 downto 0);
                      pp15: in std_logic_vector(N+1 downto 0);
	              pp16: in std_logic_vector(N-1 downto 0);
		      f_add1,f_add2: out std_logic_vector((2*N-1) downto 0)
		);
		End Component;
		
		Component operand_generation is
			GENERIC ( N : integer:=32);
			Port( multiplicand, multiplier: in std_logic_vector(N-1 downto 0);
		      		pp0:out std_logic_vector(N+3 downto 0);
		      		pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10,pp11,pp12,pp13,pp14:out std_logic_vector(N+2 downto 0);
		      		pp15:out std_logic_vector(N+1 downto 0);
		      		pp16: out std_logic_vector(N-1 downto 0)
			);
		End Component;
		
		Component final_adder IS
			GENERIC ( N : integer:=64);
			PORT (Add_first,Add_second: IN std_logic_vector(N-1 DOWNTO 0);
				outSum: out std_logic_vector(N-1 downto 0));
		END Component;
		
	Begin
	
		Generation_pp_Radix4: operand_generation PORT MAP(multiplicand,multiplier,p_p0,p_p1,p_p2,p_p3,p_p4,p_p5,p_p6,p_p7,p_p8,p_p9,p_p10,p_p11,p_p12,p_p13,p_p14,p_p15,p_p16);
		
		Fully_PP_DaddaTree: daddaTree PORT MAP(p_p0,p_p1,p_p2,p_p3,p_p4,p_p5,p_p6,p_p7,p_p8,p_p9,p_p10,p_p11,p_p12,p_p13,p_p14,p_p15,p_p16,f_add1,f_add2);
		
		Result_MBE: final_adder PORT MAP(f_add1,f_add2,result);
		
	end structural;		
