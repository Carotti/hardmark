//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Thu Jan 10 16:02:22 2019
//Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
//Command     : generate_target hardmark_top.bd
//Design      : hardmark_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "hardmark_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=hardmark_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "hardmark_top.hwdef" *) 
module hardmark_top
   (hdmi_out_clk_n,
    hdmi_out_clk_p,
    hdmi_out_data_n,
    hdmi_out_data_p,
    sys_clock);
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_N" *) output hdmi_out_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_P" *) output hdmi_out_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_N" *) output [2:0]hdmi_out_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_P" *) output [2:0]hdmi_out_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN hardmark_top_sys_clock, FREQ_HZ 125000000, PHASE 0.000" *) input sys_clock;

  wire [23:0]circle_0_pData;
  wire clk_wiz_0_clk_out1;
  wire [0:0]reset_rtl_1;
  wire rgb2dvi_0_TMDS_CLK_N;
  wire rgb2dvi_0_TMDS_CLK_P;
  wire [2:0]rgb2dvi_0_TMDS_DATA_N;
  wire [2:0]rgb2dvi_0_TMDS_DATA_P;
  wire sys_clock_1;
  wire [0:0]util_vector_logic_0_Res;
  wire xvga_0_blank;
  wire [10:0]xvga_0_hcount;
  wire xvga_0_hsync;
  wire [10:0]xvga_0_vcount;
  wire xvga_0_vsync;

  assign hdmi_out_clk_n = rgb2dvi_0_TMDS_CLK_N;
  assign hdmi_out_clk_p = rgb2dvi_0_TMDS_CLK_P;
  assign hdmi_out_data_n[2:0] = rgb2dvi_0_TMDS_DATA_N;
  assign hdmi_out_data_p[2:0] = rgb2dvi_0_TMDS_DATA_P;
  assign sys_clock_1 = sys_clock;
  hardmark_top_circle_0_0 circle_0
       (.hcount(xvga_0_hcount),
        .pData(circle_0_pData),
        .vcount(xvga_0_vcount));
  hardmark_top_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_1));
  hardmark_top_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(clk_wiz_0_clk_out1),
        .TMDS_Clk_n(rgb2dvi_0_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_0_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_0_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_0_TMDS_DATA_P),
        .aRst(reset_rtl_1),
        .vid_pData(circle_0_pData),
        .vid_pHSync(xvga_0_hsync),
        .vid_pVDE(util_vector_logic_0_Res),
        .vid_pVSync(xvga_0_vsync));
  hardmark_top_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(xvga_0_blank),
        .Res(util_vector_logic_0_Res));
  hardmark_top_xlconstant_0_0 xlconstant_0
       (.dout(reset_rtl_1));
  hardmark_top_xvga_0_0 xvga_0
       (.blank(xvga_0_blank),
        .hcount(xvga_0_hcount),
        .hsync(xvga_0_hsync),
        .vclock(clk_wiz_0_clk_out1),
        .vcount(xvga_0_vcount),
        .vsync(xvga_0_vsync));
endmodule
