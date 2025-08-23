namespace eval ::gi { proc addActions {args} { } }
namespace eval ::gi { proc remove {args} { } }
if { ![info exists ::saCCInitSourced] } {
    set ::saCCInitSourced 1
}
namespace eval :: {
   db::setPrefValue saAutoMigrateResults -value 0
   db::setPrefValue saEnableDeviceTerminalVoltageProbing  -value true
   db::setPrefValue xtIncrementalNetlisting -value false
   set ::tcl_precision 15
   set ::sa::_netlistFlow 0
    set session [ss::getActiveSession]
    db::setAttr name -of $session -value saeSession0
    sa::_utils::setUniqueSessionName -of $session -value saeSession0
    set ::sa::_simServer::_simServerId stb.example.nmos.schematic.session0
    ::sa::_simServer::_setInfoByKeyInSimServerShell GUI_PID 3268222
    db::setPrefValue saPrintLoadingStartupFilesErrors -value false
    sa::_simServer::runSimulationInServer /home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/synopsys_custom/sim_server/custom_compiler.wspitts2/stb.example.nmos.schematic.session0
}
