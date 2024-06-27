library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity decoder_2x3 is
 port(A:in std_logic_vector(1 downto 0);
		E: in std_logic;
		Y:out std_logic_vector(3 downto 0));
 end entity;
 
architecture struct of decoder_2x3 is
 signal a1_not, a0_not: std_logic;
begin
	invert_inst_0:INVERTER PORT map(A(0), a0_not);
	invert_inst_1:INVERTER PORT map(A(1), a1_not);

	and_inst_3:AND_3 PORT map(A(1), A(0), E, Y(3));
	and_inst_2:AND_3 PORT map(A(1), a0_not, E, Y(2));
	and_inst_1:AND_3 PORT map(a1_not, A(0), E, Y(1));
	and_inst_0:AND_3 PORT map(a1_not, a0_not, E, Y(0));
end architecture;