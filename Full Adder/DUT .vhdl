
library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component f_add is
 port(a,b,c:in std_logic;
 sum, carry :out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: f_add port map (a => input_vector(2), b => input_vector(1), c => input_vector(0),
											sum => output_vector(1), carry => output_vector(0));

end DutWrap;