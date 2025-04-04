# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "N_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_DIV" -parent ${Page_0}


}

proc update_PARAM_VALUE.N_BIT { PARAM_VALUE.N_BIT } {
	# Procedure called to update N_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_BIT { PARAM_VALUE.N_BIT } {
	# Procedure called to validate N_BIT
	return true
}

proc update_PARAM_VALUE.N_CNT { PARAM_VALUE.N_CNT } {
	# Procedure called to update N_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_CNT { PARAM_VALUE.N_CNT } {
	# Procedure called to validate N_CNT
	return true
}

proc update_PARAM_VALUE.N_DATA { PARAM_VALUE.N_DATA } {
	# Procedure called to update N_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_DATA { PARAM_VALUE.N_DATA } {
	# Procedure called to validate N_DATA
	return true
}

proc update_PARAM_VALUE.N_DIV { PARAM_VALUE.N_DIV } {
	# Procedure called to update N_DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_DIV { PARAM_VALUE.N_DIV } {
	# Procedure called to validate N_DIV
	return true
}


proc update_MODELPARAM_VALUE.N_DIV { MODELPARAM_VALUE.N_DIV PARAM_VALUE.N_DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_DIV}] ${MODELPARAM_VALUE.N_DIV}
}

proc update_MODELPARAM_VALUE.N_DATA { MODELPARAM_VALUE.N_DATA PARAM_VALUE.N_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_DATA}] ${MODELPARAM_VALUE.N_DATA}
}

proc update_MODELPARAM_VALUE.N_CNT { MODELPARAM_VALUE.N_CNT PARAM_VALUE.N_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_CNT}] ${MODELPARAM_VALUE.N_CNT}
}

proc update_MODELPARAM_VALUE.N_BIT { MODELPARAM_VALUE.N_BIT PARAM_VALUE.N_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_BIT}] ${MODELPARAM_VALUE.N_BIT}
}

