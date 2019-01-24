// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Jan 24 16:40:22 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/carotti/Documents/EIE4/6.s193/hardmark/hardmark.srcs/sources_1/bd/hardmark_top/ip/hardmark_top_xvga_0_0_1/hardmark_top_xvga_0_0_sim_netlist.v
// Design      : hardmark_top_xvga_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hardmark_top_xvga_0_0,xvga,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "xvga,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module hardmark_top_xvga_0_0
   (vclock,
    hcount,
    vcount,
    vsync,
    hsync,
    blank);
  input vclock;
  output [10:0]hcount;
  output [10:0]vcount;
  output vsync;
  output hsync;
  output blank;

  wire blank;
  wire [10:0]hcount;
  wire hsync;
  wire vclock;
  wire [10:0]vcount;
  wire vsync;

  hardmark_top_xvga_0_0_xvga inst
       (.blank(blank),
        .hcount(hcount),
        .hsync(hsync),
        .vclock(vclock),
        .vcount(vcount),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "xvga" *) 
module hardmark_top_xvga_0_0_xvga
   (hcount,
    vcount,
    vsync,
    hsync,
    blank,
    vclock);
  output [10:0]hcount;
  output [10:0]vcount;
  output vsync;
  output hsync;
  output blank;
  input vclock;

  wire blank;
  wire blank_i_1_n_0;
  wire blank_i_3_n_0;
  wire blank_i_4_n_0;
  wire blank_i_5_n_0;
  wire blank_i_6_n_0;
  wire hblank;
  wire hblank_i_1_n_0;
  wire hblank_i_2_n_0;
  wire [10:0]hcount;
  wire \hcount[10]_i_1_n_0 ;
  wire \hcount[10]_i_5_n_0 ;
  wire \hcount[10]_i_6_n_0 ;
  wire \hcount[2]_i_1_n_0 ;
  wire \hcount[6]_i_2_n_0 ;
  wire hreset;
  wire hsync;
  wire hsync_i_1_n_0;
  wire hsync_i_2_n_0;
  wire next_vblank;
  wire [5:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire [10:0]p_0_in__1;
  wire [5:0]pipelineCount_reg__0;
  wire pipelineFull;
  wire sel;
  wire vblank;
  wire vblank_i_1_n_0;
  wire vclock;
  wire [10:0]vcount;
  wire \vcount[10]_i_1_n_0 ;
  wire \vcount[10]_i_3_n_0 ;
  wire \vcount[10]_i_4_n_0 ;
  wire \vcount[10]_i_5_n_0 ;
  wire vreset;
  wire vsync;
  wire vsync_i_1_n_0;
  wire vsync_i_3_n_0;
  wire vsync_i_4_n_0;
  wire vsyncoff;

  LUT6 #(
    .INIT(64'hBBBAFFFFBBBA0000)) 
    blank_i_1
       (.I0(next_vblank),
        .I1(hreset),
        .I2(hblank),
        .I3(blank_i_3_n_0),
        .I4(pipelineFull),
        .I5(blank),
        .O(blank_i_1_n_0));
  LUT6 #(
    .INIT(64'h00EAAAAAEAEAAAAA)) 
    blank_i_2
       (.I0(vblank),
        .I1(blank_i_4_n_0),
        .I2(blank_i_5_n_0),
        .I3(vsync_i_4_n_0),
        .I4(\vcount[10]_i_5_n_0 ),
        .I5(blank_i_6_n_0),
        .O(next_vblank));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    blank_i_3
       (.I0(hcount[5]),
        .I1(hcount[4]),
        .I2(hcount[6]),
        .I3(hcount[8]),
        .I4(hcount[7]),
        .I5(\hcount[10]_i_6_n_0 ),
        .O(blank_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    blank_i_4
       (.I0(vcount[0]),
        .I1(vcount[2]),
        .O(blank_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    blank_i_5
       (.I0(vcount[1]),
        .I1(vcount[5]),
        .I2(vcount[4]),
        .I3(vcount[3]),
        .O(blank_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    blank_i_6
       (.I0(vcount[4]),
        .I1(vcount[0]),
        .I2(vcount[2]),
        .O(blank_i_6_n_0));
  FDRE blank_reg
       (.C(vclock),
        .CE(1'b1),
        .D(blank_i_1_n_0),
        .Q(blank),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FFFFFF00100000)) 
    hblank_i_1
       (.I0(hcount[5]),
        .I1(hcount[4]),
        .I2(hblank_i_2_n_0),
        .I3(hreset),
        .I4(pipelineFull),
        .I5(hblank),
        .O(hblank_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    hblank_i_2
       (.I0(\hcount[10]_i_6_n_0 ),
        .I1(hcount[7]),
        .I2(hcount[8]),
        .I3(hcount[6]),
        .O(hblank_i_2_n_0));
  FDRE hblank_reg
       (.C(vclock),
        .CE(1'b1),
        .D(hblank_i_1_n_0),
        .Q(hblank),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hcount[0]_i_1 
       (.I0(hcount[0]),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \hcount[10]_i_1 
       (.I0(pipelineFull),
        .I1(hreset),
        .O(\hcount[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \hcount[10]_i_2 
       (.I0(pipelineCount_reg__0[3]),
        .I1(pipelineCount_reg__0[0]),
        .I2(pipelineCount_reg__0[1]),
        .I3(pipelineCount_reg__0[4]),
        .I4(pipelineCount_reg__0[2]),
        .I5(pipelineCount_reg__0[5]),
        .O(pipelineFull));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hcount[10]_i_3 
       (.I0(hcount[8]),
        .I1(hcount[6]),
        .I2(\hcount[10]_i_5_n_0 ),
        .I3(hcount[7]),
        .I4(hcount[9]),
        .I5(hcount[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \hcount[10]_i_4 
       (.I0(hcount[7]),
        .I1(hcount[4]),
        .I2(hcount[8]),
        .I3(hcount[6]),
        .I4(hcount[5]),
        .I5(\hcount[10]_i_6_n_0 ),
        .O(hreset));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hcount[10]_i_5 
       (.I0(hcount[5]),
        .I1(hcount[3]),
        .I2(hcount[1]),
        .I3(hcount[0]),
        .I4(hcount[2]),
        .I5(hcount[4]),
        .O(\hcount[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hcount[10]_i_6 
       (.I0(hcount[10]),
        .I1(hcount[9]),
        .I2(hcount[1]),
        .I3(hcount[0]),
        .I4(hcount[3]),
        .I5(hcount[2]),
        .O(\hcount[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcount[1]_i_1 
       (.I0(hcount[0]),
        .I1(hcount[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hcount[2]_i_1 
       (.I0(hcount[0]),
        .I1(hcount[1]),
        .I2(hcount[2]),
        .O(\hcount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcount[3]_i_1 
       (.I0(hcount[1]),
        .I1(hcount[0]),
        .I2(hcount[2]),
        .I3(hcount[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcount[4]_i_1 
       (.I0(hcount[2]),
        .I1(hcount[0]),
        .I2(hcount[1]),
        .I3(hcount[3]),
        .I4(hcount[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hcount[5]_i_1 
       (.I0(hcount[3]),
        .I1(hcount[1]),
        .I2(hcount[0]),
        .I3(hcount[2]),
        .I4(hcount[4]),
        .I5(hcount[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \hcount[6]_i_1 
       (.I0(hcount[4]),
        .I1(hcount[2]),
        .I2(\hcount[6]_i_2_n_0 ),
        .I3(hcount[3]),
        .I4(hcount[5]),
        .I5(hcount[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \hcount[6]_i_2 
       (.I0(hcount[1]),
        .I1(hcount[0]),
        .O(\hcount[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \hcount[7]_i_1 
       (.I0(\hcount[10]_i_5_n_0 ),
        .I1(hcount[6]),
        .I2(hcount[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcount[8]_i_1 
       (.I0(hcount[6]),
        .I1(\hcount[10]_i_5_n_0 ),
        .I2(hcount[7]),
        .I3(hcount[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcount[9]_i_1 
       (.I0(hcount[7]),
        .I1(\hcount[10]_i_5_n_0 ),
        .I2(hcount[6]),
        .I3(hcount[8]),
        .I4(hcount[9]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[0] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[0]),
        .Q(hcount[0]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[10] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[10]),
        .Q(hcount[10]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[1] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[1]),
        .Q(hcount[1]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[2] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(\hcount[2]_i_1_n_0 ),
        .Q(hcount[2]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[3] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[3]),
        .Q(hcount[3]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[4] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[4]),
        .Q(hcount[4]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[5] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[5]),
        .Q(hcount[5]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[6] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[6]),
        .Q(hcount[6]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[7] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[7]),
        .Q(hcount[7]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[8] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[8]),
        .Q(hcount[8]),
        .R(\hcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[9] 
       (.C(vclock),
        .CE(pipelineFull),
        .D(p_0_in__0[9]),
        .Q(hcount[9]),
        .R(\hcount[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA2AAAAAAAAAAAAA)) 
    hsync_i_1
       (.I0(hsync),
        .I1(hcount[5]),
        .I2(hcount[4]),
        .I3(hcount[6]),
        .I4(hsync_i_2_n_0),
        .I5(pipelineFull),
        .O(hsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    hsync_i_2
       (.I0(hcount[8]),
        .I1(hcount[7]),
        .I2(\hcount[10]_i_6_n_0 ),
        .O(hsync_i_2_n_0));
  FDRE hsync_reg
       (.C(vclock),
        .CE(1'b1),
        .D(hsync_i_1_n_0),
        .Q(hsync),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pipelineCount[0]_i_1 
       (.I0(pipelineCount_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pipelineCount[1]_i_1 
       (.I0(pipelineCount_reg__0[0]),
        .I1(pipelineCount_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pipelineCount[2]_i_1 
       (.I0(pipelineCount_reg__0[0]),
        .I1(pipelineCount_reg__0[1]),
        .I2(pipelineCount_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pipelineCount[3]_i_1 
       (.I0(pipelineCount_reg__0[1]),
        .I1(pipelineCount_reg__0[0]),
        .I2(pipelineCount_reg__0[2]),
        .I3(pipelineCount_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pipelineCount[4]_i_1 
       (.I0(pipelineCount_reg__0[2]),
        .I1(pipelineCount_reg__0[0]),
        .I2(pipelineCount_reg__0[1]),
        .I3(pipelineCount_reg__0[3]),
        .I4(pipelineCount_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \pipelineCount[5]_i_1 
       (.I0(pipelineCount_reg__0[5]),
        .I1(pipelineCount_reg__0[2]),
        .I2(pipelineCount_reg__0[4]),
        .I3(pipelineCount_reg__0[1]),
        .I4(pipelineCount_reg__0[0]),
        .I5(pipelineCount_reg__0[3]),
        .O(sel));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pipelineCount[5]_i_2 
       (.I0(pipelineCount_reg__0[3]),
        .I1(pipelineCount_reg__0[1]),
        .I2(pipelineCount_reg__0[0]),
        .I3(pipelineCount_reg__0[2]),
        .I4(pipelineCount_reg__0[4]),
        .I5(pipelineCount_reg__0[5]),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \pipelineCount_reg[0] 
       (.C(vclock),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(pipelineCount_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pipelineCount_reg[1] 
       (.C(vclock),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(pipelineCount_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pipelineCount_reg[2] 
       (.C(vclock),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(pipelineCount_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pipelineCount_reg[3] 
       (.C(vclock),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(pipelineCount_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pipelineCount_reg[4] 
       (.C(vclock),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(pipelineCount_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pipelineCount_reg[5] 
       (.C(vclock),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(pipelineCount_reg__0[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FFFFFF00400000)) 
    vblank_i_1
       (.I0(vcount[2]),
        .I1(vcount[0]),
        .I2(vsync_i_3_n_0),
        .I3(vreset),
        .I4(pipelineFull),
        .I5(vblank),
        .O(vblank_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    vblank_i_2
       (.I0(vcount[2]),
        .I1(vcount[0]),
        .I2(vcount[4]),
        .I3(\vcount[10]_i_5_n_0 ),
        .I4(vsync_i_4_n_0),
        .O(vreset));
  FDRE vblank_reg
       (.C(vclock),
        .CE(1'b1),
        .D(vblank_i_1_n_0),
        .Q(vblank),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \vcount[0]_i_1 
       (.I0(vcount[0]),
        .O(p_0_in__1[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vcount[10]_i_1 
       (.I0(pipelineFull),
        .I1(vcount[2]),
        .I2(vcount[0]),
        .I3(vcount[4]),
        .I4(\vcount[10]_i_3_n_0 ),
        .I5(hreset),
        .O(\vcount[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vcount[10]_i_2 
       (.I0(vcount[8]),
        .I1(vcount[6]),
        .I2(\vcount[10]_i_4_n_0 ),
        .I3(vcount[7]),
        .I4(vcount[9]),
        .I5(vcount[10]),
        .O(p_0_in__1[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \vcount[10]_i_3 
       (.I0(vcount[5]),
        .I1(vcount[1]),
        .I2(vcount[3]),
        .I3(\vcount[10]_i_5_n_0 ),
        .O(\vcount[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vcount[10]_i_4 
       (.I0(vcount[5]),
        .I1(vcount[3]),
        .I2(vcount[1]),
        .I3(vcount[0]),
        .I4(vcount[2]),
        .I5(vcount[4]),
        .O(\vcount[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \vcount[10]_i_5 
       (.I0(vcount[10]),
        .I1(vcount[8]),
        .I2(vcount[7]),
        .I3(vcount[9]),
        .I4(vcount[6]),
        .O(\vcount[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcount[1]_i_1 
       (.I0(vcount[0]),
        .I1(vcount[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vcount[2]_i_1 
       (.I0(vcount[0]),
        .I1(vcount[1]),
        .I2(vcount[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vcount[3]_i_1 
       (.I0(vcount[1]),
        .I1(vcount[0]),
        .I2(vcount[2]),
        .I3(vcount[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vcount[4]_i_1 
       (.I0(vcount[2]),
        .I1(vcount[0]),
        .I2(vcount[1]),
        .I3(vcount[3]),
        .I4(vcount[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vcount[5]_i_1 
       (.I0(vcount[3]),
        .I1(vcount[1]),
        .I2(vcount[0]),
        .I3(vcount[2]),
        .I4(vcount[4]),
        .I5(vcount[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcount[6]_i_1 
       (.I0(\vcount[10]_i_4_n_0 ),
        .I1(vcount[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vcount[7]_i_1 
       (.I0(\vcount[10]_i_4_n_0 ),
        .I1(vcount[6]),
        .I2(vcount[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vcount[8]_i_1 
       (.I0(vcount[6]),
        .I1(\vcount[10]_i_4_n_0 ),
        .I2(vcount[7]),
        .I3(vcount[8]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vcount[9]_i_1 
       (.I0(vcount[7]),
        .I1(\vcount[10]_i_4_n_0 ),
        .I2(vcount[6]),
        .I3(vcount[8]),
        .I4(vcount[9]),
        .O(p_0_in__1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[0] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(vcount[0]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[10] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[10]),
        .Q(vcount[10]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[1] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(vcount[1]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[2] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(vcount[2]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[3] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(vcount[3]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[4] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(vcount[4]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[5] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(vcount[5]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[6] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(vcount[6]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[7] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(vcount[7]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[8] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[8]),
        .Q(vcount[8]),
        .R(\vcount[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[9] 
       (.C(vclock),
        .CE(\hcount[10]_i_1_n_0 ),
        .D(p_0_in__1[9]),
        .Q(vcount[9]),
        .R(\vcount[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEEEEEAAAAAAAA)) 
    vsync_i_1
       (.I0(vsync),
        .I1(vsyncoff),
        .I2(vcount[0]),
        .I3(vcount[2]),
        .I4(vsync_i_3_n_0),
        .I5(pipelineFull),
        .O(vsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    vsync_i_2
       (.I0(vcount[2]),
        .I1(vcount[0]),
        .I2(vcount[4]),
        .I3(\vcount[10]_i_5_n_0 ),
        .I4(vsync_i_4_n_0),
        .O(vsyncoff));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    vsync_i_3
       (.I0(vcount[3]),
        .I1(vcount[4]),
        .I2(vcount[5]),
        .I3(vcount[1]),
        .I4(\vcount[10]_i_5_n_0 ),
        .O(vsync_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    vsync_i_4
       (.I0(vcount[3]),
        .I1(vcount[1]),
        .I2(vcount[5]),
        .O(vsync_i_4_n_0));
  FDRE vsync_reg
       (.C(vclock),
        .CE(1'b1),
        .D(vsync_i_1_n_0),
        .Q(vsync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
