--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:20:02 04/21/2015
-- Design Name:   
-- Module Name:   C:/Users/Admin/Documents/Xilinx/LAB2_ASSIGNEMENT_AND_DEMO_CODES/a2a_project/timemultiplexedfft/tbfft.vhd
-- Project Name:  timemultiplexedfft
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fft_time_multiplexed
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- signed for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.numeric_std.all;
library WORK;
use WORK.ALL;
library std; 
use std.textio.all;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbfft IS
END tbfft;
 
ARCHITECTURE behavior OF tbfft IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fft_time_multiplexed
    PORT(
         clk : IN  std_logic;
         x0_r : IN  signed(7 downto 0);
         x0_i : IN  signed(7 downto 0);
         x1_r : IN  signed(7 downto 0);
         x1_i : IN  signed(7 downto 0);
         x2_r : IN  signed(7 downto 0);
         x2_i : IN  signed(7 downto 0);
         x3_r : IN  signed(7 downto 0);
         x3_i : IN  signed(7 downto 0);
         x4_r : IN  signed(7 downto 0);
         x4_i : IN  signed(7 downto 0);
         x5_r : IN  signed(7 downto 0);
         x5_i : IN  signed(7 downto 0);
         x6_r : IN  signed(7 downto 0);
         x6_i : IN  signed(7 downto 0);
         x7_r : IN  signed(7 downto 0);
         x7_i : IN  signed(7 downto 0);
         y0_r : OUT  signed(15 downto 0);
         y0_i : OUT  signed(15 downto 0);
         y1_r : OUT  signed(15 downto 0);
         y1_i : OUT  signed(15 downto 0);
         y2_r : OUT  signed(15 downto 0);
         y2_i : OUT  signed(15 downto 0);
         y3_r : OUT  signed(15 downto 0);
         y3_i : OUT  signed(15 downto 0);
         y4_r : OUT  signed(15 downto 0);
         y4_i : OUT  signed(15 downto 0);
         y5_r : OUT  signed(15 downto 0);
         y5_i : OUT  signed(15 downto 0);
         y6_r : OUT  signed(15 downto 0);
         y6_i : OUT  signed(15 downto 0);
         y7_r : OUT  signed(15 downto 0);
         y7_i : OUT  signed(15 downto 0);
         x8_r : IN  signed(7 downto 0);
         x8_i : IN  signed(7 downto 0);
         x9_r : IN  signed(7 downto 0);
         x9_i : IN  signed(7 downto 0);
         x10_r : IN  signed(7 downto 0);
         x10_i : IN  signed(7 downto 0);
         x11_r : IN  signed(7 downto 0);
         x11_i : IN  signed(7 downto 0);
         x12_r : IN  signed(7 downto 0);
         x12_i : IN  signed(7 downto 0);
         x13_r : IN  signed(7 downto 0);
         x13_i : IN  signed(7 downto 0);
         x14_r : IN  signed(7 downto 0);
         x14_i : IN  signed(7 downto 0);
         x15_r : IN  signed(7 downto 0);
         x15_i : IN  signed(7 downto 0);
         y8_r : OUT  signed(15 downto 0);
         y8_i : OUT  signed(15 downto 0);
         y9_r : OUT  signed(15 downto 0);
         y9_i : OUT  signed(15 downto 0);
         y10_r : OUT  signed(15 downto 0);
         y10_i : OUT  signed(15 downto 0);
         y11_r : OUT  signed(15 downto 0);
         y11_i : OUT  signed(15 downto 0);
         y12_r : OUT  signed(15 downto 0);
         y12_i : OUT  signed(15 downto 0);
         y13_r : OUT  signed(15 downto 0);
         y13_i : OUT  signed(15 downto 0);
         y14_r : OUT  signed(15 downto 0);
         y14_i : OUT  signed(15 downto 0);
         y15_r : OUT  signed(15 downto 0);
         y15_i : OUT  signed(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal x0_r : signed(7 downto 0) := (others => '0');
   signal x0_i : signed(7 downto 0) := (others => '0');
   signal x1_r : signed(7 downto 0) := (others => '0');
   signal x1_i : signed(7 downto 0) := (others => '0');
   signal x2_r : signed(7 downto 0) := (others => '0');
   signal x2_i : signed(7 downto 0) := (others => '0');
   signal x3_r : signed(7 downto 0) := (others => '0');
   signal x3_i : signed(7 downto 0) := (others => '0');
   signal x4_r : signed(7 downto 0) := (others => '0');
   signal x4_i : signed(7 downto 0) := (others => '0');
   signal x5_r : signed(7 downto 0) := (others => '0');
   signal x5_i : signed(7 downto 0) := (others => '0');
   signal x6_r : signed(7 downto 0) := (others => '0');
   signal x6_i : signed(7 downto 0) := (others => '0');
   signal x7_r : signed(7 downto 0) := (others => '0');
   signal x7_i : signed(7 downto 0) := (others => '0');
   signal x8_r : signed(7 downto 0) := (others => '0');
   signal x8_i : signed(7 downto 0) := (others => '0');
   signal x9_r : signed(7 downto 0) := (others => '0');
   signal x9_i : signed(7 downto 0) := (others => '0');
   signal x10_r : signed(7 downto 0) := (others => '0');
   signal x10_i : signed(7 downto 0) := (others => '0');
   signal x11_r : signed(7 downto 0) := (others => '0');
   signal x11_i : signed(7 downto 0) := (others => '0');
   signal x12_r : signed(7 downto 0) := (others => '0');
   signal x12_i : signed(7 downto 0) := (others => '0');
   signal x13_r : signed(7 downto 0) := (others => '0');
   signal x13_i : signed(7 downto 0) := (others => '0');
   signal x14_r : signed(7 downto 0) := (others => '0');
   signal x14_i : signed(7 downto 0) := (others => '0');
   signal x15_r : signed(7 downto 0) := (others => '0');
   signal x15_i : signed(7 downto 0) := (others => '0');

 	--Outputs
   signal y0_r : signed(15 downto 0);
   signal y0_i : signed(15 downto 0);
   signal y1_r : signed(15 downto 0);
   signal y1_i : signed(15 downto 0);
   signal y2_r : signed(15 downto 0);
   signal y2_i : signed(15 downto 0);
   signal y3_r : signed(15 downto 0);
   signal y3_i : signed(15 downto 0);
   signal y4_r : signed(15 downto 0);
   signal y4_i : signed(15 downto 0);
   signal y5_r : signed(15 downto 0);
   signal y5_i : signed(15 downto 0);
   signal y6_r : signed(15 downto 0);
   signal y6_i : signed(15 downto 0);
   signal y7_r : signed(15 downto 0);
   signal y7_i : signed(15 downto 0);
   signal y8_r : signed(15 downto 0);
   signal y8_i : signed(15 downto 0);
   signal y9_r : signed(15 downto 0);
   signal y9_i : signed(15 downto 0);
   signal y10_r : signed(15 downto 0);
   signal y10_i : signed(15 downto 0);
   signal y11_r : signed(15 downto 0);
   signal y11_i : signed(15 downto 0);
   signal y12_r : signed(15 downto 0);
   signal y12_i : signed(15 downto 0);
   signal y13_r : signed(15 downto 0);
   signal y13_i : signed(15 downto 0);
   signal y14_r : signed(15 downto 0);
   signal y14_i : signed(15 downto 0);
   signal y15_r : signed(15 downto 0);
   signal y15_i : signed(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 5 ns;
	type input_short_array is array (0 to 15) of integer range 0 to 127;
	type output_short_array is array (0 to 31) of integer range 0 to 127;
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fft_time_multiplexed PORT MAP (
          clk => clk,
          x0_r => x0_r,
          x0_i => x0_i,
          x1_r => x1_r,
          x1_i => x1_i,
          x2_r => x2_r,
          x2_i => x2_i,
          x3_r => x3_r,
          x3_i => x3_i,
          x4_r => x4_r,
          x4_i => x4_i,
          x5_r => x5_r,
          x5_i => x5_i,
          x6_r => x6_r,
          x6_i => x6_i,
          x7_r => x7_r,
          x7_i => x7_i,
          y0_r => y0_r,
          y0_i => y0_i,
          y1_r => y1_r,
          y1_i => y1_i,
          y2_r => y2_r,
          y2_i => y2_i,
          y3_r => y3_r,
          y3_i => y3_i,
          y4_r => y4_r,
          y4_i => y4_i,
          y5_r => y5_r,
          y5_i => y5_i,
          y6_r => y6_r,
          y6_i => y6_i,
          y7_r => y7_r,
          y7_i => y7_i,
          x8_r => x8_r,
          x8_i => x8_i,
          x9_r => x9_r,
          x9_i => x9_i,
          x10_r => x10_r,
          x10_i => x10_i,
          x11_r => x11_r,
          x11_i => x11_i,
          x12_r => x12_r,
          x12_i => x12_i,
          x13_r => x13_r,
          x13_i => x13_i,
          x14_r => x14_r,
          x14_i => x14_i,
          x15_r => x15_r,
          x15_i => x15_i,
          y8_r => y8_r,
          y8_i => y8_i,
          y9_r => y9_r,
          y9_i => y9_i,
          y10_r => y10_r,
          y10_i => y10_i,
          y11_r => y11_r,
          y11_i => y11_i,
          y12_r => y12_r,
          y12_i => y12_i,
          y13_r => y13_r,
          y13_i => y13_i,
          y14_r => y14_r,
          y14_i => y14_i,
          y15_r => y15_r,
          y15_i => y15_i
        );
A_gen : process
file A_file : text is in "./datain.txt";
variable A_line : line;
variable R1,R2: input_short_array;
begin  while not endfile(A_file) loop
		      wait for 100 ns;
				readline (A_file, A_line);
            read (A_line, R1(0));
				x0_r <= to_signed(R1(0),8);
				readline (A_file, A_line);
            read (A_line, R2(0));
				x0_i <= to_signed(R2(0),8);
				readline (A_file, A_line);
            read (A_line, R1(1));
				x1_r <= to_signed(R1(1),8);
				readline (A_file, A_line);
            read (A_line, R2(1));
				x1_i <= to_signed(R2(1),8);
				readline (A_file, A_line);
            read (A_line, R1(2));
				x2_r <= to_signed(R1(2),8);
				readline (A_file, A_line);
            read (A_line, R2(2));				
				x2_i <= to_signed(R2(2),8);
				readline (A_file, A_line);
            read (A_line, R1(3));
				x3_r <= to_signed(R1(3),8);
				readline (A_file, A_line);
            read (A_line, R2(3));
				x3_i <= to_signed(R2(3),8);
				readline (A_file, A_line);
            read (A_line, R1(4));
				x4_r <= to_signed(R1(4),8);
				readline (A_file, A_line);
            read (A_line, R2(4));
				x4_i <= to_signed(R2(4),8);
				readline (A_file, A_line);
            read (A_line, R1(5));
				x5_r <= to_signed(R1(5),8);
				readline (A_file, A_line);
            read (A_line, R2(5));
				x5_i <= to_signed(R2(5),8);
            readline (A_file, A_line);
            read (A_line, R1(6));
				x6_r <= to_signed(R1(6),8);
				readline (A_file, A_line);
            read (A_line, R2(6));
				x6_i <= to_signed(R2(6),8);
				readline (A_file, A_line);
            read (A_line, R1(7));
				x7_r <= to_signed(R1(7),8);
				readline (A_file, A_line);
            read (A_line, R2(7));
				x7_i <= to_signed(R2(7),8);
				readline (A_file, A_line);
            read (A_line, R1(8));
				x8_r <= to_signed(R1(8),8);
				readline (A_file, A_line);
            read (A_line, R2(8));
				x8_i <= to_signed(R2(8),8);
				readline (A_file, A_line);
            read (A_line, R1(9));
				x9_r <= to_signed(R1(9),8);
				readline (A_file, A_line);
            read (A_line, R2(9));
				x9_i <= to_signed(R2(9),8);
				readline (A_file, A_line);
            read (A_line, R1(10));
				x10_r <= to_signed(R1(10),8);
				readline (A_file, A_line);
            read (A_line, R2(10));				
				x10_i <= to_signed(R2(10),8);
				readline (A_file, A_line);
            read (A_line, R1(11));
				x11_r <= to_signed(R1(11),8);
				readline (A_file, A_line);
            read (A_line, R2(11));
				x11_i <= to_signed(R2(11),8);
				readline (A_file, A_line);
            read (A_line, R1(12));
				x12_r <= to_signed(R1(12),8);
				readline (A_file, A_line);
            read (A_line, R2(12));
				x12_i <= to_signed(R2(12),8);
				readline (A_file, A_line);
            read (A_line, R1(13));
				x13_r <= to_signed(R1(13),8);
				readline (A_file, A_line);
            read (A_line, R2(13));
				x13_i <= to_signed(R2(13),8);
            readline (A_file, A_line);
            read (A_line, R1(14));
				x14_r <= to_signed(R1(14),8);
				readline (A_file, A_line);
            read (A_line, R2(14));
				x14_i <= to_signed(R2(14),8);
				readline (A_file, A_line);
            read (A_line, R1(15));
				x15_r <= to_signed(R1(15),8);
				readline (A_file, A_line);
            read (A_line, R2(15));
				x15_i <= to_signed(R2(15),8);
       end loop;
		 file_close(A_file);
end process A_gen; 


C_gen : process(y0_r,y0_i,y1_r, y1_i, y2_r, y2_i, y3_r, y3_i, y4_r, y4_i, y5_r, y5_i, y6_r, y6_i,y7_r, y7_i,
y8_r,y8_i,y9_r, y9_i, y10_r, y10_i, y11_r, y11_i, y12_r, y12_i, y13_r, y13_i, y14_r, y14_i,y15_r, y15_i)
file C_file : text is out "./dataout.txt";
variable C_line : line;
variable T: output_short_array;
begin

			T(0) := to_integer(y0_r);
	write(C_line, T(0));
			T(1) := to_integer(y0_i);
	write(C_line, T(1));
			T(2) := to_integer(y1_r);
	write(C_line, T(2));
			T(3) := to_integer(y1_i);
	write(C_line, T(3));
			T(4) := to_integer(y2_r);
	write(C_line, T(4));
			T(5) := to_integer(y2_i);
	write(C_line, T(5));
			T(6) := to_integer(y3_r);
	write(C_line, T(6));
			T(7) := to_integer(y3_i);
	write(C_line, T(7));
			T(8) := to_integer(y4_r);
	write(C_line, T(8));
			T(9) := to_integer(y4_i);
	write(C_line, T(9));
			T(10) := to_integer(y5_r);
	write(C_line, T(10));
			T(11) := to_integer(y5_i);
	write(C_line, T(11));
			T(12) := to_integer(y6_r);
	write(C_line, T(12));
			T(13) := to_integer(y6_i);
	write(C_line, T(13));
			T(14) := to_integer(y7_r);
	write(C_line, T(14));
			T(15) := to_integer(y7_i);
	write(C_line, T(15));
				T(16) := to_integer(y8_r);
	write(C_line, T(16));
			T(17) := to_integer(y8_i);
	write(C_line, T(17));
			T(18) := to_integer(y9_r);
	write(C_line, T(18));
			T(19) := to_integer(y9_i);
	write(C_line, T(19));
			T(20) := to_integer(y10_r);
	write(C_line, T(20));
			T(21) := to_integer(y10_i);
	write(C_line, T(21));
			T(22) := to_integer(y11_r);
	write(C_line, T(22));
			T(23) := to_integer(y11_i);
	write(C_line, T(23));
			T(24) := to_integer(y12_r);
	write(C_line, T(24));
			T(25) := to_integer(y12_i);
	write(C_line, T(25));
			T(26) := to_integer(y13_r);
	write(C_line, T(26));
			T(27) := to_integer(y13_i);
	write(C_line, T(27));
			T(28) := to_integer(y14_r);
	write(C_line, T(28));
			T(29) := to_integer(y14_i);
	write(C_line, T(29));
			T(30) := to_integer(y15_r);
	write(C_line, T(30));
			T(31) := to_integer(y15_i);
	write(C_line, T(31));
	
	writeline(C_file, C_line);
end process C_gen;

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
