# Openwrt-APU2

Bringup repo for the PC Engines APU2 on OpenWRT!

Currently based on the 15.05.1 OpenWRT CC Release. Note that I have no intentions of merging this upstream, so the code may be a bit rough. Forks/PR's/Feedback is always appreciated!

Building
-----
#### Build Only
`./build.sh`

#### Modify Configs and Build
`./build.sh modify`

Note that you will need to run a modify on the first compile to select the x86 target, APU2 device in the OpenWRT menuconfig.
