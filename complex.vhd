

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

package COMPLEX is

--type declaration
    
	type complex_in is
        record
                re: signed(15 downto 0); -- Real part
                im: signed(15 downto 0); -- Imaginary part
        end record;
		  
	 type complex_out is
        record
                re: signed(15 downto 0); -- Real part
                im: signed(15 downto 0); -- Imaginary part
        end record;

	 type complex_out_truncated is
        record
                re: signed(23 downto 0); -- Real part
                im: signed(23 downto 0); -- Imaginary part
        end record;


	type in_array  is array (3 downto 0) of complex_in;
	
   type out_array  is array (3 downto 0) of  complex_out;
------
end COMPLEX;
------

package body COMPLEX is
 
end COMPLEX;





