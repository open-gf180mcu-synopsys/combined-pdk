#!/bin/sh

#Created by PW CDPL worker.

statusFile=/home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/synopsys_custom/pwdp_jobs/saeSession0_default.SimulationSimulation_cdpl.0.2864813/0.status
doneFile=/home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/synopsys_custom/pwdp_jobs/saeSession0_default.SimulationSimulation_cdpl.0.2864813/0.done
errFile=/home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/synopsys_custom/pwdp_jobs/saeSession0_default.SimulationSimulation_cdpl.0.2864813/0.err

#Record start info: 
startTime=`date -u +%s`
echo "JOBID: $$" > $statusFile
echo "Host: `hostname`" >> $statusFile
echo "PID: $$" >> $statusFile
echo "Start: $startTime" >> $statusFile

if [ ! -e $statusFile ]; then
    touch $statusFile
fi

SYNOPSYS_PROGRESS_MONITOR="152.14.98.53|56391|PrimeSim_1:0"
export SYNOPSYS_PROGRESS_MONITOR

SYNOPSYS_CUSTOM_LOCAL=/home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/synopsys_custom
export SYNOPSYS_CUSTOM_LOCAL

#Command to execute: 
 /home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/simulation/example,nmos,schematic/history_1/simulation/default/PrimeSimSPICE/nominal/netlist/runSimulation  > /home/wspitts2/gf180MCU_synopsys_shared/dk_ncsu/gf180mcu_cc_0.1/simulation/example,nmos,schematic/history_1/simulation/default/PrimeSimSPICE/nominal/results/run.log 2>&1
status=$?
endTime=`date -u +%s`

if [ $status -eq 0 ]
then
    touch $doneFile
else
    touch $errFile
fi

#Record end info: 
echo "JOBID: $VOV_JOBID" > $statusFile
echo "JOBID: $$" > $statusFile
echo "Host: `hostname`" >> $statusFile
echo "PID: $$" >> $statusFile
echo "Start: $startTime" >> $statusFile
echo "Exit: $status" >> $statusFile
echo "End: $endTime" >> $statusFile

if [ ! -e $statusFile ]; then
    touch $statusFile
fi

exit $status
