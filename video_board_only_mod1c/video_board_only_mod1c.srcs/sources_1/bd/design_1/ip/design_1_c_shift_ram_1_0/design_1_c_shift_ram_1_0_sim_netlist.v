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
NUXRIsHP7peSSRjeAFUJ05460NwjN10/vFhO
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
