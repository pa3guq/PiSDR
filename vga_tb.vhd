 
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2016 16:34:35
-- Design Name: 
-- Module Name: Vga_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;
 
entity Vga_TB is
 
end Vga_TB;
 
 
 
architecture Behavioral of Vga_TB is
 
 component Top --  component declaration of UUT
    Port(   CLK 		 : in  STD_LOGIC;
            VGA_RED      : out  STD_LOGIC_VECTOR (3 downto 0);
            VGA_BLUE     : out  STD_LOGIC_VECTOR (3 downto 0);
            VGA_GREEN    : out  STD_LOGIC_VECTOR (3 downto 0);
            VGA_VS       : out  STD_LOGIC;
            VGA_HS       : out  STD_LOGIC
      );
end component 
 
-- inputs 
 signal CLK : in STD_LOGIC;
 
-- output 
signal VGA_HS : out STD_LOGIC;
signal VGA_VS : out STD_LOGIC;
signal  VGA_RED : out STD_LOGIC_VECTOR (3 downto 0):=(others =>'0');
signal  VGA_BLUE : out STD_LOGIC_VECTOR (3 downto 0):=(others =>'0');
signal  VGA_GREEN : out STD_LOGIC_VECTOR (3 downto 0):=(others =>'0');   
 
begin
--instantiate the Unit Under  Test(UUT)
uut:Vga_control Port Map(
     CLK=>CLK,
     VGA_HS =>VGA_HS,
     VGA_VS=>VGA_VS,
     VGA_RED =>VGA_VS,
     VGA_BLUE=> VGA_VS,
     VGA_GREEN=> VGA_GREEN
 
 
);
--stimulus process 
stim_proc:process
begin 
    wait for 100ns;
    CLK <= '1';
    wait for 10ns;
    CLK <= '0';
    wait for 10ns;
 
 
end process;
 
end Behavioral;
 