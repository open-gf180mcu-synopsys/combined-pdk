##########################################################################
# Synopsys(R) IC Compiler II Library Manager(TM) Library Preparation Reference Methodology 
# <create_cell_libs> <read_logic.tcl>  
# Version: R-2020.09 (Sep 2020)
# Copyright (C) 2010-2020 Synopsys, Inc. All rights reserved.
##########################################################################

echo "\n${flow_info_prefix} Running script \"read_logic.tcl\" with the following settings:\n"
echo "Parameter                   Value"
echo "-----------------------     -------------------"
echo "Logic db files:             $db_files"
echo "PVT configuration:          $pvt_configuration"
echo "ETM mode with logic db:     $etm_mode_label_wi_db"
echo ""

echo "\n### BEGIN_COMMAND from read_logic.tcl" >> ${create_ndm_commands}

#########################################################
# Define logic app options.
#########################################################

if {$db_files !="" || $etm_mode_label_wi_db!=""} {

set_app_options -as_user_default -name lib.logic_model.require_same_opt_attrs -value false
echo "set_app_options -as_user_default -name lib.logic_model.require_same_opt_attrs -value false" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.logic_model.use_db_rail_names -value true
echo "set_app_options -as_user_default -name lib.logic_model.use_db_rail_names -value true" >> ${create_ndm_commands}
set_app_options -as_user_default -name lib.logic_model.auto_remove_timing_only_designs -value true
echo "set_app_options -as_user_default -name lib.logic_model.auto_remove_timing_only_designs -value true" >> ${create_ndm_commands}

if {$pvt_configuration && $ndm_flow != "etm"} {
   if {$process_labels != "" && $process_numbers != ""} {
      set_pvt_configuration -clear_filter all -process_label $process_labels -process_numbers $process_numbers -voltages $voltages -temperatures $temperatures
      echo "set_pvt_configuration -clear_filter all -process_label {$process_labels} -process_numbers {$process_numbers} -voltages {$voltages} -temperatures {$temperatures}" >> ${create_ndm_commands}
   } elseif {$process_labels != "" && $process_numbers == ""} {
      set_pvt_configuration -clear_filter all -process_label $process_labels -voltages $voltages -temperatures $temperatures
      echo "set_pvt_configuration -clear_filter all -process_label {$process_labels} -voltages {$voltages} -temperatures {$temperatures}" >> ${create_ndm_commands}
   } elseif {$process_labels == "" && $process_numbers != ""} {
      set_pvt_configuration -clear_filter all -process_numbers $process_numbers -voltages $voltages -temperatures $temperatures
      echo "set_pvt_configuration -clear_filter all -process_numbers {$process_numbers} -voltages {$voltages} -temperatures {$temperatures}" >> ${create_ndm_commands}
   } else {
      set_pvt_configuration -clear_filter all -voltages $voltages -temperatures $temperatures
      echo "set_pvt_configuration -clear_filter all -voltages {$voltages} -temperatures {$temperatures}" >> ${create_ndm_commands}
   }
}

#########################################################
# Define all the .db files to use.
# May need to use the -process_label option if process
# names not unique
#########################################################
#read_db ".db file name (s)"
#read_db -process_label "label name" ".db file name (s)"

if {$ndm_flow != "frame" && $ndm_flow != "physical"} {
   if { $db_files == "" } {
   echo "\n${flow_warn_prefix} There is no \$db_files for ndm flow \"$ndm_flow\"\n"
  }
}


if {$ndm_flow != "etm"} {
if {$db_files != ""} {
  set logic_db ""
  if {[string match {*\**} $db_files]} {
     foreach logic_db_temp $db_files {
      append logic_db [glob $logic_db_temp]
      append logic_db " "
     }
  } else {
     set logic_db $db_files
  }
  if {$process_label_mapping != ""} {
    foreach db $logic_db {
      foreach map_list $process_label_mapping {
        set map_num [llength $map_list]
        if {!$map_num} {
            puts stderr "Error: Found invalid process label mapping setting. Please check your setup file."
        } else {
           set i 1
           set specified_process_label [lindex $map_list 0]
           set filtered_DB_file ""
           while {$i < $map_num} {
             set filter [lindex $map_list $i]
             if {[string match *${filter}*.db $db]} {
               append filtered_DB_file $db}
               incr i
             }
          if {$filtered_DB_file != ""} {
            read_db -process_label $specified_process_label \{$filtered_DB_file\}
            echo "read_db -process_label $specified_process_label \{$filtered_DB_file\}" >> ${create_ndm_commands}
          }
        }
      }
    }
  } else {
    read_db $logic_db
    echo "read_db {$logic_db}" >> ${create_ndm_commands}
  }
}
}


#########################################################
# Define read_db -mode_label {mode db} pair for ETM library.
#########################################################

if {$ndm_flow == "etm"} {
  if {$etm_mode_label_wi_db != ""} {
    foreach mode_db $etm_mode_label_wi_db {
    set mode [lindex $mode_db 0]
    set db [lindex $mode_db 1]
    echo "read_db -mode_label $mode $db" >> ${create_ndm_commands}
    read_db -mode_label $mode $db
    }
  } else {
    echo "\n${flow_warn_prefix} There is no \$etm_mode_label_wi_db for ETM flow\n"
  }
}

}

echo "### END_COMMAND from read_logic.tcl" >> ${create_ndm_commands}

