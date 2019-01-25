# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AVERAGE_OVER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BLACK_THRES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COLOUR_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_THRES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_WIDTH_DIFF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_THRES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_TARGETS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCREEN_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCREEN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WHITE_THRES" -parent ${Page_0}


}

proc update_PARAM_VALUE.AVERAGE_OVER { PARAM_VALUE.AVERAGE_OVER } {
	# Procedure called to update AVERAGE_OVER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AVERAGE_OVER { PARAM_VALUE.AVERAGE_OVER } {
	# Procedure called to validate AVERAGE_OVER
	return true
}

proc update_PARAM_VALUE.BLACK_THRES { PARAM_VALUE.BLACK_THRES } {
	# Procedure called to update BLACK_THRES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BLACK_THRES { PARAM_VALUE.BLACK_THRES } {
	# Procedure called to validate BLACK_THRES
	return true
}

proc update_PARAM_VALUE.COLOUR_DEPTH { PARAM_VALUE.COLOUR_DEPTH } {
	# Procedure called to update COLOUR_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLOUR_DEPTH { PARAM_VALUE.COLOUR_DEPTH } {
	# Procedure called to validate COLOUR_DEPTH
	return true
}

proc update_PARAM_VALUE.MAX_THRES { PARAM_VALUE.MAX_THRES } {
	# Procedure called to update MAX_THRES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_THRES { PARAM_VALUE.MAX_THRES } {
	# Procedure called to validate MAX_THRES
	return true
}

proc update_PARAM_VALUE.MAX_WIDTH { PARAM_VALUE.MAX_WIDTH } {
	# Procedure called to update MAX_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_WIDTH { PARAM_VALUE.MAX_WIDTH } {
	# Procedure called to validate MAX_WIDTH
	return true
}

proc update_PARAM_VALUE.MAX_WIDTH_DIFF { PARAM_VALUE.MAX_WIDTH_DIFF } {
	# Procedure called to update MAX_WIDTH_DIFF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_WIDTH_DIFF { PARAM_VALUE.MAX_WIDTH_DIFF } {
	# Procedure called to validate MAX_WIDTH_DIFF
	return true
}

proc update_PARAM_VALUE.MIN_THRES { PARAM_VALUE.MIN_THRES } {
	# Procedure called to update MIN_THRES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIN_THRES { PARAM_VALUE.MIN_THRES } {
	# Procedure called to validate MIN_THRES
	return true
}

proc update_PARAM_VALUE.MIN_WIDTH { PARAM_VALUE.MIN_WIDTH } {
	# Procedure called to update MIN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIN_WIDTH { PARAM_VALUE.MIN_WIDTH } {
	# Procedure called to validate MIN_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_TARGETS { PARAM_VALUE.NUM_TARGETS } {
	# Procedure called to update NUM_TARGETS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_TARGETS { PARAM_VALUE.NUM_TARGETS } {
	# Procedure called to validate NUM_TARGETS
	return true
}

proc update_PARAM_VALUE.SCREEN_HEIGHT { PARAM_VALUE.SCREEN_HEIGHT } {
	# Procedure called to update SCREEN_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCREEN_HEIGHT { PARAM_VALUE.SCREEN_HEIGHT } {
	# Procedure called to validate SCREEN_HEIGHT
	return true
}

proc update_PARAM_VALUE.SCREEN_WIDTH { PARAM_VALUE.SCREEN_WIDTH } {
	# Procedure called to update SCREEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCREEN_WIDTH { PARAM_VALUE.SCREEN_WIDTH } {
	# Procedure called to validate SCREEN_WIDTH
	return true
}

proc update_PARAM_VALUE.WHITE_THRES { PARAM_VALUE.WHITE_THRES } {
	# Procedure called to update WHITE_THRES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WHITE_THRES { PARAM_VALUE.WHITE_THRES } {
	# Procedure called to validate WHITE_THRES
	return true
}


proc update_MODELPARAM_VALUE.MAX_WIDTH { MODELPARAM_VALUE.MAX_WIDTH PARAM_VALUE.MAX_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_WIDTH}] ${MODELPARAM_VALUE.MAX_WIDTH}
}

proc update_MODELPARAM_VALUE.MIN_WIDTH { MODELPARAM_VALUE.MIN_WIDTH PARAM_VALUE.MIN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIN_WIDTH}] ${MODELPARAM_VALUE.MIN_WIDTH}
}

proc update_MODELPARAM_VALUE.MAX_WIDTH_DIFF { MODELPARAM_VALUE.MAX_WIDTH_DIFF PARAM_VALUE.MAX_WIDTH_DIFF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_WIDTH_DIFF}] ${MODELPARAM_VALUE.MAX_WIDTH_DIFF}
}

proc update_MODELPARAM_VALUE.WHITE_THRES { MODELPARAM_VALUE.WHITE_THRES PARAM_VALUE.WHITE_THRES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WHITE_THRES}] ${MODELPARAM_VALUE.WHITE_THRES}
}

proc update_MODELPARAM_VALUE.BLACK_THRES { MODELPARAM_VALUE.BLACK_THRES PARAM_VALUE.BLACK_THRES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BLACK_THRES}] ${MODELPARAM_VALUE.BLACK_THRES}
}

proc update_MODELPARAM_VALUE.SCREEN_WIDTH { MODELPARAM_VALUE.SCREEN_WIDTH PARAM_VALUE.SCREEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCREEN_WIDTH}] ${MODELPARAM_VALUE.SCREEN_WIDTH}
}

proc update_MODELPARAM_VALUE.SCREEN_HEIGHT { MODELPARAM_VALUE.SCREEN_HEIGHT PARAM_VALUE.SCREEN_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCREEN_HEIGHT}] ${MODELPARAM_VALUE.SCREEN_HEIGHT}
}

proc update_MODELPARAM_VALUE.COLOUR_DEPTH { MODELPARAM_VALUE.COLOUR_DEPTH PARAM_VALUE.COLOUR_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLOUR_DEPTH}] ${MODELPARAM_VALUE.COLOUR_DEPTH}
}

proc update_MODELPARAM_VALUE.AVERAGE_OVER { MODELPARAM_VALUE.AVERAGE_OVER PARAM_VALUE.AVERAGE_OVER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AVERAGE_OVER}] ${MODELPARAM_VALUE.AVERAGE_OVER}
}

proc update_MODELPARAM_VALUE.MIN_THRES { MODELPARAM_VALUE.MIN_THRES PARAM_VALUE.MIN_THRES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIN_THRES}] ${MODELPARAM_VALUE.MIN_THRES}
}

proc update_MODELPARAM_VALUE.MAX_THRES { MODELPARAM_VALUE.MAX_THRES PARAM_VALUE.MAX_THRES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_THRES}] ${MODELPARAM_VALUE.MAX_THRES}
}

proc update_MODELPARAM_VALUE.NUM_TARGETS { MODELPARAM_VALUE.NUM_TARGETS PARAM_VALUE.NUM_TARGETS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_TARGETS}] ${MODELPARAM_VALUE.NUM_TARGETS}
}

