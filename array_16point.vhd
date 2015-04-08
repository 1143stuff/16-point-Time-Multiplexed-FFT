--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package array_16point is

TYPE array_16point IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR(15 DOWNTO 0);

end array_16point;

package body array_16point is

 
end array_16point;
