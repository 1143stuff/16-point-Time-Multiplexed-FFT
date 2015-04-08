----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:31:00 04/04/2015 
-- Design Name: 
-- Module Name:    butterfly_1 - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity butterfly_1 is

port(	inputReal: in array_16point;
		inputImag: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point);

end butterfly_1;

architecture Behavioral of butterfly_1 is

component butterfly is

port(	aReal, bReal, wReal 	: in 	std_logic_vector(7 downto 0);
		aImag, bImag, wImag 	: in 	std_logic_vector(7 downto 0);
		c1Real, c2Real			: out std_logic_vector(15 downto 0);
		c1Imag, c2Imag			: out std_logic_vector(15 downto 0));

end component;

signal w0Real : std_logic_vector(7 downto 0) := X"01";
signal w1Real : std_logic_vector(7 downto 0) := X"01";
signal w2Real : std_logic_vector(7 downto 0) := X"01";
signal w3Real : std_logic_vector(7 downto 0) := X"01";
signal w4Real : std_logic_vector(7 downto 0) := X"01";
signal w5Real : std_logic_vector(7 downto 0) := X"01";
signal w6Real : std_logic_vector(7 downto 0) := X"01";
signal w7Real : std_logic_vector(7 downto 0) := X"01";
 
signal w0Imag : std_logic_vector(7 downto 0) := X"01";
signal w1Imag : std_logic_vector(7 downto 0) := X"01";
signal w2Imag : std_logic_vector(7 downto 0) := X"01";
signal w3Imag : std_logic_vector(7 downto 0) := X"01";
signal w4Imag : std_logic_vector(7 downto 0) := X"01";
signal w5Imag : std_logic_vector(7 downto 0) := X"01";
signal w6Imag : std_logic_vector(7 downto 0) := X"01";
signal w7Imag : std_logic_vector(7 downto 0) := X"01";

begin

u1: component butterfly port map(inputReal(0), inputReal(8),  w0Real, inputImag(0), inputImag(8),  w0Imag, outputReal(0),  outputReal(1),  outputImag(0),  outputImag(1));
u2: component butterfly port map(inputReal(4), inputReal(12), w0Real, inputImag(4), inputImag(12), w0Imag, outputReal(2),  outputReal(3),  outputImag(2),  outputImag(3));
u3: component butterfly port map(inputReal(2), inputReal(10), w0Real, inputImag(2), inputImag(10), w0Imag, outputReal(4),  outputReal(5),  outputImag(4),  outputImag(5));
u4: component butterfly port map(inputReal(6), inputReal(14), w0Real, inputImag(6), inputImag(14), w0Imag, outputReal(6),  outputReal(7),  outputImag(6),  outputImag(7));
u5: component butterfly port map(inputReal(1), inputReal(9),  w0Real, inputImag(1), inputImag(9),  w0Imag, outputReal(8),  outputReal(9),  outputImag(8),  outputImag(9));
u6: component butterfly port map(inputReal(5), inputReal(13), w0Real, inputImag(5), inputImag(13), w0Imag, outputReal(10), outputReal(11), outputImag(10), outputImag(11));
u7: component butterfly port map(inputReal(3), inputReal(11), w0Real, inputImag(3), inputImag(11), w0Imag, outputReal(12), outputReal(13), outputImag(12), outputImag(13));
u8: component butterfly port map(inputReal(7), inputReal(15), w0Real, inputImag(7), inputImag(15), w0Imag, outputReal(14), outputReal(15), outputImag(14), outputImag(15));

end Behavioral;

