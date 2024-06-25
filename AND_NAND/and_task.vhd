library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity and_task is
 port(in1,in2:in std_logic;
 out1 :out std_logic);
 end entity;
 
 architecture struct of and_task is
   signal sig1,sig2: std_logic;
 begin
   inst1:NAND_2 PORT map(A=>in1, B=>in2, Y=>sig1);
	inst2:NAND_2 PORT map(A=>sig1,B=>sig1,Y=>out1);
	end architecture;