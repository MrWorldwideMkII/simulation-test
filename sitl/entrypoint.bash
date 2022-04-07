#!/bin/bash

export PATH=$PATH:/ardupilot/Tools/autotest

cd /ardupilot/ArduCopter 

sim_vehicle.py $@
