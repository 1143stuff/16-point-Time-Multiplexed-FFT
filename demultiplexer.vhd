----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:37 04/19/2015 
-- Design Name: 
-- Module Name:    demultiplexer - Behavioral 
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

entity demultiplexer is
port (
		sel : in std_logic_vector(1 downto 0) ;
      bitin : in complex_in;   --input bit
      out0 : out complex_in;   --output bit
      out1 : out complex_in;   --output bit
      out2 : out complex_in;   --output bit
      out3 : out complex_in   --output bit
     );
end demultiplexer;

architecture Behavioral of demultiplexer is
begin
process(bitin,sel)
begin
case sel is
	when "00" => out0 <= bitin; --out1 <= dummy; out2 <= '0'; out3 <='0';
	when "01" => out1 <= bitin; --out0 <= '0'; out2 <= '0'; out3 <='0';
	when "10" => out2 <= bitin; --out0 <= '0'; out1 <= '0'; out3 <='0';
	when others => out3 <= bitin; -- out0 <= '0'; out1 <= '0'; out2 <='0';  
end case; 
end process;

end Behavioral;

