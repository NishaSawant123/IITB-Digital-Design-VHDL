library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity fibo is
 port(x :in std_logic_vector(9 downto 0); y:out std_logic);
      
 end entity;
 
 architecture behavioural of fibo is
 begin
 p1: process (x)
 begin
 case x is 
 when  "0000000000"|"0000000001"|"0000000010"|"0000000011"|"0000000101"|"0000001000"|"0000001101"|"0000010101"|"0000100010"|"0000110111" |"0001011001"|"0010010000"|"0011101001"|"1001100010" | "1111011011" =>
 y <='1';
 when others => y<='0';
 end case;
 end process ;
 end architecture;
  
 
 