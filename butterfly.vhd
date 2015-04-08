----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:24 04/04/2015 
-- Design Name: 
-- Module Name:    butterfly - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.ALL;
use work.array_16point.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity butterfly is

port(	aReal, bReal, wReal : in std_logic_vector(15 downto 0);
		aImag, bImag, wImag : in std_logic_vector(15 downto 0);
		c1Real, c2Real: out std_logic_vector(15 downto 0);
		c1Imag, c2Imag: out std_logic_vector(15 downto 0));

end butterfly;

architecture Behavioral of butterfly is

signal p1, p2, p3, p4, s1, s2 : std_logic_vector(31 downto 0);

begin  

p1 <= bReal*wReal;  
p2 <= bImag*wImag; 
p3 <= bReal*wImag;
p4 <= bImag*wReal; 
s1 <= (p1-p2);
s2 <= (p3+p4);
c1Real <=  aReal + s1(15 downto 0);    
c1Imag <=  aImag + s2(15 downto 0);
c2Real <=  aReal - s1(15 downto 0);   
c2Imag <=  aImag - s2(15 downto 0);

end Behavioral;