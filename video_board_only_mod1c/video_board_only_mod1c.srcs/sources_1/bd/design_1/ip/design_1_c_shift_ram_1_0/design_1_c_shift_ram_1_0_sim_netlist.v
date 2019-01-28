// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 10:32:44 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_shift_ram_1_0 -prefix
//               design_1_c_shift_ram_1_0_ design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_1_0
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
  design_1_c_shift_ram_1_0_c_shift_ram_v12_0_12 U0
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
module design_1_c_shift_ram_1_0_c_shift_ram_v12_0_12
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
  design_1_c_shift_ram_1_0_c_shift_ram_v12_0_12_viv i_synth
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
Mv2cKmue0mn3RPgnYvp5JmZx1t/5wqFbVqmG
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
