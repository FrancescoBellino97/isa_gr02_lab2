library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;
use std.textio.all;

	Entity operand_generation is
		GENERIC ( N : integer:=32);
		Port( multiplicand, multiplier: in std_logic_vector(N-1 downto 0);
		      pp0:out std_logic_vector(N+3 downto 0);
		      pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10,pp11,pp12,pp13,pp14:out std_logic_vector(N+2 downto 0);
		      pp15:out std_logic_vector(N+1 downto 0);
		      pp16: out std_logic_vector(N-1 downto 0)
		);
	End operand_generation;
	
	Architecture structural of operand_generation is
	
   --declaration of the signal connection
		signal Z,A,TwiceA,MinusA,MinusTwiceA: std_logic_vector(N downto 0);
		signal Z_32bit: std_logic_vector(N-1 downto 0);
		signal sel_pp0: std_logic_vector(1 downto 0);
		signal sel_pp1,sel_pp2,sel_pp3,sel_pp4,sel_pp5,sel_pp6,sel_pp7,sel_pp8,sel_pp9,sel_pp10: std_logic_vector(2 downto 0);
		signal sel_pp11,sel_pp12,sel_pp13,sel_pp14,sel_pp15: std_logic_vector(2 downto 0);
		signal sel_pp16: std_logic;

	--component declaration	
		Component changeSign is
			GENERIC ( N : integer:=33);
			Port(X: in std_logic_vector(N-1 downto 0);
					Y: out std_logic_vector(N-1 downto 0));
		end component;
		
		Component mux4to1_36bit is
			GENERIC ( N : integer:=36);
			port(
				selP_P: in std_logic_vector(1 downto 0);
				Input_Z,Input_A,Input_mA,Input_m2A: in std_logic_vector(N-4 downto 0);
				P_Pout: out std_logic_vector(N-1 downto 0));
		end component;		

		Component mux2to1_32bit is
			GENERIC ( N : integer:=32);
			port(
				selP_P: in std_logic;
				Input_Z,Input_A: in std_logic_vector(N-1 downto 0);
				P_Pout: out std_logic_vector(N-1 downto 0));
		end component;		
	
		Component mux8to1_35bit is
			GENERIC ( N : integer:=35);
			port(
				selP_P: in std_logic_vector(2 downto 0);
				Input_Z,Input_A,Input_2A,Input_mA,Input_m2A: in std_logic_vector(N-3 downto 0);
				P_Pout: out std_logic_vector(N-1 downto 0));
		end component;	

		Component mux8to1_34bit is
			GENERIC ( N : integer:=34);
			port(
				selP_P: in std_logic_vector(2 downto 0);
				Input_Z,Input_A,Input_2A,Input_mA,Input_m2A: in std_logic_vector(N-2 downto 0);
				P_Pout: out std_logic_vector(N-1 downto 0));
		end component;	

		Begin
		
      
      		Z<= (others => '0');

		Z_32bit<= (others => '0');
		
		A<='0'& multiplicand;

		TwiceA<=multiplicand&'0';
		
		Minus_A: changeSign Port Map(A,MinusA);
		
		Minus_2A: changeSign Port Map(TwiceA,MinusTwiceA);
		
		sel_pp0<= multiplier(1 downto 0);
		sel_pp1<= multiplier(3 downto 1);
		sel_pp2<= multiplier(5 downto 3);
		sel_pp3<= multiplier(7 downto 5);
		sel_pp4<= multiplier(9 downto 7);
		sel_pp5<= multiplier(11 downto 9);
		sel_pp6<= multiplier(13 downto 11);
		sel_pp7<= multiplier(15 downto 13);
		sel_pp8<= multiplier(17 downto 15);
		sel_pp9<= multiplier(19 downto 17);
		sel_pp10<= multiplier(21 downto 19);
		sel_pp11<= multiplier(23 downto 21);
		sel_pp12<= multiplier(25 downto 23);
		sel_pp13<= multiplier(27 downto 25);
		sel_pp14<= multiplier(29 downto 27);
		sel_pp15<= multiplier(31 downto 29);
		sel_pp16<= multiplier(31);
		
		First_Mux: mux4to1_36bit Port Map(sel_pp0,Z,A,MinusA,MinusTwiceA,pp0);
		
		Muxs_2: mux8to1_35bit port map(sel_pp1,Z,A,TwiceA,MinusA,MinusTwiceA,pp1);

		Muxs_3: mux8to1_35bit port map(sel_pp2,Z,A,TwiceA,MinusA,MinusTwiceA,pp2);
		
		Muxs_4:  mux8to1_35bit port map(sel_pp3,Z,A,TwiceA,MinusA,MinusTwiceA,pp3);
		
		Muxs_5:  mux8to1_35bit port map(sel_pp4,Z,A,TwiceA,MinusA,MinusTwiceA,pp4);
		
		Muxs_6:  mux8to1_35bit port map(sel_pp5,Z,A,TwiceA,MinusA,MinusTwiceA,pp5);
		
		Muxs_7:  mux8to1_35bit port map(sel_pp6,Z,A,TwiceA,MinusA,MinusTwiceA,pp6);
		
		Muxs_8:  mux8to1_35bit port map(sel_pp7,Z,A,TwiceA,MinusA,MinusTwiceA,pp7);
		
		Muxs_9:  mux8to1_35bit port map(sel_pp8,Z,A,TwiceA,MinusA,MinusTwiceA,pp8);
		
		Muxs_10:  mux8to1_35bit port map(sel_pp9,Z,A,TwiceA,MinusA,MinusTwiceA,pp9);
		
		Muxs_11:  mux8to1_35bit port map(sel_pp10,Z,A,TwiceA,MinusA,MinusTwiceA,pp10);
		
		Muxs_12: mux8to1_35bit port map(sel_pp11,Z,A,TwiceA,MinusA,MinusTwiceA,pp11);
		
		Muxs_13:  mux8to1_35bit port map(sel_pp12,Z,A,TwiceA,MinusA,MinusTwiceA,pp12);
		
		Muxs_14:  mux8to1_35bit port map(sel_pp13,Z,A,TwiceA,MinusA,MinusTwiceA,pp13);
		
		Muxs_15:  mux8to1_35bit port map(sel_pp14,Z,A,TwiceA,MinusA,MinusTwiceA,pp14);
		
		Muxs_16: mux8to1_34bit port map(sel_pp15,Z,A,TwiceA,MinusA,MinusTwiceA,pp15);
		
		Last_Mux_17: mux2to1_32bit Port Map(sel_pp16,Z_32bit,multiplicand,pp16);
		
		

	End Structural;
		
