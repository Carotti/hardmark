# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "perspective" -parent ${Page_0}
  ipgui::add_param $IPINST -name "screenHeight" -parent ${Page_0}
  ipgui::add_param $IPINST -name "screenWidth" -parent ${Page_0}


}

proc update_PARAM_VALUE.perspective { PARAM_VALUE.perspective } {
	# Procedure called to update perspective when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.perspective { PARAM_VALUE.perspective } {
	# Procedure called to validate perspective
	return true
}

proc update_PARAM_VALUE.screenHeight { PARAM_VALUE.screenHeight } {
	# Procedure called to update screenHeight when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.screenHeight { PARAM_VALUE.screenHeight } {
	# Procedure called to validate screenHeight
	return true
}

proc update_PARAM_VALUE.screenWidth { PARAM_VALUE.screenWidth } {
	# Procedure called to update screenWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.screenWidth { PARAM_VALUE.screenWidth } {
	# Procedure called to validate screenWidth
	return true
}


proc update_MODELPARAM_VALUE.screenWidth { MODELPARAM_VALUE.screenWidth PARAM_VALUE.screenWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.screenWidth}] ${MODELPARAM_VALUE.screenWidth}
}

proc update_MODELPARAM_VALUE.screenHeight { MODELPARAM_VALUE.screenHeight PARAM_VALUE.screenHeight } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.screenHeight}] ${MODELPARAM_VALUE.screenHeight}
}

proc update_MODELPARAM_VALUE.perspective { MODELPARAM_VALUE.perspective PARAM_VALUE.perspective } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.perspective}] ${MODELPARAM_VALUE.perspective}
}

