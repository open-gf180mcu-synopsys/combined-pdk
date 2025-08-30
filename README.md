# SYNOPSYS PDK NCSU FLAVOR LOCAL INSTALL

The following is a github repo that includes the compiled Synopsys gf180MCU and OPEN_PDKS gf180mcuA opensource files. It has been included with permission of synopsys.

You should note, this has been put together in a rush in an effort to help the broader design community, so the state of things will improve drastically with time. Right now, you need to manually add a bunch of the 

You will need to modify any files such as the setup.sh file to point to your PDK installation directory. You will need to install any tools you might need to use this.  

**This is being provided asis, whereis, use at own risk, no warranty implied**

## PAD FRAME

1) You download the GDS from here: https://github.com/idea-fasoc/openfasoc-tapeouts/tree/main/gf180mcu_padframe/
2) The library you import the pad ring into has to have the technology set up correctly as well. The scripts/configs in the document should point one in the right track 
3) Then import it into custom compiler (file -> import -> stream? if i recall) and drop the design in the center (if GDS from a digital flow, it's the same process)


## dk_ncsu

1) dk_synopsys folder contains the files distributed from synopsys
2) dk_ncsu folder is a reproduction of the dk_synopsys kit + the ncsu flavors needed to launch things like CC and ICC2
3) dk_open contains dk_open/share/pdk which has the gf180mcuA files from the OPEN PDKS
4) dk_open contains dk_open/local which contains the PnR files needed for ICC2 but only for the gf180mcu_fd_sc_mcu7t5v0 cells presently.

## Examples

### Analog Flow

Clone the repository and then go into the following directory to run the setup script (note you might need to make changes to the setup script to load your environment):
```
cd gf180MCU_synopsys_shared
cd dk_ncsu
cd gf180mcu
source setup.sh
custom_compiler &
```

Following these instructions:

[Video: How to run the NC State Example PDK, LVS and DRC](https://ncsu.zoom.us/rec/share/txlwofC5i1w89VHd6PUCxr1TOueCAOt3EomUtCQPf_1HvmmnrrShkAO5qFcbKIg3.W6X8lW3dusrbWBkw?startTime=1756523681000)

[Video: How to run PrimeSim SPICE simulation and how to run PrimeSim AMS Mixed Signal simulations](https://ncsu.zoom.us/rec/share/2nVY9yAYXVhgejIXKWP3t4hMVz0Wi1l0t7OimEghYCtZ-U1ZmgNqMjH8CdSsxoek.iUzD2a9VaSmS9N4O)

### Digital Flow Example NC States Student Club Voltmeter Example

https://github.com/SiliconDenPresident/180-voltmeter


# SYNOPSYS PDK CLOUD

NC State is using the downloaded kit not the cloud, this is put here to help the broader community.

## Getting PAD FRAME into Synopsys CLOUD

From discord: 

Q: How are you downloading from Git in SaaS environment? I am not able to do it. I tried downloading using web browser, but was not able to connect to GitHub.

A: I was able to upload the pad frame to the cloud, but could not download it to the SaaS environment

So looks like you need to download the padframe locally if you are using the cloud
