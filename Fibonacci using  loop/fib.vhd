library ieee;
use ieee.std_logic_1164.all;

--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--library work;

entity fib is
port( x:in std_logic_vector(9 downto 0);
y: out std_logic);
end entity;

architecture Behavioral of  fib is
--signal temp,t1,t2 : std_logic_vector(9 downto 0);

begin
process(x)
variable temp,t1,t2: integer;
variable n,x_in:integer;
begin
t1 := 0;
t2 := 1;
x_in := to_integer(unsigned(x));
n:=0;
temp :=0;
for i in  0 to 17 loop
if x_in = temp then
n :=1;
end if;
if n = 1 then
y <='1';
else
y<='0';
end if;
temp:=t1+t2;
t1:=t2;
t2:=temp;

end loop;
end process;
end architecture;