library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity mux_2 is
 port(in1,in2,s:in std_logic;
      out1:out std_logic);
 end entity;
 
 architecture struct of mux_2 is
   signal sig1,sig2,sig3: std_logic;
 begin
   inst1:INVERTER PORT map(A=>s,Y=>sig1);
	inst2:AND_2 PORT map(A=>in1,B=> sig1, Y=>sig2);
	inst3:AND_2 PORT map(A=>in2, B=>s, Y=>sig3);
	inst4:OR_2 PORT map(A=>sig2,B=> sig3, Y=>out1);
	
 end struct;