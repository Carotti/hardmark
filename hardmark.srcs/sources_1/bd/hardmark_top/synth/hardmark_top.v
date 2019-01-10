//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Wed Jan  9 23:36:56 2019
//Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
//Command     : generate_target hardmark_top.bd
//Design      : hardmark_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "hardmark_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=hardmark_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "hardmark_top.hwdef" *) 
module hardmark_top
   (reset_rtl,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN hardmark_top_sys_clock, FREQ_HZ 125000000, PHASE 0.000" *) input sys_clock;

  wire reset_rtl_1;
  wire sys_clock_1;

  assign reset_rtl_1 = reset_rtl;
  assign sys_clock_1 = sys_clock;
  hardmark_top_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .reset(reset_rtl_1));
endmodule
