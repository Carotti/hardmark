// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 10:32:44 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_shift_ram_0_0 -prefix
//               design_1_c_shift_ram_0_0_ design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_0_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_dvi2rgb_0_0_PixelClk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "53" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "53" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_shift_ram_0_0_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "53" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gewdhL/w1TouB0JjuZHJxluLgazZ0MDhwTiI0DySlF2H3xd6FRSfzLr57O3qUZ5eGvZn9G1HUOcz
yxVE1Ft6ug==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kNkvEiBddZ56G5aF+XS7ob2Nhv2j+6nmCRkSoQq0oirSRWu0r3CeEeHNjMTnlz141inTsI0Z6BWi
mSQVN+vnta1jke0Bk4Stt+1AehqmzqWBhIHNifuASwGS7djtqVZP4SiTYyIWLtw2ytc2NIoTTIPD
p8KuPz5sCnz/rVbTGrU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PQCKWrqcONejuC35aWg8w9DioCraSLD3jpWb1GhpUCgcaZ0iGFYF6zyTQ9UbFoUruOqUsK4NCVSk
hplF/dXRzE4vE39sCsuYrnlvsXoMvw5omH6qSVsPw0ouHfl9A2UJZkAWOT/cmxzDUB2Nwx6oDebh
LR1vONCseE7uyR5RxjiK0JeDjP0hoBNJoC8RfEDbHpmrb9nOAmibt1Ub/3ax1qZCSXM9KLwO8O6m
3xVW+RxfWvYY4vl1SaNWMWCqoW8nl6bPZ2E3eaXRj1MmReX5VOJjdR+D+uJyoaWNDJWHitCvsaop
vIHRQS6GhW6gQDoyFrOee9vd8Mk5vO4zHSkoCQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EnheuADwC+rXRbRg9Il4ySLQns8VKTnppIVWIV7/j1q3n5T9ImVRYukn1hvdbcKoYxtL+2UcCg96
5OeU5Cmw2OktWg+nXUEQsGpMI/HtDbo51bYU08HKrrfZfLFzJht2bJQKefep8XtA+PBarinw89ic
y5pRbW5e+RK1wq2fpuZ/aad4nPvIc4RQLnDGpE3/KsO8mmLVobPkafsCgRcjsOloyEh2SIKI0L3S
bM1yoTNj3PBKHQ+Fg5c57g4tgtPWlOZoENX18yDgBTaLFQz2pRFtbb1TFYKxNIWOk5nYHwQhWhGV
7FfMa5zdnsgLXGK6/E4ssQcSyIcY1ZJqqeKUWw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w+as5hQm6N6F6rMbvXzBeWbsgKQk/heHkIxjXuTz4RzbjzgbTltcE8Flz3fkoKf5N7ML5dxsjo9D
ssHdLG4rf7XR8V4jTftZ++etToKtPnQBCB9DKi1yN533S5ArNcUfnE3UNrkiVdemu8VNDcPhkNGG
T6L1X+PWyuW9l0Qj2VQM4rosaZCg7fijmq6q9IbXnhPGGcvP+YH+yhPpUX2y8PH6GVZMCdpdUpkd
gEm8oLFSJ28Q7zZvqQZsrdEIlThY2i1c8NDuhS8NDtOmlumPhbPr7rKYBAwl6DCIXO+CqE2a8X/c
qpIBWTRvLyaD7BcA7XDCyMfCZy/mq8fZ6rIrOQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ebIGhwOoK6b2Regd2ZidBmefLC1qWrjb2ixldIHZBv9r8mN994nK0bA5i2yPW5FfOgPszrabIv2T
d9dzSTELNwamhC6udZmN9sBwlaEVqro7zC0hwc9PBph7uwSv+FXYBFkXpe9DnpJTZbUvUeThstgk
RdebU+EnQryZ0UpzZ2A=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XnwajLd9gtUhj/hQ3dArVFrFrrTuWhrvu+kPxwrOfm2NgABPJQFBXwBwCw2jjlhA7jCVcZI4CRq8
GHr5uL3LcoFEL49z34pdL9z8W+zlAFZZl/rnslm3zKW6HpX5Z9zjmS0PThKZoMBpBHWSEKjmXjSE
t+thGVHHTSqS9h2Uo8qpx2g2fY7ITBA2F2G3aajNf+o5hHTA5QnC/87hlfZzNl7Redk6aQRYCgB8
LIJBeO59sYe3aKg/vswdYeXiRdd8b45eVOvTT4iKpa1ExnseAad7tGfp2qVyT4QrHVx9jSYd05Mu
8Dlg+1UQcbk2h4Q0cJ7WGdpp1ljWsx8j2GPrQw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fF+SUISPOJtFFcCV2suOZaanhGZLhM5Byi5HdqOj3WNsIqe6NM6RY6gD8hNAu+lHnt4UPwub++5Q
5WV3WbKE2Fgw+I5fI2dNnRHmvf/L8FPlHWjdRfePzKqUtV6Z06m2780LifiWzETJzHpazA/u3aBq
NdCuKhwjopovuScSl4d5aafhVeR4uJcL6BZh6J7Usmb4JpgRNGPs1mUwhRLqT12VMD2mEsPuSPhJ
OJp9lljxJAVUbQWBano285xQDFZxh1IVJ+rE/IcyD45EMSB1HDPkqGh1tq0fhDeAYJKufVw+cno0
5jszvDJFM90uNH2Hv2ORqEFzZ5GHOBeR/aCi2A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VtHu6u61GmXyNJFze53hfjsfnpNV09nN0BgacQUQ6E4YgPUFQ1S9ytOxVQNLUDmHRw49zWYG82LZ
FrYs/foIQcd2e5rfvQqn0DAvIBi9Xc8TZuNor+3H+ayE9i736VF1WQlAHYxzqy2tP9txBbyIDXUd
zj99WPR9ROeh5tRi4fY9synuKNDYk8O/Z0DDiOcBmEJKWCPuaJCuK2xBYv/kMc+NV2qDCayLaL7p
y6+b7JArzdQaeoIL4aAVwYZUJsZ1ueQz2nJ/1sY52ItPPuqONSLf+T7WGAxDchBuFujW6TkzFVAU
VesCJgefKTv2IGiz6qq21ZMB48ZDx7vXxyAi6w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5376)
`pragma protect data_block
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
e6LwpGndqu2lhV2J3TqB8lrBLiuSoOVM2+x4
`pragma protect end_protected
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
