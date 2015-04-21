library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
library WORK;
use WORK.complex.ALL; 

entity butterfly is
port(A, B, W : in complex_in;
	  C1, C2: out complex_in);
end butterfly;

architecture Behavioral of butterfly is

signal p1, p2, p3, p4, s1, s2: signed(15 downto 0);

signal t1, t2, t3, t4: signed(31 downto 0);

signal C: complex_in;

begin  

t1 <= (B.re*W.re) srl 8;  
t2 <= (B.im*W.im) srl 8; 
t3 <= (B.re*W.im) srl 8;
t4 <= (B.im*W.re) srl 8;

p1<=t1(15 downto 0);
p2<=t2(15 downto 0);
p3<=t3(15 downto 0);
p4<=t4(15 downto 0);

s1 <= (p1-p2);
s2 <= (p3+p4);

C1.re <=  A.re +s1;    
C1.im <=  A.im +s2;
C2.re <=  A.re -s1;   
C2.im <=  A.im -s2;

end Behavioral;
