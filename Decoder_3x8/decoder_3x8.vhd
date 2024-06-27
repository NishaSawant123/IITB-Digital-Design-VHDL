library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity decoder_3x8 is
 port(A:in std_logic_vector(2 downto 0);
		E: in std_logic;
		Y:out std_logic_vector(7 downto 0));
 end entity;
 
architecture struct of decoder_3x8 is
 signal a2_not, E0, E1: std_logic;
 component decoder_2x3 is
 port(A:in std_logic_vector(1 downto 0);
		E: in std_logic;
		Y:out std_logic_vector(3 downto 0));
 end component;
begin
	inverter_inst:INVERTER PORT map(A(2), a2_not);
	and_inst_0:AND_2 PORT map(A(2), E, E0);
	and_inst_1:AND_2 PORT map(E, a2_not, E1);
	decoder_inst_0:decoder_2x3 PORT map(
	A(0) => A(0),
	A(1) => A(1),
	E => E0,
	Y(3) => Y(7),
	Y(2) => Y(6),
	Y(1) => Y(5),
	Y(0) => Y(4)
	);
	decoder_inst_1:decoder_2x3 PORT map(
	A(0) => A(0),
	A(1) => A(1),
	E => E1,
	Y(3) => Y(3),
	Y(2) => Y(2),
	Y(1) => Y(1),
	Y(0) => Y(0)
	);
end architecture;