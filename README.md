# LEDE-APU2

Bringup repo for the PC Engines APU2 on LEDE!

Currently based on LEDE Nightlies. Note that all major code has been merged upstream. This repo will provide you with an example board profile and make config to help assist in building, but is not required.

**NOTE:** This repo is no longer maintained as the important drivers (LEDE, Watchdog, GPIO) were merged upstream into LEDE.

Building
-----
#### Build Only
`./build.sh`

#### Modify Configs and Build
`./build.sh modify`
