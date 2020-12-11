LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

	Entity daddaTree is
		GENERIC ( N : integer:=32);
		Port( pp0: in std_logic_vector(N+3 downto 0);
		      pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10,pp11,pp12,pp13,pp14: in std_logic_vector(N+2 downto 0);
                      pp15: in std_logic_vector(N+1 downto 0);
	              pp16: in std_logic_vector(N-1 downto 0);
		      f_add1,f_add2: out std_logic_vector((2*N-1) downto 0)
		);
	End daddaTree;
	
	Architecture structural of daddaTree is
	
	type vector_6 is array (43 downto 0) of std_logic;
	type vector_5 is array (51 downto 0) of std_logic;
	type vector_4 is array (57 downto 0) of std_logic;
	type vector_3 is array (61 downto 0) of std_logic;
	type vector_2 is array (63 downto 0) of std_logic;
	type vector_1 is array (64 downto 0) of std_logic;
	type matrix_6 is array (0 to 12) of vector_6;
	type matrix_5 is array (0 to 8) of vector_5;
	type matrix_4 is array (0 to 5) of vector_4;
	type matrix_3 is array (0 to 4) of vector_3;
	type matrix_2 is array (0 to 2) of vector_2;
	type matrix_1 is array (0 to 1) of vector_1;
	signal layer_6: matrix_6;
	signal layer_5: matrix_5;
	signal layer_4: matrix_4;
	signal layer_3: matrix_3;
	signal layer_2: matrix_2;
	signal layer_1: matrix_1:=(others => (others=>'0'));
		
	Component half_adder is
    port ( a,b : in std_logic;
           sum,cry: out std_logic
           );
   end Component;
	
	Component fulladder IS
		port (a,b,cin :in STD_LOGIC;
      sum,carry : out STD_LOGIC);
	end Component;	
	
	
	Begin 
	
--layer7: FA&HA to generate layer6
--column26
HA1: half_adder port map(pp0(26),pp1(24),layer_6(0)(26),layer_6(0)(27));
--column27
FA1: fulladder port map(pp0(27),pp1(25),pp2(23),layer_6(1)(27),layer_6(0)(28));
--column28
FA2: fulladder port map(pp0(28),pp1(26),pp2(24),layer_6(1)(28),layer_6(0)(29));
HA2: half_adder port map(pp3(22),pp4(20),layer_6(2)(28),layer_6(1)(29));
--column29
FA3: fulladder port map(pp0(29),pp1(27),pp2(25),layer_6(2)(29),layer_6(0)(30));
FA4: fulladder port map(pp3(23),pp4(21),pp5(19),layer_6(3)(29),layer_6(1)(30));
--column30
FA5: fulladder port map(pp0(30),pp1(28),pp2(26),layer_6(2)(30),layer_6(0)(31));
FA6: fulladder port map(pp3(24),pp4(22),pp5(20),layer_6(3)(30),layer_6(1)(31));
HA3: half_adder port map(pp6(18),pp7(16),layer_6(4)(30),layer_6(2)(31));
--column31
FA7: fulladder port map(pp0(31),pp1(29),pp2(27),layer_6(3)(31),layer_6(0)(32));
FA8: fulladder port map(pp3(25),pp4(23),pp5(21),layer_6(4)(31),layer_6(1)(32));
FA9: fulladder port map(pp6(19),pp7(17),pp8(15),layer_6(5)(31),layer_6(2)(32));
--column32
FA10: fulladder port map(pp0(32),pp1(30),pp2(28),layer_6(3)(32),layer_6(0)(33));
FA11: fulladder port map(pp3(26),pp4(24),pp5(22),layer_6(4)(32),layer_6(1)(33));
FA12: fulladder port map(pp6(20),pp7(18),pp8(16),layer_6(5)(32),layer_6(2)(33));
HA4: half_adder port map(pp9(14),pp10(12),layer_6(6)(32),layer_6(3)(33));
--column33
FA13: fulladder port map(pp0(33),pp1(31),pp2(29),layer_6(4)(33),layer_6(0)(34));
FA14: fulladder port map(pp3(27),pp4(25),pp5(23),layer_6(5)(33),layer_6(1)(34));
FA15: fulladder port map(pp6(21),pp7(19),pp8(17),layer_6(6)(33),layer_6(2)(34));
FA16: fulladder port map(pp9(15),pp10(13),pp11(11),layer_6(7)(33),layer_6(3)(34));
--column34
FA17: fulladder port map(pp0(34),pp1(32),pp2(30),layer_6(4)(34),layer_6(0)(35));
FA18: fulladder port map(pp3(28),pp4(26),pp5(24),layer_6(5)(34),layer_6(1)(35));
FA19: fulladder port map(pp6(22),pp7(20),pp8(18),layer_6(6)(34),layer_6(2)(35));
FA20: fulladder port map(pp9(16),pp10(14),pp11(12),layer_6(7)(34),layer_6(3)(35));
--column35
FA21: fulladder port map(pp0(35),pp1(33),pp2(31),layer_6(4)(35),layer_6(0)(36));
FA22: fulladder port map(pp3(29),pp4(27),pp5(25),layer_6(5)(35),layer_6(1)(36));
FA23: fulladder port map(pp6(23),pp7(21),pp8(19),layer_6(6)(35),layer_6(2)(36));
FA24: fulladder port map(pp9(17),pp10(15),pp11(13),layer_6(7)(35),layer_6(3)(36));
--column36 
FA25: fulladder port map(pp1(34),pp2(32),pp3(30),layer_6(4)(36),layer_6(0)(37));
FA26: fulladder port map(pp4(28),pp5(26),pp6(24),layer_6(5)(36),layer_6(1)(37));
FA27: fulladder port map(pp7(22),pp8(20),pp9(18),layer_6(6)(36),layer_6(2)(37));
HA5: half_adder port map(pp10(16),pp11(14),layer_6(7)(36),layer_6(3)(37));
--column37 
FA28: fulladder port map(pp2(33),pp3(31),pp4(29),layer_6(4)(37),layer_6(0)(38));
FA29: fulladder port map(pp5(27),pp6(25),pp7(23),layer_6(5)(37),layer_6(1)(38));
FA30: fulladder port map(pp8(21),pp9(19),pp10(17),layer_6(6)(37),layer_6(2)(38));
--column38 
FA31: fulladder port map(pp2(34),pp3(32),pp4(30),layer_6(3)(38),layer_6(0)(39));
FA32: fulladder port map(pp5(28),pp6(26),pp7(24),layer_6(4)(38),layer_6(1)(39));
HA6: half_adder port map(pp8(22),pp9(20),layer_6(5)(38),layer_6(2)(39));
--column39
FA33: fulladder port map(pp3(33),pp4(31),pp5(29),layer_6(3)(39),layer_6(0)(40));
FA34: fulladder port map(pp6(27),pp7(25),pp8(23),layer_6(4)(39),layer_6(1)(40));
--column40
FA35: fulladder port map(pp3(34),pp4(32),pp5(30),layer_6(2)(40),layer_6(0)(41));
HA7: half_adder port map(pp6(28),pp7(26),layer_6(3)(40),layer_6(1)(41));
--column41
FA36: fulladder port map(pp4(33),pp5(31),pp6(29),layer_6(2)(41),layer_6(0)(42));
--column42
HA8: half_adder port map(pp4(34),pp5(32),layer_6(1)(42),layer_6(0)(43));
--layer6: FA&HA to generate layer5
--column18
HA9: half_adder port map(pp0(18),pp1(16),layer_5(0)(18),layer_5(0)(19));
--column19
FA37: fulladder port map(pp0(19),pp1(17),pp2(15),layer_5(1)(19),layer_5(0)(20));
--column20
FA38: fulladder port map(pp0(20),pp1(18),pp2(16),layer_5(1)(20),layer_5(0)(21));
HA10: half_adder port map(pp3(14),pp4(12),layer_5(2)(20),layer_5(1)(21));
--column21
FA39: fulladder port map(pp0(21),pp1(19),pp2(17),layer_5(2)(21),layer_5(0)(22));
FA40: fulladder port map(pp3(15),pp4(13),pp5(11),layer_5(3)(21),layer_5(1)(22));
--column22
FA41: fulladder port map(pp0(22),pp1(20),pp2(18),layer_5(2)(22),layer_5(0)(23));
FA42: fulladder port map(pp3(16),pp4(14),pp5(12),layer_5(3)(22),layer_5(1)(23));
HA11: half_adder port map(pp6(10),pp7(8),layer_5(4)(22),layer_5(2)(23));
--column23
FA43: fulladder port map(pp0(23),pp1(21),pp2(19),layer_5(3)(23),layer_5(0)(24));
FA44: fulladder port map(pp3(17),pp4(15),pp5(13),layer_5(4)(23),layer_5(1)(24));
FA45: fulladder port map(pp6(11),pp7(9),pp8(7),layer_5(5)(23),layer_5(2)(24));
--column24
FA46: fulladder port map(pp0(24),pp1(22),pp2(20),layer_5(3)(24),layer_5(0)(25));
FA47: fulladder port map(pp3(18),pp4(16),pp5(14),layer_5(4)(24),layer_5(1)(25));
FA48: fulladder port map(pp6(12),pp7(10),pp8(8),layer_5(5)(24),layer_5(2)(25));
HA12: half_adder port map(pp9(6),pp10(4),layer_5(6)(24),layer_5(3)(25));
--column25
FA49: fulladder port map(pp0(25),pp1(23),pp2(21),layer_5(4)(25),layer_5(0)(26));
FA50: fulladder port map(pp3(19),pp4(17),pp5(15),layer_5(5)(25),layer_5(1)(26));
FA51: fulladder port map(pp6(13),pp7(11),pp8(9),layer_5(6)(25),layer_5(2)(26));
FA52: fulladder port map(pp9(7),pp10(5),pp11(3),layer_5(7)(25),layer_5(3)(26));
--column26
FA53: fulladder port map(layer_6(0)(26),pp2(22),pp3(20),layer_5(4)(26),layer_5(0)(27));
FA54: fulladder port map(pp4(18),pp5(16),pp6(14),layer_5(5)(26),layer_5(1)(27));
FA55: fulladder port map(pp7(12),pp8(10),pp9(8),layer_5(6)(26),layer_5(2)(27));
FA56: fulladder port map(pp10(6),pp11(4),pp12(2),layer_5(7)(26),layer_5(3)(27));
--column27
FA57: fulladder port map(layer_6(0)(27),layer_6(1)(27),pp3(21),layer_5(4)(27),layer_5(0)(28));
FA58: fulladder port map(pp4(19),pp5(17),pp6(15),layer_5(5)(27),layer_5(1)(28));
FA59: fulladder port map(pp7(13),pp8(11),pp9(9),layer_5(6)(27),layer_5(2)(28));
FA60: fulladder port map(pp10(7),pp11(5),pp12(3),layer_5(7)(27),layer_5(3)(28));
--column28
FA61: fulladder port map(layer_6(0)(28),layer_6(1)(28),layer_6(2)(28),layer_5(4)(28),layer_5(0)(29));
FA62: fulladder port map(pp5(18),pp6(16),pp7(14),layer_5(5)(28),layer_5(1)(29));
FA63: fulladder port map(pp8(12),pp9(10),pp10(8),layer_5(6)(28),layer_5(2)(29));
FA64: fulladder port map(pp11(6),pp12(4),pp13(2),layer_5(7)(28),layer_5(3)(29));
--column29
FA65: fulladder port map(layer_6(0)(29),layer_6(1)(29),layer_6(2)(29),layer_5(4)(29),layer_5(0)(30));
FA66: fulladder port map(layer_6(3)(29),pp6(17),pp7(15),layer_5(5)(29),layer_5(1)(30));
FA67: fulladder port map(pp8(13),pp9(11),pp10(9),layer_5(6)(29),layer_5(2)(30));
FA68: fulladder port map(pp11(7),pp12(5),pp13(3),layer_5(7)(29),layer_5(3)(30));
--column30
FA69: fulladder port map(layer_6(0)(30),layer_6(1)(30),layer_6(2)(30),layer_5(4)(30),layer_5(0)(31));
FA70: fulladder port map(layer_6(3)(30),layer_6(4)(30),pp8(14),layer_5(5)(30),layer_5(1)(31));
FA71: fulladder port map(pp9(12),pp10(10),pp11(8),layer_5(6)(30),layer_5(2)(31));
FA72: fulladder port map(pp12(6),pp13(4),pp14(2),layer_5(7)(30),layer_5(3)(31));
--column31
FA73: fulladder port map(layer_6(0)(31),layer_6(1)(31),layer_6(2)(31),layer_5(4)(31),layer_5(0)(32));
FA74: fulladder port map(layer_6(3)(31),layer_6(4)(31),layer_6(5)(31),layer_5(5)(31),layer_5(1)(32));
FA75: fulladder port map(pp9(13),pp10(11),pp11(9),layer_5(6)(31),layer_5(2)(32));
FA76: fulladder port map(pp12(7),pp13(5),pp14(3),layer_5(7)(31),layer_5(3)(32));
--column32
FA77: fulladder port map(layer_6(0)(32),layer_6(1)(32),layer_6(2)(32),layer_5(4)(32),layer_5(0)(33));
FA78: fulladder port map(layer_6(3)(32),layer_6(4)(32),layer_6(5)(32),layer_5(5)(32),layer_5(1)(33));
FA79: fulladder port map(layer_6(6)(32),pp11(10),pp12(8),layer_5(6)(32),layer_5(2)(33));
FA80: fulladder port map(pp13(6),pp14(4),pp15(2),layer_5(7)(32),layer_5(3)(33));
--column33
FA81: fulladder port map(layer_6(0)(33),layer_6(1)(33),layer_6(2)(33),layer_5(4)(33),layer_5(0)(34));
FA82: fulladder port map(layer_6(3)(33),layer_6(4)(33),layer_6(5)(33),layer_5(5)(33),layer_5(1)(34));
FA83: fulladder port map(layer_6(6)(33),layer_6(7)(33),pp12(9),layer_5(6)(33),layer_5(2)(34));
FA84: fulladder port map(pp13(7),pp14(5),pp15(3),layer_5(7)(33),layer_5(3)(34));
--column34
FA85: fulladder port map(layer_6(0)(34),layer_6(1)(34),layer_6(2)(34),layer_5(4)(34),layer_5(0)(35));
FA86: fulladder port map(layer_6(3)(34),layer_6(4)(34),layer_6(5)(34),layer_5(5)(34),layer_5(1)(35));
FA87: fulladder port map(layer_6(6)(34),layer_6(7)(34),pp12(10),layer_5(6)(34),layer_5(2)(35));
FA88: fulladder port map(pp13(8),pp14(6),pp15(4),layer_5(7)(34),layer_5(3)(35));
--column35
FA89: fulladder port map(layer_6(0)(35),layer_6(1)(35),layer_6(2)(35),layer_5(4)(35),layer_5(0)(36));
FA90: fulladder port map(layer_6(3)(35),layer_6(4)(35),layer_6(5)(35),layer_5(5)(35),layer_5(1)(36));
FA91: fulladder port map(layer_6(6)(35),layer_6(7)(35),pp12(11),layer_5(6)(35),layer_5(2)(36));
FA92: fulladder port map(pp13(9),pp14(7),pp15(5),layer_5(7)(35),layer_5(3)(36));
--column36
FA93: fulladder port map(layer_6(0)(36),layer_6(1)(36),layer_6(2)(36),layer_5(4)(36),layer_5(0)(37));
FA94: fulladder port map(layer_6(3)(36),layer_6(4)(36),layer_6(5)(36),layer_5(5)(36),layer_5(1)(37));
FA95: fulladder port map(layer_6(6)(36),layer_6(7)(36),pp12(12),layer_5(6)(36),layer_5(2)(37));
FA96: fulladder port map(pp13(10),pp14(8),pp15(6),layer_5(7)(36),layer_5(3)(37));
--column37
FA97: fulladder port map(layer_6(0)(37),layer_6(1)(37),layer_6(2)(37),layer_5(4)(37),layer_5(0)(38));
FA98: fulladder port map(layer_6(3)(37),layer_6(4)(37),layer_6(5)(37),layer_5(5)(37),layer_5(1)(38));
FA99: fulladder port map(layer_6(6)(37),pp11(15),pp12(13),layer_5(6)(37),layer_5(2)(38));
FA100: fulladder port map(pp13(11),pp14(9),pp15(7),layer_5(7)(37),layer_5(3)(38));
--column38
FA101: fulladder port map(layer_6(0)(38),layer_6(1)(38),layer_6(2)(38),layer_5(4)(38),layer_5(0)(39));
FA102: fulladder port map(layer_6(3)(38),layer_6(4)(38),layer_6(5)(38),layer_5(5)(38),layer_5(1)(39));
FA103: fulladder port map(pp10(18),pp11(16),pp12(14),layer_5(6)(38),layer_5(2)(39));
FA104: fulladder port map(pp13(12),pp14(10),pp15(8),layer_5(7)(38),layer_5(3)(39));
--column39
FA105: fulladder port map(layer_6(0)(39),layer_6(1)(39),layer_6(2)(39),layer_5(4)(39),layer_5(0)(40));
FA106: fulladder port map(layer_6(3)(39),layer_6(4)(39),pp9(21),layer_5(5)(39),layer_5(1)(40));
FA107: fulladder port map(pp10(19),pp11(17),pp12(15),layer_5(6)(39),layer_5(2)(40));
FA108: fulladder port map(pp13(13),pp14(11),pp15(9),layer_5(7)(39),layer_5(3)(40));
--column40
FA109: fulladder port map(layer_6(0)(40),layer_6(1)(40),layer_6(2)(40),layer_5(4)(40),layer_5(0)(41));
FA110: fulladder port map(layer_6(3)(40),pp8(24),pp9(22),layer_5(5)(40),layer_5(1)(41));
FA111: fulladder port map(pp10(20),pp11(18),pp12(16),layer_5(6)(40),layer_5(2)(41));
FA112: fulladder port map(pp13(14),pp14(12),pp15(10),layer_5(7)(40),layer_5(3)(41));
--column41
FA113: fulladder port map(layer_6(0)(41),layer_6(1)(41),layer_6(2)(41),layer_5(4)(41),layer_5(0)(42));
FA114: fulladder port map(pp7(27),pp8(25),pp9(23),layer_5(5)(41),layer_5(1)(42));
FA115: fulladder port map(pp10(21),pp11(19),pp12(17),layer_5(6)(41),layer_5(2)(42));
FA116: fulladder port map(pp13(15),pp14(13),pp15(11),layer_5(7)(41),layer_5(3)(42));
--column42
FA117: fulladder port map(layer_6(0)(42),layer_6(1)(42),pp6(30),layer_5(4)(42),layer_5(0)(43));
FA118: fulladder port map(pp7(28),pp8(26),pp9(24),layer_5(5)(42),layer_5(1)(43));
FA119: fulladder port map(pp10(22),pp11(20),pp12(18),layer_5(6)(42),layer_5(2)(43));
FA120: fulladder port map(pp13(16),pp14(14),pp15(12),layer_5(7)(42),layer_5(3)(43));
--column43
FA121: fulladder port map(layer_6(0)(43),pp5(33),pp6(31),layer_5(4)(43),layer_5(0)(44));
FA122: fulladder port map(pp7(29),pp8(27),pp9(25),layer_5(5)(43),layer_5(1)(44));
FA123: fulladder port map(pp10(23),pp11(21),pp12(19),layer_5(6)(43),layer_5(2)(44));
FA124: fulladder port map(pp13(17),pp14(15),pp15(13),layer_5(7)(43),layer_5(3)(44));
--column44
FA125: fulladder port map(pp5(34),pp6(32),pp7(30),layer_5(4)(44),layer_5(0)(45));
FA126: fulladder port map(pp8(28),pp9(26),pp10(24),layer_5(5)(44),layer_5(1)(45));
FA127: fulladder port map(pp11(22),pp12(20),pp13(18),layer_5(6)(44),layer_5(2)(45));
HA13: half_adder port map(pp14(16),pp15(14),layer_5(7)(44),layer_5(3)(45));
--column45
FA128: fulladder port map(pp6(33),pp7(31),pp8(29),layer_5(4)(45),layer_5(0)(46));
FA129: fulladder port map(pp9(27),pp10(25),pp11(23),layer_5(5)(45),layer_5(1)(46));
FA130: fulladder port map(pp12(21),pp13(19),pp14(17),layer_5(6)(45),layer_5(2)(46));
--column46
FA131: fulladder port map(pp6(34),pp7(32),pp8(30),layer_5(3)(46),layer_5(0)(47));
FA132: fulladder port map(pp9(28),pp10(26),pp11(24),layer_5(4)(46),layer_5(1)(47));
HA14: half_adder port map(pp12(22),pp13(20),layer_5(5)(46),layer_5(2)(47));
--column47
FA133: fulladder port map(pp7(33),pp8(31),pp9(29),layer_5(3)(47),layer_5(0)(48));
FA134: fulladder port map(pp10(27),pp11(25),pp12(23),layer_5(4)(47),layer_5(1)(48));
--column48
FA135: fulladder port map(pp7(34),pp8(32),pp9(30),layer_5(2)(48),layer_5(0)(49));
HA15: half_adder port map(pp10(28),pp11(26),layer_5(3)(48),layer_5(1)(49));
--column49
FA136: fulladder port map(pp8(33),pp9(31),pp10(29),layer_5(2)(49),layer_5(0)(50));
--column50
HA16: half_adder port map(pp8(34),pp9(32),layer_5(1)(50),layer_5(0)(51));

--layer5: FA&HA to generate layer4
--column12
HA17: half_adder port map(pp0(12),pp1(10),layer_4(0)(12),layer_4(0)(13));
--column13
FA137: fulladder port map(pp0(13),pp1(11),pp2(9),layer_4(1)(13),layer_4(0)(14));
--column14
FA138: fulladder port map(pp0(14),pp1(12),pp2(10),layer_4(1)(14),layer_4(0)(15));
HA18: half_adder port map(pp3(8),pp4(6),layer_4(2)(14),layer_4(1)(15));
--column15
FA139: fulladder port map(pp0(15),pp1(13),pp2(11),layer_4(2)(15),layer_4(0)(16));
FA140: fulladder port map(pp3(9),pp4(7),pp5(5),layer_4(3)(15),layer_4(1)(16));
--column16
FA141: fulladder port map(pp0(16),pp1(14),pp2(12),layer_4(2)(16),layer_4(0)(17));
FA142: fulladder port map(pp3(10),pp4(8),pp5(6),layer_4(3)(16),layer_4(1)(17));
HA19: half_adder port map(pp6(4),pp7(2),layer_4(4)(16),layer_4(2)(17));
--column17
FA143: fulladder port map(pp0(17),pp1(15),pp2(13),layer_4(3)(17),layer_4(0)(18));
FA144: fulladder port map(pp3(11),pp4(9),pp5(7),layer_4(4)(17),layer_4(1)(18));
FA145: fulladder port map(pp6(5),pp7(3),pp8(1),layer_4(5)(17),layer_4(2)(18));
--column18
FA146: fulladder port map(layer_5(0)(18),pp2(14),pp3(12),layer_4(3)(18),layer_4(0)(19));
FA147: fulladder port map(pp4(10),pp5(8),pp6(6),layer_4(4)(18),layer_4(1)(19));
FA148: fulladder port map(pp7(4),pp8(2),pp9(0),layer_4(5)(18),layer_4(2)(19));
--column19
FA149: fulladder port map(layer_5(0)(19),layer_5(1)(19),pp3(13),layer_4(3)(19),layer_4(0)(20));
FA150: fulladder port map(pp4(11),pp5(9),pp6(7),layer_4(4)(19),layer_4(1)(20));
FA151: fulladder port map(pp7(5),pp8(3),pp9(1),layer_4(5)(19),layer_4(2)(20));
--column20
FA152: fulladder port map(layer_5(0)(20),layer_5(1)(20),layer_5(2)(20),layer_4(3)(20),layer_4(0)(21));
FA153: fulladder port map(pp5(10),pp6(8),pp7(6),layer_4(4)(20),layer_4(1)(21));
FA154: fulladder port map(pp8(4),pp9(2),pp10(0),layer_4(5)(20),layer_4(2)(21));
--column21
FA155: fulladder port map(layer_5(0)(21),layer_5(1)(21),layer_5(2)(21),layer_4(3)(21),layer_4(0)(22));
FA156: fulladder port map(layer_5(3)(21),pp6(9),pp7(7),layer_4(4)(21),layer_4(1)(22));
FA157: fulladder port map(pp8(5),pp9(3),pp10(1),layer_4(5)(21),layer_4(2)(22));
--column22
FA158: fulladder port map(layer_5(0)(22),layer_5(1)(22),layer_5(2)(22),layer_4(3)(22),layer_4(0)(23));
FA159: fulladder port map(layer_5(3)(22),layer_5(4)(22),pp8(6),layer_4(4)(22),layer_4(1)(23));
FA160: fulladder port map(pp9(4),pp10(2),pp11(0),layer_4(5)(22),layer_4(2)(23));
--column23
FA161: fulladder port map(layer_5(0)(23),layer_5(1)(23),layer_5(2)(23),layer_4(3)(23),layer_4(0)(24));
FA162: fulladder port map(layer_5(3)(23),layer_5(4)(23),layer_5(5)(23),layer_4(4)(23),layer_4(1)(24));
FA163: fulladder port map(pp9(5),pp10(3),pp11(1),layer_4(5)(23),layer_4(2)(24));
--column24
FA164: fulladder port map(layer_5(0)(24),layer_5(1)(24),layer_5(2)(24),layer_4(3)(24),layer_4(0)(25));
FA165: fulladder port map(layer_5(3)(24),layer_5(4)(24),layer_5(5)(24),layer_4(4)(24),layer_4(1)(25));
FA166: fulladder port map(layer_5(6)(24),pp11(2),pp12(0),layer_4(5)(24),layer_4(2)(25));
--column25
FA167: fulladder port map(layer_5(0)(25),layer_5(1)(25),layer_5(2)(25),layer_4(3)(25),layer_4(0)(26));
FA168: fulladder port map(layer_5(3)(25),layer_5(4)(25),layer_5(5)(25),layer_4(4)(25),layer_4(1)(26));
FA169: fulladder port map(layer_5(6)(25),layer_5(7)(25),pp12(1),layer_4(5)(25),layer_4(2)(26));
--column26
FA170: fulladder port map(layer_5(0)(26),layer_5(1)(26),layer_5(2)(26),layer_4(3)(26),layer_4(0)(27));
FA171: fulladder port map(layer_5(3)(26),layer_5(4)(26),layer_5(5)(26),layer_4(4)(26),layer_4(1)(27));
FA172: fulladder port map(layer_5(6)(26),layer_5(7)(26),pp13(0),layer_4(5)(26),layer_4(2)(27));
--column27
FA173: fulladder port map(layer_5(0)(27),layer_5(1)(27),layer_5(2)(27),layer_4(3)(27),layer_4(0)(28));
FA174: fulladder port map(layer_5(3)(27),layer_5(4)(27),layer_5(5)(27),layer_4(4)(27),layer_4(1)(28));
FA175: fulladder port map(layer_5(6)(27),layer_5(7)(27),pp13(1),layer_4(5)(27),layer_4(2)(28));
--column28
FA176: fulladder port map(layer_5(0)(28),layer_5(1)(28),layer_5(2)(28),layer_4(3)(28),layer_4(0)(29));
FA177: fulladder port map(layer_5(3)(28),layer_5(4)(28),layer_5(5)(28),layer_4(4)(28),layer_4(1)(29));
FA178: fulladder port map(layer_5(6)(28),layer_5(7)(28),pp14(0),layer_4(5)(28),layer_4(2)(29));
--column29
FA179: fulladder port map(layer_5(0)(29),layer_5(1)(29),layer_5(2)(29),layer_4(3)(29),layer_4(0)(30));
FA180: fulladder port map(layer_5(3)(29),layer_5(4)(29),layer_5(5)(29),layer_4(4)(29),layer_4(1)(30));
FA181: fulladder port map(layer_5(6)(29),layer_5(7)(29),pp14(1),layer_4(5)(29),layer_4(2)(30));
--column30
FA182: fulladder port map(layer_5(0)(30),layer_5(1)(30),layer_5(2)(30),layer_4(3)(30),layer_4(0)(31));
FA183: fulladder port map(layer_5(3)(30),layer_5(4)(30),layer_5(5)(30),layer_4(4)(30),layer_4(1)(31));
FA184: fulladder port map(layer_5(6)(30),layer_5(7)(30),pp15(0),layer_4(5)(30),layer_4(2)(31));
--column31
FA185: fulladder port map(layer_5(0)(31),layer_5(1)(31),layer_5(2)(31),layer_4(3)(31),layer_4(0)(32));
FA186: fulladder port map(layer_5(3)(31),layer_5(4)(31),layer_5(5)(31),layer_4(4)(31),layer_4(1)(32));
FA187: fulladder port map(layer_5(6)(31),layer_5(7)(31),pp15(1),layer_4(5)(31),layer_4(2)(32));
--column32
FA188: fulladder port map(layer_5(0)(32),layer_5(1)(32),layer_5(2)(32),layer_4(3)(32),layer_4(0)(33));
FA189: fulladder port map(layer_5(3)(32),layer_5(4)(32),layer_5(5)(32),layer_4(4)(32),layer_4(1)(33));
FA190: fulladder port map(layer_5(6)(32),layer_5(7)(32),pp16(0),layer_4(5)(32),layer_4(2)(33));
--column33
FA191: fulladder port map(layer_5(0)(33),layer_5(1)(33),layer_5(2)(33),layer_4(3)(33),layer_4(0)(34));
FA192: fulladder port map(layer_5(3)(33),layer_5(4)(33),layer_5(5)(33),layer_4(4)(33),layer_4(1)(34));
FA193: fulladder port map(layer_5(6)(33),layer_5(7)(33),pp16(1),layer_4(5)(33),layer_4(2)(34));
--column34
FA194: fulladder port map(layer_5(0)(34),layer_5(1)(34),layer_5(2)(34),layer_4(3)(34),layer_4(0)(35));
FA195: fulladder port map(layer_5(3)(34),layer_5(4)(34),layer_5(5)(34),layer_4(4)(34),layer_4(1)(35));
FA196: fulladder port map(layer_5(6)(34),layer_5(7)(34),pp16(2),layer_4(5)(34),layer_4(2)(35));
--column35
FA197: fulladder port map(layer_5(0)(35),layer_5(1)(35),layer_5(2)(35),layer_4(3)(35),layer_4(0)(36));
FA198: fulladder port map(layer_5(3)(35),layer_5(4)(35),layer_5(5)(35),layer_4(4)(35),layer_4(1)(36));
FA199: fulladder port map(layer_5(6)(35),layer_5(7)(35),pp16(3),layer_4(5)(35),layer_4(2)(36));
--column36
FA200: fulladder port map(layer_5(0)(36),layer_5(1)(36),layer_5(2)(36),layer_4(3)(36),layer_4(0)(37));
FA201: fulladder port map(layer_5(3)(36),layer_5(4)(36),layer_5(5)(36),layer_4(4)(36),layer_4(1)(37));
FA202: fulladder port map(layer_5(6)(36),layer_5(7)(36),pp16(4),layer_4(5)(36),layer_4(2)(37));
--column37
FA203: fulladder port map(layer_5(0)(37),layer_5(1)(37),layer_5(2)(37),layer_4(3)(37),layer_4(0)(38));
FA204: fulladder port map(layer_5(3)(37),layer_5(4)(37),layer_5(5)(37),layer_4(4)(37),layer_4(1)(38));
FA205: fulladder port map(layer_5(6)(37),layer_5(7)(37),pp16(5),layer_4(5)(37),layer_4(2)(38));
--column38
FA206: fulladder port map(layer_5(0)(38),layer_5(1)(38),layer_5(2)(38),layer_4(3)(38),layer_4(0)(39));
FA207: fulladder port map(layer_5(3)(38),layer_5(4)(38),layer_5(5)(38),layer_4(4)(38),layer_4(1)(39));
FA208: fulladder port map(layer_5(6)(38),layer_5(7)(38),pp16(6),layer_4(5)(38),layer_4(2)(39));
--column39
FA209: fulladder port map(layer_5(0)(39),layer_5(1)(39),layer_5(2)(39),layer_4(3)(39),layer_4(0)(40));
FA210: fulladder port map(layer_5(3)(39),layer_5(4)(39),layer_5(5)(39),layer_4(4)(39),layer_4(1)(40));
FA211: fulladder port map(layer_5(6)(39),layer_5(7)(39),pp16(7),layer_4(5)(39),layer_4(2)(40));
--column40
FA212: fulladder port map(layer_5(0)(40),layer_5(1)(40),layer_5(2)(40),layer_4(3)(40),layer_4(0)(41));
FA213: fulladder port map(layer_5(3)(40),layer_5(4)(40),layer_5(5)(40),layer_4(4)(40),layer_4(1)(41));
FA214: fulladder port map(layer_5(6)(40),layer_5(7)(40),pp16(8),layer_4(5)(40),layer_4(2)(41));
--column41
FA215: fulladder port map(layer_5(0)(41),layer_5(1)(41),layer_5(2)(41),layer_4(3)(41),layer_4(0)(42));
FA216: fulladder port map(layer_5(3)(41),layer_5(4)(41),layer_5(5)(41),layer_4(4)(41),layer_4(1)(42));
FA217: fulladder port map(layer_5(6)(41),layer_5(7)(41),pp16(9),layer_4(5)(41),layer_4(2)(42));
--column42
FA218: fulladder port map(layer_5(0)(42),layer_5(1)(42),layer_5(2)(42),layer_4(3)(42),layer_4(0)(43));
FA219: fulladder port map(layer_5(3)(42),layer_5(4)(42),layer_5(5)(42),layer_4(4)(42),layer_4(1)(43));
FA220: fulladder port map(layer_5(6)(42),layer_5(7)(42),pp16(10),layer_4(5)(42),layer_4(2)(43));
--column43
FA221: fulladder port map(layer_5(0)(43),layer_5(1)(43),layer_5(2)(43),layer_4(3)(43),layer_4(0)(44));
FA222: fulladder port map(layer_5(3)(43),layer_5(4)(43),layer_5(5)(43),layer_4(4)(43),layer_4(1)(44));
FA223: fulladder port map(layer_5(6)(43),layer_5(7)(43),pp16(11),layer_4(5)(43),layer_4(2)(44));
--column44
FA224: fulladder port map(layer_5(0)(44),layer_5(1)(44),layer_5(2)(44),layer_4(3)(44),layer_4(0)(45));
FA225: fulladder port map(layer_5(3)(44),layer_5(4)(44),layer_5(5)(44),layer_4(4)(44),layer_4(1)(45));
FA226: fulladder port map(layer_5(6)(44),layer_5(7)(44),pp16(12),layer_4(5)(44),layer_4(2)(45));
--column45
FA227: fulladder port map(layer_5(0)(45),layer_5(1)(45),layer_5(2)(45),layer_4(3)(45),layer_4(0)(46));
FA228: fulladder port map(layer_5(3)(45),layer_5(4)(45),layer_5(5)(45),layer_4(4)(45),layer_4(1)(46));
FA229: fulladder port map(layer_5(6)(45),pp15(15),pp16(13),layer_4(5)(45),layer_4(2)(46));
--column46
FA230: fulladder port map(layer_5(0)(46),layer_5(1)(46),layer_5(2)(46),layer_4(3)(46),layer_4(0)(47));
FA231: fulladder port map(layer_5(3)(46),layer_5(4)(46),layer_5(5)(46),layer_4(4)(46),layer_4(1)(47));
FA232: fulladder port map(pp14(18),pp15(16),pp16(14),layer_4(5)(46),layer_4(2)(47));
--column47
FA233: fulladder port map(layer_5(0)(47),layer_5(1)(47),layer_5(2)(47),layer_4(3)(47),layer_4(0)(48));
FA234: fulladder port map(layer_5(3)(47),layer_5(4)(47),pp13(21),layer_4(4)(47),layer_4(1)(48));
FA235: fulladder port map(pp14(19),pp15(17),pp16(15),layer_4(5)(47),layer_4(2)(48));
--column48
FA236: fulladder port map(layer_5(0)(48),layer_5(1)(48),layer_5(2)(48),layer_4(3)(48),layer_4(0)(49));
FA237: fulladder port map(layer_5(3)(48),pp12(24),pp13(22),layer_4(4)(48),layer_4(1)(49));
FA238: fulladder port map(pp14(20),pp15(18),pp16(16),layer_4(5)(48),layer_4(2)(49));
--column49
FA239: fulladder port map(layer_5(0)(49),layer_5(1)(49),layer_5(2)(49),layer_4(3)(49),layer_4(0)(50));
FA240: fulladder port map(pp11(27),pp12(25),pp13(23),layer_4(4)(49),layer_4(1)(50));
FA241: fulladder port map(pp14(21),pp15(19),pp16(17),layer_4(5)(49),layer_4(2)(50));
--column50
FA242: fulladder port map(layer_5(0)(50),layer_5(1)(50),pp10(30),layer_4(3)(50),layer_4(0)(51));
FA243: fulladder port map(pp11(28),pp12(26),pp13(24),layer_4(4)(50),layer_4(1)(51));
FA244: fulladder port map(pp14(22),pp15(20),pp16(18),layer_4(5)(50),layer_4(2)(51));
--column51
FA245: fulladder port map(layer_5(0)(51),pp9(33),pp10(31),layer_4(3)(51),layer_4(0)(52));
FA246: fulladder port map(pp11(29),pp12(27),pp13(25),layer_4(4)(51),layer_4(1)(52));
FA247: fulladder port map(pp14(23),pp15(21),pp16(19),layer_4(5)(51),layer_4(2)(52));
--column52
FA248: fulladder port map(pp9(34),pp10(32),pp11(30),layer_4(3)(52),layer_4(0)(53));
FA249: fulladder port map(pp12(28),pp13(26),pp14(24),layer_4(4)(52),layer_4(1)(53));
HA20: half_adder port map(pp15(22),pp16(20),layer_4(5)(52),layer_4(2)(53));
--column53
FA250: fulladder port map(pp10(33),pp11(31),pp12(29),layer_4(3)(53),layer_4(0)(54));
FA251: fulladder port map(pp13(27),pp14(25),pp15(23),layer_4(4)(53),layer_4(1)(54));
--column54
FA252: fulladder port map(pp10(34),pp11(32),pp12(30),layer_4(2)(54),layer_4(0)(55));
HA21: half_adder port map(pp13(28),pp14(26),layer_4(3)(54),layer_4(1)(55));
--column55
FA253: fulladder port map(pp11(33),pp12(31),pp13(29),layer_4(2)(55),layer_4(0)(56));
--column56
HA22: half_adder port map(pp11(34),pp12(32),layer_4(1)(56),layer_4(0)(57));

--layer4: FA&HA to generate layer3
--column8
HA23: half_adder port map(pp0(8),pp1(6),layer_3(0)(8),layer_3(0)(9));
--column9
FA254: fulladder port map(pp0(9),pp1(7),pp2(5),layer_3(1)(9),layer_3(0)(10));
--column10
FA255: fulladder port map(pp0(10),pp1(8),pp2(6),layer_3(1)(10),layer_3(0)(11));
HA24: half_adder port map(pp3(4),pp4(2),layer_3(2)(10),layer_3(1)(11));
--column11
FA256: fulladder port map(pp0(11),pp1(9),pp2(7),layer_3(2)(11),layer_3(0)(12));
FA257: fulladder port map(pp3(5),pp4(3),pp5(1),layer_3(3)(11),layer_3(1)(12));
--column12
FA258: fulladder port map(layer_4(0)(12),pp2(8),pp3(6),layer_3(2)(12),layer_3(0)(13));
FA259: fulladder port map(pp4(4),pp5(2),pp6(0),layer_3(3)(12),layer_3(1)(13));
--column13
FA260: fulladder port map(layer_4(0)(13),layer_4(1)(13),pp3(7),layer_3(2)(13),layer_3(0)(14));
FA261: fulladder port map(pp4(5),pp5(3),pp6(1),layer_3(3)(13),layer_3(1)(14));
--column14
FA262: fulladder port map(layer_4(0)(14),layer_4(1)(14),layer_4(2)(14),layer_3(2)(14),layer_3(0)(15));
FA263: fulladder port map(pp5(4),pp6(2),pp7(0),layer_3(3)(14),layer_3(1)(15));
--column15
FA264: fulladder port map(layer_4(0)(15),layer_4(1)(15),layer_4(2)(15),layer_3(2)(15),layer_3(0)(16));
FA265: fulladder port map(layer_4(3)(15),pp6(3),pp7(1),layer_3(3)(15),layer_3(1)(16));
--column16
FA266: fulladder port map(layer_4(0)(16),layer_4(1)(16),layer_4(2)(16),layer_3(2)(16),layer_3(0)(17));
FA267: fulladder port map(layer_4(3)(16),layer_4(4)(16),pp8(0),layer_3(3)(16),layer_3(1)(17));
--column17
FA268: fulladder port map(layer_4(0)(17),layer_4(1)(17),layer_4(2)(17),layer_3(2)(17),layer_3(0)(18));
FA269: fulladder port map(layer_4(3)(17),layer_4(4)(17),layer_4(5)(17),layer_3(3)(17),layer_3(1)(18));
--column18
FA270: fulladder port map(layer_4(0)(18),layer_4(1)(18),layer_4(2)(18),layer_3(2)(18),layer_3(0)(19));
FA271: fulladder port map(layer_4(3)(18),layer_4(4)(18),layer_4(5)(18),layer_3(3)(18),layer_3(1)(19));
--column19
FA272: fulladder port map(layer_4(0)(19),layer_4(1)(19),layer_4(2)(19),layer_3(2)(19),layer_3(0)(20));
FA273: fulladder port map(layer_4(3)(19),layer_4(4)(19),layer_4(5)(19),layer_3(3)(19),layer_3(1)(20));
--column20
FA274: fulladder port map(layer_4(0)(20),layer_4(1)(20),layer_4(2)(20),layer_3(2)(20),layer_3(0)(21));
FA275: fulladder port map(layer_4(3)(20),layer_4(4)(20),layer_4(5)(20),layer_3(3)(20),layer_3(1)(21));
--column21
FA276: fulladder port map(layer_4(0)(21),layer_4(1)(21),layer_4(2)(21),layer_3(2)(21),layer_3(0)(22));
FA277: fulladder port map(layer_4(3)(21),layer_4(4)(21),layer_4(5)(21),layer_3(3)(21),layer_3(1)(22));
--column22
FA278: fulladder port map(layer_4(0)(22),layer_4(1)(22),layer_4(2)(22),layer_3(2)(22),layer_3(0)(23));
FA279: fulladder port map(layer_4(3)(22),layer_4(4)(22),layer_4(5)(22),layer_3(3)(22),layer_3(1)(23));
--column23
FA280: fulladder port map(layer_4(0)(23),layer_4(1)(23),layer_4(2)(23),layer_3(2)(23),layer_3(0)(24));
FA281: fulladder port map(layer_4(3)(23),layer_4(4)(23),layer_4(5)(23),layer_3(3)(23),layer_3(1)(24));
--column24
FA282: fulladder port map(layer_4(0)(24),layer_4(1)(24),layer_4(2)(24),layer_3(2)(24),layer_3(0)(25));
FA283: fulladder port map(layer_4(3)(24),layer_4(4)(24),layer_4(5)(24),layer_3(3)(24),layer_3(1)(25));
--column25
FA284: fulladder port map(layer_4(0)(25),layer_4(1)(25),layer_4(2)(25),layer_3(2)(25),layer_3(0)(26));
FA285: fulladder port map(layer_4(3)(25),layer_4(4)(25),layer_4(5)(25),layer_3(3)(25),layer_3(1)(26));
--column26
FA286: fulladder port map(layer_4(0)(26),layer_4(1)(26),layer_4(2)(26),layer_3(2)(26),layer_3(0)(27));
FA287: fulladder port map(layer_4(3)(26),layer_4(4)(26),layer_4(5)(26),layer_3(3)(26),layer_3(1)(27));
--column27
FA288: fulladder port map(layer_4(0)(27),layer_4(1)(27),layer_4(2)(27),layer_3(2)(27),layer_3(0)(28));
FA289: fulladder port map(layer_4(3)(27),layer_4(4)(27),layer_4(5)(27),layer_3(3)(27),layer_3(1)(28));
--column28
FA290: fulladder port map(layer_4(0)(28),layer_4(1)(28),layer_4(2)(28),layer_3(2)(28),layer_3(0)(29));
FA291: fulladder port map(layer_4(3)(28),layer_4(4)(28),layer_4(5)(28),layer_3(3)(28),layer_3(1)(29));
--column29
FA292: fulladder port map(layer_4(0)(29),layer_4(1)(29),layer_4(2)(29),layer_3(2)(29),layer_3(0)(30));
FA293: fulladder port map(layer_4(3)(29),layer_4(4)(29),layer_4(5)(29),layer_3(3)(29),layer_3(1)(30));
--column30
FA294: fulladder port map(layer_4(0)(30),layer_4(1)(30),layer_4(2)(30),layer_3(2)(30),layer_3(0)(31));
FA295: fulladder port map(layer_4(3)(30),layer_4(4)(30),layer_4(5)(30),layer_3(3)(30),layer_3(1)(31));
--column31
FA296: fulladder port map(layer_4(0)(31),layer_4(1)(31),layer_4(2)(31),layer_3(2)(31),layer_3(0)(32));
FA297: fulladder port map(layer_4(3)(31),layer_4(4)(31),layer_4(5)(31),layer_3(3)(31),layer_3(1)(32));
--column32
FA298: fulladder port map(layer_4(0)(32),layer_4(1)(32),layer_4(2)(32),layer_3(2)(32),layer_3(0)(33));
FA299: fulladder port map(layer_4(3)(32),layer_4(4)(32),layer_4(5)(32),layer_3(3)(32),layer_3(1)(33));
--column33
FA300: fulladder port map(layer_4(0)(33),layer_4(1)(33),layer_4(2)(33),layer_3(2)(33),layer_3(0)(34));
FA301: fulladder port map(layer_4(3)(33),layer_4(4)(33),layer_4(5)(33),layer_3(3)(33),layer_3(1)(34));
--column34
FA302: fulladder port map(layer_4(0)(34),layer_4(1)(34),layer_4(2)(34),layer_3(2)(34),layer_3(0)(35));
FA303: fulladder port map(layer_4(3)(34),layer_4(4)(34),layer_4(5)(34),layer_3(3)(34),layer_3(1)(35));
--column35
FA304: fulladder port map(layer_4(0)(35),layer_4(1)(35),layer_4(2)(35),layer_3(2)(35),layer_3(0)(36));
FA305: fulladder port map(layer_4(3)(35),layer_4(4)(35),layer_4(5)(35),layer_3(3)(35),layer_3(1)(36));
--column36
FA306: fulladder port map(layer_4(0)(36),layer_4(1)(36),layer_4(2)(36),layer_3(2)(36),layer_3(0)(37));
FA307: fulladder port map(layer_4(3)(36),layer_4(4)(36),layer_4(5)(36),layer_3(3)(36),layer_3(1)(37));
--column37
FA308: fulladder port map(layer_4(0)(37),layer_4(1)(37),layer_4(2)(37),layer_3(2)(37),layer_3(0)(38));
FA309: fulladder port map(layer_4(3)(37),layer_4(4)(37),layer_4(5)(37),layer_3(3)(37),layer_3(1)(38));
--column38
FA310: fulladder port map(layer_4(0)(38),layer_4(1)(38),layer_4(2)(38),layer_3(2)(38),layer_3(0)(39));
FA311: fulladder port map(layer_4(3)(38),layer_4(4)(38),layer_4(5)(38),layer_3(3)(38),layer_3(1)(39));
--column39
FA312: fulladder port map(layer_4(0)(39),layer_4(1)(39),layer_4(2)(39),layer_3(2)(39),layer_3(0)(40));
FA313: fulladder port map(layer_4(3)(39),layer_4(4)(39),layer_4(5)(39),layer_3(3)(39),layer_3(1)(40));
--column40
FA314: fulladder port map(layer_4(0)(40),layer_4(1)(40),layer_4(2)(40),layer_3(2)(40),layer_3(0)(41));
FA315: fulladder port map(layer_4(3)(40),layer_4(4)(40),layer_4(5)(40),layer_3(3)(40),layer_3(1)(41));
--column41
FA316: fulladder port map(layer_4(0)(41),layer_4(1)(41),layer_4(2)(41),layer_3(2)(41),layer_3(0)(42));
FA317: fulladder port map(layer_4(3)(41),layer_4(4)(41),layer_4(5)(41),layer_3(3)(41),layer_3(1)(42));
--column42
FA318: fulladder port map(layer_4(0)(42),layer_4(1)(42),layer_4(2)(42),layer_3(2)(42),layer_3(0)(43));
FA319: fulladder port map(layer_4(3)(42),layer_4(4)(42),layer_4(5)(42),layer_3(3)(42),layer_3(1)(43));
--column43
FA320: fulladder port map(layer_4(0)(43),layer_4(1)(43),layer_4(2)(43),layer_3(2)(43),layer_3(0)(44));
FA321: fulladder port map(layer_4(3)(43),layer_4(4)(43),layer_4(5)(43),layer_3(3)(43),layer_3(1)(44));
--column44
FA322: fulladder port map(layer_4(0)(44),layer_4(1)(44),layer_4(2)(44),layer_3(2)(44),layer_3(0)(45));
FA323: fulladder port map(layer_4(3)(44),layer_4(4)(44),layer_4(5)(44),layer_3(3)(44),layer_3(1)(45));
--column45
FA324: fulladder port map(layer_4(0)(45),layer_4(1)(45),layer_4(2)(45),layer_3(2)(45),layer_3(0)(46));
FA325: fulladder port map(layer_4(3)(45),layer_4(4)(45),layer_4(5)(45),layer_3(3)(45),layer_3(1)(46));
--column46
FA326: fulladder port map(layer_4(0)(46),layer_4(1)(46),layer_4(2)(46),layer_3(2)(46),layer_3(0)(47));
FA327: fulladder port map(layer_4(3)(46),layer_4(4)(46),layer_4(5)(46),layer_3(3)(46),layer_3(1)(47));
--column47
FA328: fulladder port map(layer_4(0)(47),layer_4(1)(47),layer_4(2)(47),layer_3(2)(47),layer_3(0)(48));
FA329: fulladder port map(layer_4(3)(47),layer_4(4)(47),layer_4(5)(47),layer_3(3)(47),layer_3(1)(48));
--column48
FA330: fulladder port map(layer_4(0)(48),layer_4(1)(48),layer_4(2)(48),layer_3(2)(48),layer_3(0)(49));
FA331: fulladder port map(layer_4(3)(48),layer_4(4)(48),layer_4(5)(48),layer_3(3)(48),layer_3(1)(49));
--column49
FA332: fulladder port map(layer_4(0)(49),layer_4(1)(49),layer_4(2)(49),layer_3(2)(49),layer_3(0)(50));
FA333: fulladder port map(layer_4(3)(49),layer_4(4)(49),layer_4(5)(49),layer_3(3)(49),layer_3(1)(50));
--column50
FA334: fulladder port map(layer_4(0)(50),layer_4(1)(50),layer_4(2)(50),layer_3(2)(50),layer_3(0)(51));
FA335: fulladder port map(layer_4(3)(50),layer_4(4)(50),layer_4(5)(50),layer_3(3)(50),layer_3(1)(51));
--column51
FA336: fulladder port map(layer_4(0)(51),layer_4(1)(51),layer_4(2)(51),layer_3(2)(51),layer_3(0)(52));
FA337: fulladder port map(layer_4(3)(51),layer_4(4)(51),layer_4(5)(51),layer_3(3)(51),layer_3(1)(52));
--column52
FA338: fulladder port map(layer_4(0)(52),layer_4(1)(52),layer_4(2)(52),layer_3(2)(52),layer_3(0)(53));
FA339: fulladder port map(layer_4(3)(52),layer_4(4)(52),layer_4(5)(52),layer_3(3)(52),layer_3(1)(53));
--column53
FA340: fulladder port map(layer_4(0)(53),layer_4(1)(53),layer_4(2)(53),layer_3(2)(53),layer_3(0)(54));
FA341: fulladder port map(layer_4(3)(53),layer_4(4)(53),pp16(21),layer_3(3)(53),layer_3(1)(54));
--column54
FA342: fulladder port map(layer_4(0)(54),layer_4(1)(54),layer_4(2)(54),layer_3(2)(54),layer_3(0)(55));
FA343: fulladder port map(layer_4(3)(54),pp15(24),pp16(22),layer_3(3)(54),layer_3(1)(55));
--column55
FA344: fulladder port map(layer_4(0)(55),layer_4(1)(55),layer_4(2)(55),layer_3(2)(55),layer_3(0)(56));
FA345: fulladder port map(pp14(27),pp15(25),pp16(23),layer_3(3)(55),layer_3(1)(56));
--column56
FA346: fulladder port map(layer_4(0)(56),layer_4(1)(56),pp13(30),layer_3(2)(56),layer_3(0)(57));
FA347: fulladder port map(pp14(28),pp15(26),pp16(24),layer_3(3)(56),layer_3(1)(57));
--column57
FA348: fulladder port map(layer_4(0)(57),pp12(33),pp13(31),layer_3(2)(57),layer_3(0)(58));
FA349: fulladder port map(pp14(29),pp15(27),pp16(25),layer_3(3)(57),layer_3(1)(58));
--column58
FA350: fulladder port map(pp12(34),pp13(32),pp14(30),layer_3(2)(58),layer_3(0)(59));
HA25: half_adder port map(pp15(28),pp16(26),layer_3(3)(58),layer_3(1)(59));
--column59
FA351: fulladder port map(pp13(33),pp14(31),pp15(29),layer_3(2)(59),layer_3(0)(60));
--column60
HA26: half_adder port map(pp13(34),pp14(32),layer_3(1)(60),layer_3(0)(61));

--layer3: FA&HA to generate layer2
--column6
HA27: half_adder port map(pp0(6),pp1(4),layer_2(0)(6),layer_2(0)(7));
--column7
FA352: fulladder port map(pp0(7),pp1(5),pp2(3),layer_2(1)(7),layer_2(0)(8));
--column8
FA353: fulladder port map(layer_3(0)(8),pp2(4),pp3(2),layer_2(1)(8),layer_2(0)(9));
--column9
FA354: fulladder port map(layer_3(0)(9),layer_3(1)(9),pp3(3),layer_2(1)(9),layer_2(0)(10));
--column10
FA355: fulladder port map(layer_3(0)(10),layer_3(1)(10),layer_3(2)(10),layer_2(1)(10),layer_2(0)(11));
--column11
FA356: fulladder port map(layer_3(0)(11),layer_3(1)(11),layer_3(2)(11),layer_2(1)(11),layer_2(0)(12));
--column12
FA357: fulladder port map(layer_3(0)(12),layer_3(1)(12),layer_3(2)(12),layer_2(1)(12),layer_2(0)(13));
--column13
FA358: fulladder port map(layer_3(0)(13),layer_3(1)(13),layer_3(2)(13),layer_2(1)(13),layer_2(0)(14));
--column14
FA359: fulladder port map(layer_3(0)(14),layer_3(1)(14),layer_3(2)(14),layer_2(1)(14),layer_2(0)(15));
--column15
FA360: fulladder port map(layer_3(0)(15),layer_3(1)(15),layer_3(2)(15),layer_2(1)(15),layer_2(0)(16));
--column16
FA361: fulladder port map(layer_3(0)(16),layer_3(1)(16),layer_3(2)(16),layer_2(1)(16),layer_2(0)(17));
--column17
FA362: fulladder port map(layer_3(0)(17),layer_3(1)(17),layer_3(2)(17),layer_2(1)(17),layer_2(0)(18));
--column18
FA363: fulladder port map(layer_3(0)(18),layer_3(1)(18),layer_3(2)(18),layer_2(1)(18),layer_2(0)(19));
--column19
FA364: fulladder port map(layer_3(0)(19),layer_3(1)(19),layer_3(2)(19),layer_2(1)(19),layer_2(0)(20));
--column20
FA365: fulladder port map(layer_3(0)(20),layer_3(1)(20),layer_3(2)(20),layer_2(1)(20),layer_2(0)(21));
--column21
FA366: fulladder port map(layer_3(0)(21),layer_3(1)(21),layer_3(2)(21),layer_2(1)(21),layer_2(0)(22));
--column22
FA367: fulladder port map(layer_3(0)(22),layer_3(1)(22),layer_3(2)(22),layer_2(1)(22),layer_2(0)(23));
--column23
FA368: fulladder port map(layer_3(0)(23),layer_3(1)(23),layer_3(2)(23),layer_2(1)(23),layer_2(0)(24));
--column24
FA369: fulladder port map(layer_3(0)(24),layer_3(1)(24),layer_3(2)(24),layer_2(1)(24),layer_2(0)(25));
--column25
FA370: fulladder port map(layer_3(0)(25),layer_3(1)(25),layer_3(2)(25),layer_2(1)(25),layer_2(0)(26));
--column26
FA371: fulladder port map(layer_3(0)(26),layer_3(1)(26),layer_3(2)(26),layer_2(1)(26),layer_2(0)(27));
--column27
FA372: fulladder port map(layer_3(0)(27),layer_3(1)(27),layer_3(2)(27),layer_2(1)(27),layer_2(0)(28));
--column28
FA373: fulladder port map(layer_3(0)(28),layer_3(1)(28),layer_3(2)(28),layer_2(1)(28),layer_2(0)(29));
--column29
FA374: fulladder port map(layer_3(0)(29),layer_3(1)(29),layer_3(2)(29),layer_2(1)(29),layer_2(0)(30));
--column30
FA375: fulladder port map(layer_3(0)(30),layer_3(1)(30),layer_3(2)(30),layer_2(1)(30),layer_2(0)(31));
--column31
FA376: fulladder port map(layer_3(0)(31),layer_3(1)(31),layer_3(2)(31),layer_2(1)(31),layer_2(0)(32));
--column32
FA377: fulladder port map(layer_3(0)(32),layer_3(1)(32),layer_3(2)(32),layer_2(1)(32),layer_2(0)(33));
--column33
FA378: fulladder port map(layer_3(0)(33),layer_3(1)(33),layer_3(2)(33),layer_2(1)(33),layer_2(0)(34));
--column34
FA379: fulladder port map(layer_3(0)(34),layer_3(1)(34),layer_3(2)(34),layer_2(1)(34),layer_2(0)(35));
--column35
FA380: fulladder port map(layer_3(0)(35),layer_3(1)(35),layer_3(2)(35),layer_2(1)(35),layer_2(0)(36));
--column36
FA381: fulladder port map(layer_3(0)(36),layer_3(1)(36),layer_3(2)(36),layer_2(1)(36),layer_2(0)(37));
--column37
FA382: fulladder port map(layer_3(0)(37),layer_3(1)(37),layer_3(2)(37),layer_2(1)(37),layer_2(0)(38));
--column38
FA383: fulladder port map(layer_3(0)(38),layer_3(1)(38),layer_3(2)(38),layer_2(1)(38),layer_2(0)(39));
--column39
FA384: fulladder port map(layer_3(0)(39),layer_3(1)(39),layer_3(2)(39),layer_2(1)(39),layer_2(0)(40));
--column40
FA385: fulladder port map(layer_3(0)(40),layer_3(1)(40),layer_3(2)(40),layer_2(1)(40),layer_2(0)(41));
--column41
FA386: fulladder port map(layer_3(0)(41),layer_3(1)(41),layer_3(2)(41),layer_2(1)(41),layer_2(0)(42));
--column42
FA387: fulladder port map(layer_3(0)(42),layer_3(1)(42),layer_3(2)(42),layer_2(1)(42),layer_2(0)(43));
--column43
FA388: fulladder port map(layer_3(0)(43),layer_3(1)(43),layer_3(2)(43),layer_2(1)(43),layer_2(0)(44));
--column44
FA389: fulladder port map(layer_3(0)(44),layer_3(1)(44),layer_3(2)(44),layer_2(1)(44),layer_2(0)(45));
--column45
FA390: fulladder port map(layer_3(0)(45),layer_3(1)(45),layer_3(2)(45),layer_2(1)(45),layer_2(0)(46));
--column46
FA391: fulladder port map(layer_3(0)(46),layer_3(1)(46),layer_3(2)(46),layer_2(1)(46),layer_2(0)(47));
--column47
FA392: fulladder port map(layer_3(0)(47),layer_3(1)(47),layer_3(2)(47),layer_2(1)(47),layer_2(0)(48));
--column48
FA393: fulladder port map(layer_3(0)(48),layer_3(1)(48),layer_3(2)(48),layer_2(1)(48),layer_2(0)(49));
--column49
FA394: fulladder port map(layer_3(0)(49),layer_3(1)(49),layer_3(2)(49),layer_2(1)(49),layer_2(0)(50));
--column50
FA395: fulladder port map(layer_3(0)(50),layer_3(1)(50),layer_3(2)(50),layer_2(1)(50),layer_2(0)(51));
--column51
FA396: fulladder port map(layer_3(0)(51),layer_3(1)(51),layer_3(2)(51),layer_2(1)(51),layer_2(0)(52));
--column52
FA397: fulladder port map(layer_3(0)(52),layer_3(1)(52),layer_3(2)(52),layer_2(1)(52),layer_2(0)(53));
--column53
FA398: fulladder port map(layer_3(0)(53),layer_3(1)(53),layer_3(2)(53),layer_2(1)(53),layer_2(0)(54));
--column54
FA399: fulladder port map(layer_3(0)(54),layer_3(1)(54),layer_3(2)(54),layer_2(1)(54),layer_2(0)(55));
--column55
FA400: fulladder port map(layer_3(0)(55),layer_3(1)(55),layer_3(2)(55),layer_2(1)(55),layer_2(0)(56));
--column56
FA401: fulladder port map(layer_3(0)(56),layer_3(1)(56),layer_3(2)(56),layer_2(1)(56),layer_2(0)(57));
--column57
FA402: fulladder port map(layer_3(0)(57),layer_3(1)(57),layer_3(2)(57),layer_2(1)(57),layer_2(0)(58));
--column58
FA403: fulladder port map(layer_3(0)(58),layer_3(1)(58),layer_3(2)(58),layer_2(1)(58),layer_2(0)(59));
--column59
FA404: fulladder port map(layer_3(0)(59),layer_3(1)(59),layer_3(2)(59),layer_2(1)(59),layer_2(0)(60));
--column60
FA405: fulladder port map(layer_3(0)(60),layer_3(1)(60),pp15(30),layer_2(1)(60),layer_2(0)(61));
--column61
FA406: fulladder port map(layer_3(0)(61),pp14(33),pp15(31),layer_2(1)(61),layer_2(0)(62));
--column62
HA28: half_adder port map(pp14(34),pp15(32),layer_2(1)(62),layer_2(0)(63));

--layer2: FA&HA to generate layer1
--column4
HA29: half_adder port map(pp0(4),pp1(2),layer_1(0)(4),layer_1(0)(5));
--column5
FA407: fulladder port map(pp0(5),pp1(3),pp2(1),layer_1(1)(5),layer_1(0)(6));
--column6
FA408: fulladder port map(layer_2(0)(6),pp2(2),pp3(0),layer_1(1)(6),layer_1(0)(7));
--column7
FA409: fulladder port map(layer_2(0)(7),layer_2(1)(7),pp3(1),layer_1(1)(7),layer_1(0)(8));
--column8
FA410: fulladder port map(layer_2(0)(8),layer_2(1)(8),pp4(0),layer_1(1)(8),layer_1(0)(9));
--column9
FA411: fulladder port map(layer_2(0)(9),layer_2(1)(9),pp4(1),layer_1(1)(9),layer_1(0)(10));
--column10
FA412: fulladder port map(layer_2(0)(10),layer_2(1)(10),pp5(0),layer_1(1)(10),layer_1(0)(11));
--column11
FA413: fulladder port map(layer_2(0)(11),layer_2(1)(11),layer_3(3)(11),layer_1(1)(11),layer_1(0)(12));
--column12
FA414: fulladder port map(layer_2(0)(12),layer_2(1)(12),layer_3(3)(12),layer_1(1)(12),layer_1(0)(13));
--column13
FA415: fulladder port map(layer_2(0)(13),layer_2(1)(13),layer_3(3)(13),layer_1(1)(13),layer_1(0)(14));
--column14
FA416: fulladder port map(layer_2(0)(14),layer_2(1)(14),layer_3(3)(14),layer_1(1)(14),layer_1(0)(15));
--column15
FA417: fulladder port map(layer_2(0)(15),layer_2(1)(15),layer_3(3)(15),layer_1(1)(15),layer_1(0)(16));
--column16
FA418: fulladder port map(layer_2(0)(16),layer_2(1)(16),layer_3(3)(16),layer_1(1)(16),layer_1(0)(17));
--column17
FA419: fulladder port map(layer_2(0)(17),layer_2(1)(17),layer_3(3)(17),layer_1(1)(17),layer_1(0)(18));
--column18
FA420: fulladder port map(layer_2(0)(18),layer_2(1)(18),layer_3(3)(18),layer_1(1)(18),layer_1(0)(19));
--column19
FA421: fulladder port map(layer_2(0)(19),layer_2(1)(19),layer_3(3)(19),layer_1(1)(19),layer_1(0)(20));
--column20
FA422: fulladder port map(layer_2(0)(20),layer_2(1)(20),layer_3(3)(20),layer_1(1)(20),layer_1(0)(21));
--column21
FA423: fulladder port map(layer_2(0)(21),layer_2(1)(21),layer_3(3)(21),layer_1(1)(21),layer_1(0)(22));
--column22
FA424: fulladder port map(layer_2(0)(22),layer_2(1)(22),layer_3(3)(22),layer_1(1)(22),layer_1(0)(23));
--column23
FA425: fulladder port map(layer_2(0)(23),layer_2(1)(23),layer_3(3)(23),layer_1(1)(23),layer_1(0)(24));
--column24
FA426: fulladder port map(layer_2(0)(24),layer_2(1)(24),layer_3(3)(24),layer_1(1)(24),layer_1(0)(25));
--column25
FA427: fulladder port map(layer_2(0)(25),layer_2(1)(25),layer_3(3)(25),layer_1(1)(25),layer_1(0)(26));
--column26
FA428: fulladder port map(layer_2(0)(26),layer_2(1)(26),layer_3(3)(26),layer_1(1)(26),layer_1(0)(27));
--column27
FA429: fulladder port map(layer_2(0)(27),layer_2(1)(27),layer_3(3)(27),layer_1(1)(27),layer_1(0)(28));
--column28
FA430: fulladder port map(layer_2(0)(28),layer_2(1)(28),layer_3(3)(28),layer_1(1)(28),layer_1(0)(29));
--column29
FA431: fulladder port map(layer_2(0)(29),layer_2(1)(29),layer_3(3)(29),layer_1(1)(29),layer_1(0)(30));
--column30
FA432: fulladder port map(layer_2(0)(30),layer_2(1)(30),layer_3(3)(30),layer_1(1)(30),layer_1(0)(31));
--column31
FA433: fulladder port map(layer_2(0)(31),layer_2(1)(31),layer_3(3)(31),layer_1(1)(31),layer_1(0)(32));
--column32
FA434: fulladder port map(layer_2(0)(32),layer_2(1)(32),layer_3(3)(32),layer_1(1)(32),layer_1(0)(33));
--column33
FA435: fulladder port map(layer_2(0)(33),layer_2(1)(33),layer_3(3)(33),layer_1(1)(33),layer_1(0)(34));
--column34
FA436: fulladder port map(layer_2(0)(34),layer_2(1)(34),layer_3(3)(34),layer_1(1)(34),layer_1(0)(35));
--column35
FA437: fulladder port map(layer_2(0)(35),layer_2(1)(35),layer_3(3)(35),layer_1(1)(35),layer_1(0)(36));
--column36
FA438: fulladder port map(layer_2(0)(36),layer_2(1)(36),layer_3(3)(36),layer_1(1)(36),layer_1(0)(37));
--column37
FA439: fulladder port map(layer_2(0)(37),layer_2(1)(37),layer_3(3)(37),layer_1(1)(37),layer_1(0)(38));
--column38
FA440: fulladder port map(layer_2(0)(38),layer_2(1)(38),layer_3(3)(38),layer_1(1)(38),layer_1(0)(39));
--column39
FA441: fulladder port map(layer_2(0)(39),layer_2(1)(39),layer_3(3)(39),layer_1(1)(39),layer_1(0)(40));
--column40
FA442: fulladder port map(layer_2(0)(40),layer_2(1)(40),layer_3(3)(40),layer_1(1)(40),layer_1(0)(41));
--column41
FA443: fulladder port map(layer_2(0)(41),layer_2(1)(41),layer_3(3)(41),layer_1(1)(41),layer_1(0)(42));
--column42
FA444: fulladder port map(layer_2(0)(42),layer_2(1)(42),layer_3(3)(42),layer_1(1)(42),layer_1(0)(43));
--column43
FA445: fulladder port map(layer_2(0)(43),layer_2(1)(43),layer_3(3)(43),layer_1(1)(43),layer_1(0)(44));
--column44
FA446: fulladder port map(layer_2(0)(44),layer_2(1)(44),layer_3(3)(44),layer_1(1)(44),layer_1(0)(45));
--column45
FA447: fulladder port map(layer_2(0)(45),layer_2(1)(45),layer_3(3)(45),layer_1(1)(45),layer_1(0)(46));
--column46
FA448: fulladder port map(layer_2(0)(46),layer_2(1)(46),layer_3(3)(46),layer_1(1)(46),layer_1(0)(47));
--column47
FA449: fulladder port map(layer_2(0)(47),layer_2(1)(47),layer_3(3)(47),layer_1(1)(47),layer_1(0)(48));
--column48
FA450: fulladder port map(layer_2(0)(48),layer_2(1)(48),layer_3(3)(48),layer_1(1)(48),layer_1(0)(49));
--column49
FA451: fulladder port map(layer_2(0)(49),layer_2(1)(49),layer_3(3)(49),layer_1(1)(49),layer_1(0)(50));
--column50
FA452: fulladder port map(layer_2(0)(50),layer_2(1)(50),layer_3(3)(50),layer_1(1)(50),layer_1(0)(51));
--column51
FA453: fulladder port map(layer_2(0)(51),layer_2(1)(51),layer_3(3)(51),layer_1(1)(51),layer_1(0)(52));
--column52
FA454: fulladder port map(layer_2(0)(52),layer_2(1)(52),layer_3(3)(52),layer_1(1)(52),layer_1(0)(53));
--column53
FA455: fulladder port map(layer_2(0)(53),layer_2(1)(53),layer_3(3)(53),layer_1(1)(53),layer_1(0)(54));
--column54
FA456: fulladder port map(layer_2(0)(54),layer_2(1)(54),layer_3(3)(54),layer_1(1)(54),layer_1(0)(55));
--column55
FA457: fulladder port map(layer_2(0)(55),layer_2(1)(55),layer_3(3)(55),layer_1(1)(55),layer_1(0)(56));
--column56
FA458: fulladder port map(layer_2(0)(56),layer_2(1)(56),layer_3(3)(56),layer_1(1)(56),layer_1(0)(57));
--column57
FA459: fulladder port map(layer_2(0)(57),layer_2(1)(57),layer_3(3)(57),layer_1(1)(57),layer_1(0)(58));
--column58
FA460: fulladder port map(layer_2(0)(58),layer_2(1)(58),layer_3(3)(58),layer_1(1)(58),layer_1(0)(59));
--column59
FA461: fulladder port map(layer_2(0)(59),layer_2(1)(59),pp16(27),layer_1(1)(59),layer_1(0)(60));
--column60
FA462: fulladder port map(layer_2(0)(60),layer_2(1)(60),pp16(28),layer_1(1)(60),layer_1(0)(61));
--column61
FA463: fulladder port map(layer_2(0)(61),layer_2(1)(61),pp16(29),layer_1(1)(61),layer_1(0)(62));
--column62
FA464: fulladder port map(layer_2(0)(62),layer_2(1)(62),pp16(30),layer_1(1)(62),layer_1(0)(63));
--column63
FA465: fulladder port map(layer_2(0)(63),pp15(33),pp16(31),layer_1(1)(63),layer_1(0)(64));



	
	layer_1(0)(0)<=pp0(0);
	layer_1(0)(1)<=pp0(1);
	layer_1(0)(2)<=pp0(2);
	layer_1(0)(3)<=pp0(3);

	layer_1(1)(2)<=pp1(0);
	layer_1(1)(3)<=pp1(1);	
	layer_1(1)(4)<=pp2(2);		
	
f_add1<=layer_1(0)(63)&layer_1(0)(62)&layer_1(0)(61)&layer_1(0)(60)&layer_1(0)(59)&layer_1(0)(58)&layer_1(0)(57)&layer_1(0)(56)&layer_1(0)(55)&layer_1(0)(54)&layer_1(0)(53)&layer_1(0)(52)&layer_1(0)(51)&layer_1(0)(50)&layer_1(0)(49)&layer_1(0)(48)&layer_1(0)(47)&layer_1(0)(46)&layer_1(0)(45)&layer_1(0)(44)&layer_1(0)(43)&layer_1(0)(42)&layer_1(0)(41)&layer_1(0)(40)&layer_1(0)(39)&layer_1(0)(38)&layer_1(0)(37)&layer_1(0)(36)&layer_1(0)(35)&layer_1(0)(34)&layer_1(0)(33)&layer_1(0)(32)&layer_1(0)(31)&layer_1(0)(30)&layer_1(0)(29)&layer_1(0)(28)&layer_1(0)(27)&layer_1(0)(26)&layer_1(0)(25)&layer_1(0)(24)&layer_1(0)(23)&layer_1(0)(22)&layer_1(0)(21)&layer_1(0)(20)&layer_1(0)(19)&layer_1(0)(18)&layer_1(0)(17)&layer_1(0)(16)&layer_1(0)(15)&layer_1(0)(14)&layer_1(0)(13)&layer_1(0)(12)&layer_1(0)(11)&layer_1(0)(10)&layer_1(0)(9)&layer_1(0)(8)&layer_1(0)(7)&layer_1(0)(6)&layer_1(0)(5)&layer_1(0)(4)&layer_1(0)(3)&layer_1(0)(2)&layer_1(0)(1)&layer_1(0)(0);
f_add2<=layer_1(1)(63)&layer_1(1)(62)&layer_1(1)(61)&layer_1(1)(60)&layer_1(1)(59)&layer_1(1)(58)&layer_1(1)(57)&layer_1(1)(56)&layer_1(1)(55)&layer_1(1)(54)&layer_1(1)(53)&layer_1(1)(52)&layer_1(1)(51)&layer_1(1)(50)&layer_1(1)(49)&layer_1(1)(48)&layer_1(1)(47)&layer_1(1)(46)&layer_1(1)(45)&layer_1(1)(44)&layer_1(1)(43)&layer_1(1)(42)&layer_1(1)(41)&layer_1(1)(40)&layer_1(1)(39)&layer_1(1)(38)&layer_1(1)(37)&layer_1(1)(36)&layer_1(1)(35)&layer_1(1)(34)&layer_1(1)(33)&layer_1(1)(32)&layer_1(1)(31)&layer_1(1)(30)&layer_1(1)(29)&layer_1(1)(28)&layer_1(1)(27)&layer_1(1)(26)&layer_1(1)(25)&layer_1(1)(24)&layer_1(1)(23)&layer_1(1)(22)&layer_1(1)(21)&layer_1(1)(20)&layer_1(1)(19)&layer_1(1)(18)&layer_1(1)(17)&layer_1(1)(16)&layer_1(1)(15)&layer_1(1)(14)&layer_1(1)(13)&layer_1(1)(12)&layer_1(1)(11)&layer_1(1)(10)&layer_1(1)(9)&layer_1(1)(8)&layer_1(1)(7)&layer_1(1)(6)&layer_1(1)(5)&layer_1(1)(4)&layer_1(1)(3)&layer_1(1)(2)&layer_1(1)(1)&layer_1(1)(0);
	
	End Structural;
