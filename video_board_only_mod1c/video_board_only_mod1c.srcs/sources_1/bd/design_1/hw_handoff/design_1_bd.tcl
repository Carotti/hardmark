
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# alpha_combine, get_target_wrapper, scene_wrapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set ddc_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 ddc_0 ]

  # Create ports
  set btn [ create_bd_port -dir I -from 3 -to 0 -type data btn ]
  set hdmi_rx_clk_n [ create_bd_port -dir I -type clk hdmi_rx_clk_n ]
  set hdmi_rx_clk_p [ create_bd_port -dir I -type clk hdmi_rx_clk_p ]
  set hdmi_rx_d_n [ create_bd_port -dir I -from 2 -to 0 -type data hdmi_rx_d_n ]
  set hdmi_rx_d_p [ create_bd_port -dir I -from 2 -to 0 -type data hdmi_rx_d_p ]
  set hdmi_rx_hpd [ create_bd_port -dir O -from 0 -to 0 hdmi_rx_hpd ]
  set hdmi_rx_scl [ create_bd_port -dir I hdmi_rx_scl ]
  set hdmi_tx_clk_n [ create_bd_port -dir O -type clk hdmi_tx_clk_n ]
  set hdmi_tx_clk_p [ create_bd_port -dir O -type clk hdmi_tx_clk_p ]
  set hdmi_tx_d_n [ create_bd_port -dir O -from 2 -to 0 -type data hdmi_tx_d_n ]
  set hdmi_tx_d_p [ create_bd_port -dir O -from 2 -to 0 -type data hdmi_tx_d_p ]
  set hdmi_tx_hpdn [ create_bd_port -dir O -from 0 -to 0 hdmi_tx_hpdn ]
  set sysclk [ create_bd_port -dir I -type clk sysclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
 ] $sysclk

  # Create instance: alpha_combine_0, and set properties
  set block_name alpha_combine
  set block_cell_name alpha_combine_0
  if { [catch {set alpha_combine_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $alpha_combine_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: c_shift_ram_0, and set properties
  set c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {53} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $c_shift_ram_0

  # Create instance: c_shift_ram_1, and set properties
  set c_shift_ram_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_1 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {53} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $c_shift_ram_1

  # Create instance: c_shift_ram_2, and set properties
  set c_shift_ram_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_2 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {000000000000000000000000} \
   CONFIG.DefaultData {000000000000000000000000} \
   CONFIG.Depth {53} \
   CONFIG.SyncInitVal {000000000000000000000000} \
   CONFIG.Width {24} \
 ] $c_shift_ram_2

  # Create instance: c_shift_ram_3, and set properties
  set c_shift_ram_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_3 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {53} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $c_shift_ram_3

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {109.241} \
   CONFIG.CLKOUT1_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.ENABLE_CLOCK_MONITOR {false} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {8} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {5} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {125.000} \
 ] $clk_wiz_0

  # Create instance: dvi2rgb_0, and set properties
  set dvi2rgb_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:dvi2rgb:1.9 dvi2rgb_0 ]
  set_property -dict [ list \
   CONFIG.kClkRange {1} \
 ] $dvi2rgb_0

  # Create instance: get_target_wrapper_0, and set properties
  set block_name get_target_wrapper
  set block_cell_name get_target_wrapper_0
  if { [catch {set get_target_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $get_target_wrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $ps7_0_axi_periph

  # Create instance: render_register_0, and set properties
  set render_register_0 [ create_bd_cell -type ip -vlnv nippy.org:nippy:render_register:1.0 render_register_0 ]

  # Create instance: rgb2dvi_0, and set properties
  set rgb2dvi_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2dvi:1.4 rgb2dvi_0 ]
  set_property -dict [ list \
   CONFIG.kClkRange {1} \
 ] $rgb2dvi_0

  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create instance: scene_wrapper_0, and set properties
  set block_name scene_wrapper
  set block_cell_name scene_wrapper_0
  if { [catch {set scene_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $scene_wrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {4} \
 ] $xlslice_0

  # Create interface connections
  connect_bd_intf_net -intf_net dvi2rgb_0_DDC [get_bd_intf_ports ddc_0] [get_bd_intf_pins dvi2rgb_0/DDC]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins ps7_0_axi_periph/M00_AXI] [get_bd_intf_pins render_register_0/S00_AXI]

  # Create port connections
  connect_bd_net -net alpha_combine_0_rgb_out [get_bd_pins alpha_combine_0/rgb_out] [get_bd_pins rgb2dvi_0/vid_pData]
  connect_bd_net -net btn_1 [get_bd_ports btn] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net c_shift_ram_0_Q [get_bd_pins c_shift_ram_0/Q] [get_bd_pins rgb2dvi_0/vid_pVDE]
  connect_bd_net -net c_shift_ram_1_Q [get_bd_pins c_shift_ram_1/Q] [get_bd_pins rgb2dvi_0/vid_pVSync]
  connect_bd_net -net c_shift_ram_2_Q [get_bd_pins alpha_combine_0/rgb_in] [get_bd_pins c_shift_ram_2/Q]
  connect_bd_net -net c_shift_ram_3_Q [get_bd_pins c_shift_ram_3/Q] [get_bd_pins rgb2dvi_0/vid_pHSync]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins dvi2rgb_0/RefClk]
  connect_bd_net -net dvi2rgb_0_PixelClk [get_bd_pins c_shift_ram_0/CLK] [get_bd_pins c_shift_ram_1/CLK] [get_bd_pins c_shift_ram_2/CLK] [get_bd_pins c_shift_ram_3/CLK] [get_bd_pins dvi2rgb_0/PixelClk] [get_bd_pins get_target_wrapper_0/clk_in] [get_bd_pins rgb2dvi_0/PixelClk] [get_bd_pins scene_wrapper_0/pixel_clk]
  connect_bd_net -net dvi2rgb_0_vid_pData [get_bd_pins c_shift_ram_2/D] [get_bd_pins dvi2rgb_0/vid_pData] [get_bd_pins get_target_wrapper_0/rgb_in]
  connect_bd_net -net dvi2rgb_0_vid_pHSync [get_bd_pins c_shift_ram_3/D] [get_bd_pins dvi2rgb_0/vid_pHSync] [get_bd_pins scene_wrapper_0/hsync]
  connect_bd_net -net dvi2rgb_0_vid_pVDE [get_bd_pins c_shift_ram_0/D] [get_bd_pins dvi2rgb_0/vid_pVDE]
  connect_bd_net -net dvi2rgb_0_vid_pVSync [get_bd_pins c_shift_ram_1/D] [get_bd_pins dvi2rgb_0/vid_pVSync] [get_bd_pins scene_wrapper_0/vsync]
  connect_bd_net -net get_target_wrapper_0_valid_out [get_bd_pins get_target_wrapper_0/valid_out] [get_bd_pins render_register_0/marker_valid]
  connect_bd_net -net get_target_wrapper_0_xcount0_out [get_bd_pins get_target_wrapper_0/xcount0_out] [get_bd_pins render_register_0/marker_1_x]
  connect_bd_net -net get_target_wrapper_0_xcount1_out [get_bd_pins get_target_wrapper_0/xcount1_out] [get_bd_pins render_register_0/marker_2_x]
  connect_bd_net -net get_target_wrapper_0_xcount2_out [get_bd_pins get_target_wrapper_0/xcount2_out] [get_bd_pins render_register_0/marker_3_x]
  connect_bd_net -net get_target_wrapper_0_xcount3_out [get_bd_pins get_target_wrapper_0/xcount3_out] [get_bd_pins render_register_0/marker_4_x]
  connect_bd_net -net get_target_wrapper_0_ycount0_out [get_bd_pins get_target_wrapper_0/ycount0_out] [get_bd_pins render_register_0/marker_1_y]
  connect_bd_net -net get_target_wrapper_0_ycount1_out [get_bd_pins get_target_wrapper_0/ycount1_out] [get_bd_pins render_register_0/marker_2_y]
  connect_bd_net -net get_target_wrapper_0_ycount2_out [get_bd_pins get_target_wrapper_0/ycount2_out] [get_bd_pins render_register_0/marker_3_y]
  connect_bd_net -net get_target_wrapper_0_ycount3_out [get_bd_pins get_target_wrapper_0/ycount3_out] [get_bd_pins render_register_0/marker_4_y]
  connect_bd_net -net hdmi_rx_clk_n_1 [get_bd_ports hdmi_rx_clk_n] [get_bd_pins dvi2rgb_0/TMDS_Clk_n]
  connect_bd_net -net hdmi_rx_clk_p_1 [get_bd_ports hdmi_rx_clk_p] [get_bd_pins dvi2rgb_0/TMDS_Clk_p]
  connect_bd_net -net hdmi_rx_d_n_1 [get_bd_ports hdmi_rx_d_n] [get_bd_pins dvi2rgb_0/TMDS_Data_n]
  connect_bd_net -net hdmi_rx_d_p_1 [get_bd_ports hdmi_rx_d_p] [get_bd_pins dvi2rgb_0/TMDS_Data_p]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins render_register_0/s00_axi_aclk] [get_bd_pins rst_ps7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net render_register_0_sphere_radius [get_bd_pins render_register_0/sphere_radius] [get_bd_pins scene_wrapper_0/sphere_radius]
  connect_bd_net -net render_register_0_sphere_x [get_bd_pins render_register_0/sphere_x] [get_bd_pins scene_wrapper_0/sphere_x]
  connect_bd_net -net render_register_0_sphere_y [get_bd_pins render_register_0/sphere_y] [get_bd_pins scene_wrapper_0/sphere_y]
  connect_bd_net -net render_register_0_sphere_z [get_bd_pins render_register_0/sphere_z] [get_bd_pins scene_wrapper_0/sphere_z]
  connect_bd_net -net rgb2dvi_0_TMDS_Clk_n [get_bd_ports hdmi_tx_clk_n] [get_bd_pins rgb2dvi_0/TMDS_Clk_n]
  connect_bd_net -net rgb2dvi_0_TMDS_Clk_p [get_bd_ports hdmi_tx_clk_p] [get_bd_pins rgb2dvi_0/TMDS_Clk_p]
  connect_bd_net -net rgb2dvi_0_TMDS_Data_n [get_bd_ports hdmi_tx_d_n] [get_bd_pins rgb2dvi_0/TMDS_Data_n]
  connect_bd_net -net rgb2dvi_0_TMDS_Data_p [get_bd_ports hdmi_tx_d_p] [get_bd_pins rgb2dvi_0/TMDS_Data_p]
  connect_bd_net -net rst_ps7_0_50M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins render_register_0/s00_axi_aresetn] [get_bd_pins rst_ps7_0_50M/peripheral_aresetn]
  connect_bd_net -net scene_wrapper_0_hcount [get_bd_pins get_target_wrapper_0/hcount_in] [get_bd_pins scene_wrapper_0/hcount]
  connect_bd_net -net scene_wrapper_0_pixel_data [get_bd_pins alpha_combine_0/rgba_in] [get_bd_pins scene_wrapper_0/pixel_data]
  connect_bd_net -net scene_wrapper_0_vcount [get_bd_pins get_target_wrapper_0/vcount_in] [get_bd_pins scene_wrapper_0/vcount]
  connect_bd_net -net sysclk_1 [get_bd_ports sysclk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins clk_wiz_0/reset] [get_bd_pins dvi2rgb_0/aRst] [get_bd_pins dvi2rgb_0/pRst] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports hdmi_rx_hpd] [get_bd_ports hdmi_tx_hpdn] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins xlslice_0/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs render_register_0/S00_AXI/S00_AXI_reg] SEG_render_register_0_S00_AXI_reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


