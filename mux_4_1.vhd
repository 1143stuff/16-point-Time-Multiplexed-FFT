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

port(	clk: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		inputReal: in array_16point;
		inputImag: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point);

end mux_4_1;

architecture Behavioral of mux_4_1 is

component butterfly_block is

port(	inputReal: in array_16point;
		inputImag: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point);

end component;

signal tempReal, tempImag: array_16point;

begin

process(clk, sel, inputReal, inputImag)

begin

if(rising_edge(clk))then

if sel = "00" then
			
		tempReal(0) 	<=		inputReal(0);
		tempReal(1)		<=		inputReal(8);
		tempReal(2)		<=		inputReal(4);
		tempReal(3)		<=		inputReal(12);
		tempReal(4)		<=		inputReal(2);
		tempReal(5)		<=		inputReal(10);
		tempReal(6)		<=		inputReal(6);
		tempReal(7)		<=		inputReal(14);
		tempReal(8)		<=		inputReal(1);
		tempReal(9)		<=		inputReal(9);
		tempReal(10)	<=		inputReal(5);
		tempReal(11)	<=		inputReal(13);
		tempReal(12)	<=		inputReal(3);
		tempReal(13)	<=		inputReal(11);
		tempReal(14)	<=		inputReal(7);
		tempReal(15)	<=		inputReal(15);
		
		tempImag(0) 	<=		inputImag(0);
		tempImag(1)		<=		inputImag(8);
		tempImag(2)		<=		inputImag(4);
		tempImag(3)		<=		inputImag(12);
		tempImag(4)		<=		inputImag(2);
		tempImag(5)		<=		inputImag(10);
		tempImag(6)		<=		inputImag(6);
		tempImag(7)		<=		inputImag(14);
		tempImag(8)		<=		inputImag(1);
		tempImag(9)		<=		inputImag(9);
		tempImag(10)	<=		inputImag(5);
		tempImag(11)	<=		inputImag(13);
		tempImag(12)	<=		inputImag(3);
		tempImag(13)	<=		inputImag(11);
		tempImag(14)	<=		inputImag(7);
		tempImag(15)	<=		inputImag(15);		
		
elsif sel = "01" then

		tempReal(0) 	<=		inputReal(0);
		tempReal(1)		<=		inputReal(2);
		tempReal(2)		<=		inputReal(1);
		tempReal(3)		<=		inputReal(3);
		tempReal(4)		<=		inputReal(4);
		tempReal(5)		<=		inputReal(6);
		tempReal(6)		<=		inputReal(5);
		tempReal(7)		<=		inputReal(7);
		tempReal(8)		<=		inputReal(8);
		tempReal(9)		<=		inputReal(10);
		tempReal(10)	<=		inputReal(9);
		tempReal(11)	<=		inputReal(11);
		tempReal(12)	<=		inputReal(12);
		tempReal(13)	<=		inputReal(14);
		tempReal(14)	<=		inputReal(13);
		tempReal(15)	<=		inputReal(15);
		
		tempImag(0) 	<=		inputImag(0);
		tempImag(1)		<=		inputImag(2);
		tempImag(2)		<=		inputImag(1);
		tempImag(3)		<=		inputImag(3);
		tempImag(4)		<=		inputImag(4);
		tempImag(5)		<=		inputImag(6);
		tempImag(6)		<=		inputImag(5);
		tempImag(7)		<=		inputImag(7);
		tempImag(8)		<=		inputImag(8);
		tempImag(9)		<=		inputImag(10);
		tempImag(10)	<=		inputImag(9);
		tempImag(11)	<=		inputImag(11);
		tempImag(12)	<=		inputImag(12);
		tempImag(13)	<=		inputImag(14);
		tempImag(14)	<=		inputImag(13);
		tempImag(15)	<=		inputImag(15);	
		
	
elsif sel = "10" then
	
		tempReal(0) 	<=		inputReal(0);
		tempReal(1)		<=		inputReal(4);
		tempReal(2)		<=		inputReal(1);
		tempReal(3)		<=		inputReal(5);
		tempReal(4)		<=		inputReal(2);
		tempReal(5)		<=		inputReal(6);
		tempReal(6)		<=		inputReal(3);
		tempReal(7)		<=		inputReal(7);
		tempReal(8)		<=		inputReal(8);
		tempReal(9)		<=		inputReal(12);
		tempReal(10)	<=		inputReal(9);
		tempReal(11)	<=		inputReal(13);
		tempReal(12)	<=		inputReal(10);
		tempReal(13)	<=		inputReal(14);
		tempReal(14)	<=		inputReal(11);
		tempReal(15)	<=		inputReal(15);
		
		tempImag(0) 	<=		inputImag(0);
		tempImag(1)		<=		inputImag(4);
		tempImag(2)		<=		inputImag(1);
		tempImag(3)		<=		inputImag(5);
		tempImag(4)		<=		inputImag(2);
		tempImag(5)		<=		inputImag(6);
		tempImag(6)		<=		inputImag(3);
		tempImag(7)		<=		inputImag(7);
		tempImag(8)		<=		inputImag(8);
		tempImag(9)		<=		inputImag(12);
		tempImag(10)	<=		inputImag(9);
		tempImag(11)	<=		inputImag(13);
		tempImag(12)	<=		inputImag(10);
		tempImag(13)	<=		inputImag(14);
		tempImag(14)	<=		inputImag(11);
		tempImag(15)	<=		inputImag(15);
		
	
elsif sel = "11" then
	
		tempReal(0) 	<=		inputReal(0);
		tempReal(1)		<=		inputReal(8);
		tempReal(2)		<=		inputReal(1);
		tempReal(3)		<=		inputReal(9);
		tempReal(4)		<=		inputReal(2);
		tempReal(5)		<=		inputReal(10);
		tempReal(6)		<=		inputReal(3);
		tempReal(7)		<=		inputReal(11);
		tempReal(8)		<=		inputReal(4);
		tempReal(9)		<=		inputReal(12);
		tempReal(10)	<=		inputReal(5);
		tempReal(11)	<=		inputReal(13);
		tempReal(12)	<=		inputReal(6);
		tempReal(13)	<=		inputReal(14);
		tempReal(14)	<=		inputReal(7);
		tempReal(15)	<=		inputReal(15);
		
end if;
end if;

end process;

butterfly_module: component butterfly_block port map(tempReal, tempImag, outputReal, outputImag);

end Behavioral;

