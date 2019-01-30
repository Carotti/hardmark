//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Mon Jan 28 10:51:54 2019
//Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    btn,
    ddc_0_scl_io,
    ddc_0_sda_io,
    hdmi_rx_clk_n,
    hdmi_rx_clk_p,
    hdmi_rx_d_n,
    hdmi_rx_d_p,
    hdmi_rx_hpd,
    hdmi_rx_scl,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_d_n,
    hdmi_tx_d_p,
    hdmi_tx_hpdn,
    sysclk);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [3:0]btn;
  inout ddc_0_scl_io;
  inout ddc_0_sda_io;
  input hdmi_rx_clk_n;
  input hdmi_rx_clk_p;
  input [2:0]hdmi_rx_d_n;
  input [2:0]hdmi_rx_d_p;
  output [0:0]hdmi_rx_hpd;
  input hdmi_rx_scl;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_d_n;
  output [2:0]hdmi_tx_d_p;
  output [0:0]hdmi_tx_hpdn;
  input sysclk;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]btn;
  wire ddc_0_scl_i;
  wire ddc_0_scl_io;
  wire ddc_0_scl_o;
  wire ddc_0_scl_t;
  wire ddc_0_sda_i;
  wire ddc_0_sda_io;
  wire ddc_0_sda_o;
  wire ddc_0_sda_t;
  wire hdmi_rx_clk_n;
  wire hdmi_rx_clk_p;
  wire [2:0]hdmi_rx_d_n;
  wire [2:0]hdmi_rx_d_p;
  wire [0:0]hdmi_rx_hpd;
  wire hdmi_rx_scl;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire [0:0]hdmi_tx_hpdn;
  wire sysclk;

  IOBUF ddc_0_scl_iobuf
       (.I(ddc_0_scl_o),
        .IO(ddc_0_scl_io),
        .O(ddc_0_scl_i),
        .T(ddc_0_scl_t));
  IOBUF ddc_0_sda_iobuf
       (.I(ddc_0_sda_o),
        .IO(ddc_0_sda_io),
        .O(ddc_0_sda_i),
        .T(ddc_0_sda_t));
  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .btn(btn),
        .ddc_0_scl_i(ddc_0_scl_i),
        .ddc_0_scl_o(ddc_0_scl_o),
        .ddc_0_scl_t(ddc_0_scl_t),
        .ddc_0_sda_i(ddc_0_sda_i),
        .ddc_0_sda_o(ddc_0_sda_o),
        .ddc_0_sda_t(ddc_0_sda_t),
        .hdmi_rx_clk_n(hdmi_rx_clk_n),
        .hdmi_rx_clk_p(hdmi_rx_clk_p),
        .hdmi_rx_d_n(hdmi_rx_d_n),
        .hdmi_rx_d_p(hdmi_rx_d_p),
        .hdmi_rx_hpd(hdmi_rx_hpd),
        .hdmi_rx_scl(hdmi_rx_scl),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_d_n(hdmi_tx_d_n),
        .hdmi_tx_d_p(hdmi_tx_d_p),
        .hdmi_tx_hpdn(hdmi_tx_hpdn),
        .sysclk(sysclk));
endmodule
