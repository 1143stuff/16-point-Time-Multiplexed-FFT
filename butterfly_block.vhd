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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity butterfly_block is

port(	inputReal: in array_16point;
		inputImag: in array_16point;
		outputReal: out array_16point;
		outputImag: out array_16point);

end butterfly_block;

architecture Behavioral of butterfly_block is

component butterfly is

port(	aReal, bReal, wReal 	: in 	std_logic_vector(15 downto 0);
		aImag, bImag, wImag 	: in 	std_logic_vector(15 downto 0);
		c1Real, c2Real			: out std_logic_vector(15 downto 0);
		c1Imag, c2Imag			: out std_logic_vector(15 downto 0));

end component;

constant w0_real : integer := 0;
constant w1_real : integer := 0;
constant w2_real : integer := 0;
constant w3_real : integer := 0;
constant w4_real : integer := 0;
constant w5_real : integer := 0;
constant w6_real : integer := 0;
constant w7_real : integer := 0;
 
constant w0_imag : integer := 0;
constant w1_imag : integer := 0;
constant w2_imag : integer := 0;
constant w3_imag : integer := 0;
constant w4_imag : integer := 0;
constant w5_imag : integer := 0;
constant w6_imag : integer := 0;
constant w7_imag : integer := 0;


constant w0Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w0_real,16));
constant w1Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w1_real,16));
constant w2Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w2_real,16));
constant w3Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w3_real,16));
constant w4Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w4_real,16));
constant w5Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w5_real,16));
constant w6Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w6_real,16));
constant w7Real : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w7_real,16));
 
constant w0Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w0_imag,16));
constant w1Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w1_imag,16));
constant w2Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w2_imag,16));
constant w3Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w3_imag,16));
constant w4Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w4_imag,16));
constant w5Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w5_imag,16));
constant w6Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w6_imag,16));
constant w7Imag : std_logic_vector(15 downto 0) := std_logic_vector(to_signed(w7_imag,16));

begin

u1: component butterfly port map(inputReal(0), 	inputReal(1),  w0Real, inputImag(0), 	inputImag(1),  w0Imag, outputReal(0),  outputReal(1),  outputImag(0),  outputImag(1));
u2: component butterfly port map(inputReal(2), 	inputReal(3), 	w0Real, inputImag(2), 	inputImag(3), 	w0Imag, outputReal(2),  outputReal(3),  outputImag(2),  outputImag(3));
u3: component butterfly port map(inputReal(4), 	inputReal(5), 	w0Real, inputImag(4), 	inputImag(5), 	w0Imag, outputReal(4),  outputReal(5),  outputImag(4),  outputImag(5));
u4: component butterfly port map(inputReal(6), 	inputReal(7), 	w0Real, inputImag(6), 	inputImag(7), 	w0Imag, outputReal(6),  outputReal(7),  outputImag(6),  outputImag(7));
u5: component butterfly port map(inputReal(8), 	inputReal(9),  w0Real, inputImag(8), 	inputImag(9),  w0Imag, outputReal(8),  outputReal(9),  outputImag(8),  outputImag(9));
u6: component butterfly port map(inputReal(10), inputReal(11), w0Real, inputImag(10), 	inputImag(11), w0Imag, outputReal(10), outputReal(11), outputImag(10), outputImag(11));
u7: component butterfly port map(inputReal(12), inputReal(13), w0Real, inputImag(12), 	inputImag(13), w0Imag, outputReal(12), outputReal(13), outputImag(12), outputImag(13));
u8: component butterfly port map(inputReal(14), inputReal(15), w0Real, inputImag(14), 	inputImag(15), w0Imag, outputReal(14), outputReal(15), outputImag(14), outputImag(15));

end Behavioral;