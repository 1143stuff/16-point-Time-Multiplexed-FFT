----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:16 04/19/2015 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
library WORK;
use WORK.complex.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer is
 Port ( SEL : in  std_logic_vector(1 downto 0);     
        A, B,C,D  : in complex_in  ;
         X   : out complex_in);                        
end multiplexer;

architecture Behavioral of multiplexer is
begin

process(SEL,A,B,C,D)
begin
case SEL is
  when "00" => X <= A;
  when "01" => X <= B;
  when "10" => X <= C;
  when others => X <= D; 
end case; 
end process;
--with SEL select
--    X <= A when "00",
--         B when "01",
--         C when "10",
--         D when "11";
end Behavioral;

