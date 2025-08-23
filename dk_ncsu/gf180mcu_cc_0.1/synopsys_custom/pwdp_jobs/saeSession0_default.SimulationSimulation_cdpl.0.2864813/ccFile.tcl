namespace eval :: { 
namespace eval ::gi { proc addActions {args} { } }
namespace eval ::gi { proc remove {args} { } }
if { ![info exists ::saCCInitSourced] } {
    set ::saCCInitSourced 1
    catch { source /mnt/apps/public/COE/synopsys_apps/primewave/W-2024.09-SP1-2/auxx/primewave/init.tcl }
}
   db::setPrefValue saAutoMigrateResults -value 0
   db::setPrefValue saEnableDeviceTerminalVoltageProbing  -value true
   set ::tcl_precision 15
   set ::sa::_netlistFlow 0
   set session [ss::getActiveSession]
   db::setAttr session.preRunProcsSourceFile -value ""
   sa::showPreRunProcs::_sourcePreRunSourceFile $session
set ::wf::WaveView::_nwWaveviewSharedLicKey "-unique_string 424077b79e1069ee924e0adb11f343ddd6c7980de498070fc2511cd128a4b2dec1cb7792ad9475426ec5fc6d31a4f0d9a518f400f835448b -lic_type 2"
set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_LIBDEFS) /home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/lib.defs
catch { set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_WINID)  }
set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_TEST_SUITE_INFO) example:nmos:schematic
set ::env(SYNOPSYS_DYNAMIC_DISTRIBUTION_NW_DSPF_OPTIONS) "{hierDelim==|}||{termDelim==:}||{fingerChar==@}||{multiplierString==_nettran_}||{aggregateCurrent==1}||{MOSTermNames==d g s b}||{MOSTermOrder==D G S B}||{MOSTermDspfNames==DRC GATE SRC BULK}||{firstChars==XM}||{probeHierDelim==/}||{caseSensitive==1}||{firstChar==M}||{hierPrefix==X}||{nodePrefix==M}||{plotTermVoltageForNet==0}||{mapNetToMosTerminal==}||{mapSlashDelimToDot==1}||{probePortCurrent==1}||{busBit==\[\]}||{removeNodePrefix==1}||{nlConDelim==.}||{mosModelType==auto}||{keepSchName==0}"
::xt::job_cdpl::_nwSetKeysForLastRun [list /home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/simulation/example,nmos,schematic/history_1/simulation/default/PrimeSimSPICE/nominal/results]
catch { unset ::env(SYNOPSYS_CUSTOM_LOCAL_BGSIM) }

if {[info exists ::env(SYNOPSYS_PRIMEWAVE_SERVER)]} {
    set ::env(SYNOPSYS_PRIMEWAVE_SERVER) $::env(SYNOPSYS_CUSTOM_SERVER)
}

}
