# Openwrt-APU2

Bringup repo for the PC Engines APU2 on OpenWRT!

Currently based on the 15.05.1 OpenWRT CC Release.

Building
-----
#### Build Only
`./build.sh`

#### Modify Configs and Build
`./build.sh modify`

Note that you will need to run a modify on the first compile to select the x86 target, APU2 device in the OpenWRT menuconfig.
