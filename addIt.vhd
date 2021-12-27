-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 12.1 Build 177 11/07/2012 SJ Full Version"
-- CREATED		"Sun Sep 20 22:36:41 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY addIt IS 
	PORT
	(
		start :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		b :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX0_0 :  OUT  STD_LOGIC;
		HEX0_1 :  OUT  STD_LOGIC;
		HEX0_2 :  OUT  STD_LOGIC;
		HEX0_3 :  OUT  STD_LOGIC;
		HEX0_4 :  OUT  STD_LOGIC;
		HEX0_5 :  OUT  STD_LOGIC;
		HEX0_6 :  OUT  STD_LOGIC;
		HEX1_0 :  OUT  STD_LOGIC;
		HEX1_1 :  OUT  STD_LOGIC;
		HEX1_2 :  OUT  STD_LOGIC;
		HEX1_3 :  OUT  STD_LOGIC;
		HEX1_4 :  OUT  STD_LOGIC;
		HEX1_5 :  OUT  STD_LOGIC;
		HEX1_6 :  OUT  STD_LOGIC
	);
END addIt;

ARCHITECTURE bdf_type OF addIt IS 

COMPONENT add
	PORT(start : INOUT STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 c : INOUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		 result0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 result1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	result0 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	result1 :  STD_LOGIC_VECTOR(6 DOWNTO 0);


BEGIN 



b2v_inst : add
PORT MAP(start => start,
		 a => a,
		 b => b,
		 result0 => result0,
		 result1 => result1);

HEX0_0 <= result0(0);
HEX0_1 <= result0(1);
HEX0_2 <= result0(2);
HEX0_3 <= result0(3);
HEX0_4 <= result0(4);
HEX0_5 <= result0(5);
HEX0_6 <= result0(6);
HEX1_0 <= result1(0);
HEX1_1 <= result1(1);
HEX1_2 <= result1(2);
HEX1_3 <= result1(3);
HEX1_4 <= result1(4);
HEX1_5 <= result1(5);
HEX1_6 <= result1(6);

END bdf_type;