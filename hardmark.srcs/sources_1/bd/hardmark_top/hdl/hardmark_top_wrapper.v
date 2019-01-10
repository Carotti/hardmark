//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Wed Jan  9 23:36:56 2019
//Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
//Command     : generate_target hardmark_top_wrapper.bd
//Design      : hardmark_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hardmark_top_wrapper
   (reset_rtl,
    sys_clock);
  input reset_rtl;
  input sys_clock;

  wire reset_rtl;
  wire sys_clock;

  hardmark_top hardmark_top_i
       (.reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
endmodule
