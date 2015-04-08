--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:24:02 04/05/2015
-- Design Name:   
-- Module Name:   F:/Box Sync/MSc Embedded Systems/Algorithms to Architecture/Project/fft_16/butterfly_1_test.vhd
-- Project Name:  fft_16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: butterfly_1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY butterfly_1_test IS
END butterfly_1_test;
 
ARCHITECTURE behavior OF butterfly_1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT butterfly_1
    PORT(
         inputReal : IN  std_logic_vector(0 to 15);
         inputImag : IN  std_logic_vector(0 to 15);
         outputReal : OUT  std_logic_vector(0 to 15);
         outputImag : OUT  std_logic_vector(0 to 15)
        );
    END COMPONENT;
    

   --Inputs
   signal inputReal : std_logic_vector(0 to 15) := (others => '0');
   signal inputImag : std_logic_vector(0 to 15) := (others => '0');

 	--Outputs
   signal outputReal : std_logic_vector(0 to 15);
   signal outputImag : std_logic_vector(0 to 15);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: butterfly_1 PORT MAP (
          inputReal => inputReal,
          inputImag => inputImag,
          outputReal => outputReal,
          outputImag => outputImag
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
