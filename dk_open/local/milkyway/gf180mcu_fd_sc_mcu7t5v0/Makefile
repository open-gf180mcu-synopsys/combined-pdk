
MILKYWAY = /mnt/coe/workspace/ece/ece720-common/tools/synopsys/mw/S-2021.06-SP3/bin/linux64/Milkyway

all:
	$(MILKYWAY) -tcl -galaxy -nogui -file convert.tcl |& tee milkyway.log

clean:
	-rm -f *.log* *.tcl.*
	-rm -rf gf180mcu*
	-rm -f skipped*
