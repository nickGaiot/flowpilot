set -e
source ./.env

# build changes
scons

export ROAD_CAMERA_SOURCE="selfdrive/assets/tmp" # no affect on android
export USE_GPU="0" # no affect on android, gpu always used on android
export PASSIVE="0"
#export MSGQ="1"
#export USE_PARAMS_NATIVE="1"
#export DISCOVERABLE_PUBLISHERS="1"
export ZMQ_MESSAGING_PROTOCOL="TCP" # TCP, INTER_PROCESS, SHARED_MEMORY
#export IP_CAN_ADDR="127.0.0.1"

export SIMULATION="1"
export FINGERPRINT="AUDI A3 3RD GEN"

## android specific ##
export USE_SNPE="1" # only works for snapdragon devices.

flowinit
