----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:15 04/19/2015 
-- Design Name: 
-- Module Name:    fft_time_multiplexed - Behavioral 
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
USE IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.numeric_std.all;
library WORK;
use WORK.complex.ALL; 
library std; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fft_time_multiplexed is
port (
clk:in std_logic ;
x0_r,x0_i,x1_r, x1_i, x2_r, x2_i, x3_r, x3_i, x4_r, x4_i,x5_r, x5_i, x6_r, x6_i, x7_r, x7_i : in signed(7 downto 0);
y0_r,y0_i,y1_r, y1_i, y2_r, y2_i ,y3_r, y3_i, y4_r, y4_i,y5_r, y5_i, y6_r, y6_i ,y7_r, y7_i : out signed(15 downto 0);
x8_r,x8_i,x9_r, x9_i, x10_r, x10_i, x11_r, x11_i, x12_r, x12_i,x13_r, x13_i, x14_r, x14_i, x15_r, x15_i : in signed(7 downto 0);
y8_r,y8_i,y9_r, y9_i, y10_r, y10_i ,y11_r, y11_i, y12_r, y12_i,y13_r, y13_i, y14_r, y14_i ,y15_r, y15_i : out signed(15 downto 0)
);
end fft_time_multiplexed;

architecture Behavioral of fft_time_multiplexed is

--declare pipe register array
type pipelined is array(15 downto 0) of complex_in;
signal pipe1,pipe2,pipe3: pipelined;

signal x10,x11,x21,x31,x41,x51,x61,x71,x81,x91,x101,x111,x121,x131,x141,x151:complex_in;

signal x02,x12,x22,x32,x42,x52,x62,x72,x82,x92,x102,x112,x122,x132,x142,x152:complex_in;

signal x03,x13,x23,x33,x43,x53,x63,x73,x83,x93,x103,x113,x123,x133,x143,x153:complex_in;

signal ip1,ip2,ip3,ip4,ip5,ip6,ip7,ip8,ip9,ip10,ip11,ip12,ip13,ip14,ip15,ip16:complex_in;

signal op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16:complex_in;

signal wip1,wip2,wip3,wip4,wip5,wip6,wip7,wip8:complex_in;

signal stage : std_logic_vector(1 downto 0) := "00";

--decalre for complex types
signal X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,XA10,XB11,XC12,XD13,XE14,XF15,w0,w1,w2,w3,w4,w5,w6,w7:complex_in;
signal Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15:complex_in;

COMPONENT butterfly
	port(A, B,W: in complex_in; 
        C1, C2: out complex_in 
		  );
  END COMPONENT;
  
COMPONENT multiplexer
	Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);     
           A,B,C,D  : in complex_in  ;
           X   : out complex_in
			  );  
  END COMPONENT;
  
COMPONENT demultiplexer
	port (
		sel : in std_logic_vector(1 downto 0);
      bitin : in complex_in;   --input bit
      out0 : out complex_in;   --output bit
      out1 : out complex_in;   --output bit
      out2 : out complex_in;   --output bit
      out3 : out complex_in   --output bit
     );
  END COMPONENT;
   
begin

X0.re <= resize(signed(x0_r ),16);
X0.im <= resize(signed(x0_i),16);
X1.re <= resize(signed(x1_r),16);
X1.im <= resize(signed(x1_i),16);
X2.re <= resize(signed(x2_r),16);
X2.im <= resize(signed(x2_i),16);
X3.re <= resize(signed(x3_r),16);
X3.im <= resize(signed(x3_i),16);
X4.re <= resize(signed(x4_r),16);
X4.im <= resize(signed(x4_i),16);
X5.re <= resize(signed(x5_r),16);
X5.im <= resize(signed(x5_i),16);
X6.re <= resize(signed(x6_r),16);
X6.im <= resize(signed(x6_i),16);
X7.re <= resize(signed(x7_r),16);
X7.im <= resize(signed(x7_i),16);
X8.re <= resize(signed(x8_r),16);
X8.im <= resize(signed(x8_i),16);
X9.re <= resize(signed(x9_r),16);
X9.im <= resize(signed(x9_i),16);
XA10.re <= resize(signed(x10_r),16);
XA10.im <= resize(signed(x10_i),16);
XB11.re <= resize(signed(x11_r),16);
XB11.im <= resize(signed(x11_i),16);
XC12.re <= resize(signed(x12_r),16);
XC12.im <= resize(signed(x12_i),16);
XD13.re <= resize(signed(x13_r),16);
XD13.im <= resize(signed(x13_i),16);
XE14.re <= resize(signed(x14_r),16);
XE14.im <= resize(signed(x14_i),16);
XF15.re <= resize(signed(x15_r),16);
XF15.im <= resize(signed(x15_i),16);

w0.re<=to_signed(256,16);
w0.im<=to_signed(0,16);
w1.re<=to_signed(236,16);
w1.im<=to_signed(-98,16);
w2.re<=to_signed(181,16);
w2.im<=to_signed(-181,16);
w3.re<=to_signed(98,16);
w3.im<=to_signed(-236,16);
w4.re<=to_signed(0,16);
w4.im<=to_signed(-256,16);
w5.re<=to_signed(-98,16);
w5.im<=to_signed(-236,16);
w6.re<=to_signed(-181,16);
w6.im<=to_signed(-181,16);
w7.re<=to_signed(-236,16);
w7.im<=to_signed(-98,16);

Multi1:component multiplexer port map (stage, X0 ,  pipe1(0) ,pipe2(0) ,pipe3(0) ,ip1);
Multi2:component multiplexer port map (stage, X8 ,  pipe1(2) ,pipe2(4) ,pipe3(8) ,ip2);
Multi3:component multiplexer port map (stage, X4 ,  pipe1(1) ,pipe2(1) ,pipe3(1) ,ip3);
Multi4:component multiplexer port map (stage, XC12, pipe1(3) ,pipe2(5) ,pipe3(9) ,ip4);
Multi5:component multiplexer port map (stage, X2 ,  pipe1(4) ,pipe2(2) ,pipe3(2) ,ip5);
Multi6:component multiplexer port map (stage, XA10, pipe1(6) ,pipe2(6) ,pipe3(10),ip6);
Multi7:component multiplexer port map (stage, X6 ,  pipe1(5) ,pipe2(3) ,pipe3(3) ,ip7);
Multi8:component multiplexer port map (stage, XE14, pipe1(7) ,pipe2(7) ,pipe3(11),ip8);
Multi9:component multiplexer port map (stage, X1 ,  pipe1(8) ,pipe2(8) ,pipe3(4) ,ip9);
Multi10:component multiplexer port map(stage, X9 ,  pipe1(10),pipe2(12),pipe3(12),ip10);
Multi11:component multiplexer port map(stage, X5 ,  pipe1(9) ,pipe2(9) ,pipe3(5) ,ip11);
Multi12:component multiplexer port map(stage, XD13, pipe1(11),pipe2(13),pipe3(13),ip12);
Multi13:component multiplexer port map(stage, X3 ,  pipe1(12),pipe2(10),pipe3(6) ,ip13);
Multi14:component multiplexer port map(stage, XB11, pipe1(14),pipe2(14),pipe3(14),ip14);
Multi15:component multiplexer port map(stage, X7 ,  pipe1(13),pipe2(11),pipe3(7) ,ip15);
Multi16:component multiplexer port map(stage, XF15, pipe1(15),pipe2(15),pipe3(15),ip16);

wMulti1:component multiplexer port map(stage,w0,w0,w0,w0,wip1);
wMulti2:component multiplexer port map(stage,w0,w4,w2,w1,wip2);
wMulti3:component multiplexer port map(stage,w0,w0,w4,w2,wip3);
wMulti4:component multiplexer port map(stage,w0,w4,w6,w3,wip4);
wMulti5:component multiplexer port map(stage,w0,w0,w0,w4,wip5);
wMulti6:component multiplexer port map(stage,w0,w4,w2,w5,wip6);
wMulti7:component multiplexer port map(stage,w0,w0,w4,w6,wip7);
wMulti8:component multiplexer port map(stage,w0,w4,w6,w7,wip8);

Butterfly1:component butterfly port map(ip1,ip2,wip1,op1,op2);
Butterfly2:component butterfly port map(ip3,ip4,wip2,op3,op4);
Butterfly3:component butterfly port map(ip5,ip6,wip3,op5,op6);
Butterfly4:component butterfly port map(ip7,ip8,wip4,op7,op8);
Butterfly5:component butterfly port map(ip9,ip10,wip5,op9,op10);
Butterfly6:component butterfly port map(ip11,ip12,wip6,op11,op12);
Butterfly7:component butterfly port map(ip13,ip14,wip7,op13,op14);
Butterfly8:component butterfly port map(ip15,ip16,wip8,op15,op16);

DeMulti1:component demultiplexer port map(stage,op1,x10,x02,x03,Y0);
DeMulti2:component demultiplexer port map(stage,op2,x11,x22,x43,Y8);
DeMulti3:component demultiplexer port map(stage,op3,x21,x12,x13,Y1);
DeMulti4:component demultiplexer port map(stage,op4,x31,x32,x53,Y9);
DeMulti5:component demultiplexer port map(stage,op5,x41,x42,x23,Y2);
DeMulti6:component demultiplexer port map(stage,op6,x51,x62,x63,Y10);
DeMulti7:component demultiplexer port map(stage,op7,x61,x52,x33,Y3);
DeMulti8:component demultiplexer port map(stage,op8,x71,x72,x73,Y11);
DeMulti9:component demultiplexer port map(stage,op9,x81,x82,x83,Y4);
DeMulti10:component demultiplexer port map(stage,op10,x91,x102,x123,Y12);
DeMulti11:component demultiplexer port map(stage,op11,x101,x92,x93,Y5);
DeMulti12:component demultiplexer port map(stage,op12,x111,x112,x133,Y13);
DeMulti13:component demultiplexer port map(stage,op13,x121,x122,x103,Y6);
DeMulti14:component demultiplexer port map(stage,op14,x131,x142,x143,Y14);
DeMulti15:component demultiplexer port map(stage,op15,x141,x132,x113,Y7);
DeMulti16:component demultiplexer port map(stage,op16,x151,x152,x153,Y15);

process(clk)
variable state : std_logic_vector(1 downto 0) := "00";
begin
if(rising_edge(clk))then
if(state="00") then
stage<=state;
state:="01";
elsif (state="01") then
stage<=state;
pipe1(0)<=x10;
pipe1(1)<=x11;
pipe1(2)<=x21;
pipe1(3)<=x31;
pipe1(4)<=x41;
pipe1(5)<=x51;
pipe1(6)<=x61;
pipe1(7)<=x71;
pipe1(8)<=x81;
pipe1(9)<=x91;
pipe1(10)<=x101;
pipe1(11)<=x111;
pipe1(12)<=x121;
pipe1(13)<=x131;
pipe1(14)<=x141;
pipe1(15)<=x151;
state:="10";
elsif(state="10")then
stage<=state;
pipe2(0)<=x02;
pipe2(1)<=x12;
pipe2(2)<=x22;
pipe2(3)<=x32;
pipe2(4)<=x42;
pipe2(5)<=x52;
pipe2(6)<=x62;
pipe2(7)<=x72;
pipe2(8)<=x82;
pipe2(9)<=x92;
pipe2(10)<=x102;
pipe2(11)<=x112;
pipe2(12)<=x122;
pipe2(13)<=x132;
pipe2(14)<=x142;
pipe2(15)<=x152;
state:="11";
elsif(state="11") then
stage<=state;
pipe3(0)<=x03;
pipe3(1)<=x13;
pipe3(2)<=x23;
pipe3(3)<=x33;
pipe3(4)<=x43;
pipe3(5)<=x53;
pipe3(6)<=x63;
pipe3(7)<=x73;
pipe3(8)<=x83;
pipe3(9)<=x93;
pipe3(10)<=x103;
pipe3(11)<=x113;
pipe3(12)<=x123;
pipe3(13)<=x133;
pipe3(14)<=x143;
pipe3(15)<=x153;
state:="00";
end if;

end if;

end process;

y0_r<=Y0.re(15 downto 0);
y0_i<=Y0.im(15 downto 0);
y1_r<=Y1.re(15 downto 0);
y1_i<=Y1.im(15 downto 0);
y2_r<=Y2.re(15 downto 0);
y2_i<=Y2.im(15 downto 0);
y3_r<=Y3.re(15 downto 0);
y3_i<=Y3.im(15 downto 0);
y4_r<=Y4.re(15 downto 0);
y4_i<=Y4.im(15 downto 0);
y5_r<=Y5.re(15 downto 0);
y5_i<=Y5.im(15 downto 0);
y6_r<=Y6.re(15 downto 0);
y6_i<=Y6.im(15 downto 0);
y7_r<=Y7.re(15 downto 0);
y7_i<=Y7.im(15 downto 0);
y8_r<=Y8.re(15 downto 0);
y8_i<=Y8.im(15 downto 0);
y9_r<=Y9.re(15 downto 0);
y9_i<=Y9.im(15 downto 0);
y10_r<=Y10.re(15 downto 0);
y10_i<=Y10.im(15 downto 0);
y11_r<=Y11.re(15 downto 0);
y11_i<=Y11.im(15 downto 0);
y12_r<=Y12.re(15 downto 0);
y12_i<=Y12.im(15 downto 0);
y13_r<=Y13.re(15 downto 0);
y13_i<=Y13.im(15 downto 0);
y14_r<=Y14.re(15 downto 0);
y14_i<=Y14.im(15 downto 0);
y15_r<=Y15.re(15 downto 0);
y15_i<=Y15.im(15 downto 0);
end Behavioral;