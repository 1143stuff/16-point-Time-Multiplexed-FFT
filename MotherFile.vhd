----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:45 04/04/2015 
-- Design Name: 
-- Module Name:    MotherFile - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use work.array_16point.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MotherFile is

port(	input: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point;
		clk: in std_logic);

end MotherFile;

architecture Behavioral of MotherFile is

component mux_4_1 is

port(	sel: in std_logic_vector(1 downto 0);
		inputReal: in array_16point;
		inputImag: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point);

end component;

signal s1Real: array_16point := input;
signal s1Imag, s2Real, s2Imag, s3Real, s3Imag, s4Real, s4Imag: array_16point;
signal sel: std_logic_vector(1 downto 0) := "00";

--s1Real := input;

begin

Stage_1: component mux_4_1 port map(sel, s1Real, s1Imag, s2Real, s2Imag);

process(clk, sel)

variable I : integer range 0 to 3 := 0;

begin

if(rising_edge(clk))then
	
	--Stage_1: component mux_4_1 port map(i, s1Real, s1Imag, s2Real, s2Imag);

	s1Real <= s2Real;
	s1Imag <= s2Imag;
	
	if(sel = "11")then
		sel <= "00";
	else
		sel <= UNSIGNED(sel) + 1;
	end if;
	
end if;

end process;

--Stage_2: component mux_4_1 port map("01", s2Real, 	s2Imag, s3Real, s3Imag);
--Stage_3: component mux_4_1 port map("10", s3Real, 	s3Imag, s4Real, s4Imag);
--Stage_4: component mux_4_1 port map("11", s4Real, 	s4Imag, outputReal, outputImag);

end Behavioral;

