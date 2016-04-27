# Openwrt-APU2

Bringup repo for the PC Engines APU2 on OpenWRT!

Currently based on OpenWRT Nightlies. Note that I have no intentions of merging this upstream, so the code may be a bit rough. Also note the device config is tweaked for my own usage of this device, so YMMV. Forks/PR's/Feedback is always appreciated!

Building
-----
#### Build Only
`./build.sh`

#### Modify Config and Build
`./build.sh modify`

Note that you will need to run a modify on the first compile to select the x86 target, APU2 device in the OpenWRT menuconfig.
