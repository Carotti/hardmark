# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "hBackPorch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hFrontPorch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hSyncWidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hWidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vBackPorch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vFrontPorch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vSyncWidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vWidth" -parent ${Page_0}


}

proc update_PARAM_VALUE.hBackPorch { PARAM_VALUE.hBackPorch } {
	# Procedure called to update hBackPorch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hBackPorch { PARAM_VALUE.hBackPorch } {
	# Procedure called to validate hBackPorch
	return true
}

proc update_PARAM_VALUE.hFrontPorch { PARAM_VALUE.hFrontPorch } {
	# Procedure called to update hFrontPorch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hFrontPorch { PARAM_VALUE.hFrontPorch } {
	# Procedure called to validate hFrontPorch
	return true
}

proc update_PARAM_VALUE.hSyncWidth { PARAM_VALUE.hSyncWidth } {
	# Procedure called to update hSyncWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hSyncWidth { PARAM_VALUE.hSyncWidth } {
	# Procedure called to validate hSyncWidth
	return true
}

proc update_PARAM_VALUE.hWidth { PARAM_VALUE.hWidth } {
	# Procedure called to update hWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hWidth { PARAM_VALUE.hWidth } {
	# Procedure called to validate hWidth
	return true
}

proc update_PARAM_VALUE.vBackPorch { PARAM_VALUE.vBackPorch } {
	# Procedure called to update vBackPorch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vBackPorch { PARAM_VALUE.vBackPorch } {
	# Procedure called to validate vBackPorch
	return true
}

proc update_PARAM_VALUE.vFrontPorch { PARAM_VALUE.vFrontPorch } {
	# Procedure called to update vFrontPorch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vFrontPorch { PARAM_VALUE.vFrontPorch } {
	# Procedure called to validate vFrontPorch
	return true
}

proc update_PARAM_VALUE.vSyncWidth { PARAM_VALUE.vSyncWidth } {
	# Procedure called to update vSyncWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vSyncWidth { PARAM_VALUE.vSyncWidth } {
	# Procedure called to validate vSyncWidth
	return true
}

proc update_PARAM_VALUE.vWidth { PARAM_VALUE.vWidth } {
	# Procedure called to update vWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vWidth { PARAM_VALUE.vWidth } {
	# Procedure called to validate vWidth
	return true
}


proc update_MODELPARAM_VALUE.hWidth { MODELPARAM_VALUE.hWidth PARAM_VALUE.hWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hWidth}] ${MODELPARAM_VALUE.hWidth}
}

proc update_MODELPARAM_VALUE.hFrontPorch { MODELPARAM_VALUE.hFrontPorch PARAM_VALUE.hFrontPorch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hFrontPorch}] ${MODELPARAM_VALUE.hFrontPorch}
}

proc update_MODELPARAM_VALUE.hBackPorch { MODELPARAM_VALUE.hBackPorch PARAM_VALUE.hBackPorch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hBackPorch}] ${MODELPARAM_VALUE.hBackPorch}
}

proc update_MODELPARAM_VALUE.hSyncWidth { MODELPARAM_VALUE.hSyncWidth PARAM_VALUE.hSyncWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hSyncWidth}] ${MODELPARAM_VALUE.hSyncWidth}
}

proc update_MODELPARAM_VALUE.vWidth { MODELPARAM_VALUE.vWidth PARAM_VALUE.vWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vWidth}] ${MODELPARAM_VALUE.vWidth}
}

proc update_MODELPARAM_VALUE.vFrontPorch { MODELPARAM_VALUE.vFrontPorch PARAM_VALUE.vFrontPorch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vFrontPorch}] ${MODELPARAM_VALUE.vFrontPorch}
}

proc update_MODELPARAM_VALUE.vBackPorch { MODELPARAM_VALUE.vBackPorch PARAM_VALUE.vBackPorch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vBackPorch}] ${MODELPARAM_VALUE.vBackPorch}
}

proc update_MODELPARAM_VALUE.vSyncWidth { MODELPARAM_VALUE.vSyncWidth PARAM_VALUE.vSyncWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vSyncWidth}] ${MODELPARAM_VALUE.vSyncWidth}
}

