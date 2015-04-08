----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:19 04/04/2015 
-- Design Name: 
-- Module Name:    mux_4_1 - Behavioral 
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
use work.array_16point.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_4_1 is

port(	sel: in std_logic_vector(1 downto 0);
		inputReal: in array_16point;
		inputImag: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point);

end mux_4_1;

architecture Behavioral of mux_4_1 is

component butterfly_1 is

port(	inputReal: in array_16point;
		inputImag: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point);

end component;

signal tempReal, tempImag: array_16point;

begin

process(sel)

begin

tempReal <= inputReal;
tempImag <= inputImag;

case sel is

	when "00" =>
			
		inputReal(0) 	<= 
		inputReal(1)	<=
		inputReal(2)	<=
		inputReal(3)	<=
		inputReal(4)	<=
		inputReal(5)	<=
		inputReal(6)	<=
		inputReal(7)	<=
		inputReal(8)	<=
		inputReal(9)	<=
		inputReal(10)	<=
		inputReal(11)	<=
		inputReal(12)	<=
		inputReal(13)	<=
		inputReal(14)	<=
		inputReal(15)	<=
		
		inputImag(0) 	<=
		inputImag(1)	<=
		inputImag(2)	<=
		inputImag(3)	<=
		inputImag(4)	<=
		inputImag(5)	<=
		inputImag(6)	<=
		inputImag(7)	<=
		inputImag(8)	<=
		inputImag(9)	<=
		inputImag(10)	<=
		inputImag(11)	<=
		inputImag(12)	<=
		inputImag(13)	<=
		inputImag(14)	<=
		inputImag(15)	<=
		
		
	--when "01" =>
	
		
	
	--when "10" =>
		

		
	--when "11" =>
	

		
	--when others =>
	
		--null;
	
--end case;

--butterfly_stage_1: component butterfly_1 port map(inputReal, inputImag, outputReal, outputImag);

end Behavioral;

