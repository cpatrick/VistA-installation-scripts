#!/bin/sh
source $HOME/VistA-installation-scripts/Scripts/setupEnvironmentVariables.sh
export VistAGlobalsDir=$VistADir/g
export DashboardsDir=$HOME/OSEHRA/Dashboards
export PATH=$PATH:$gtm_dist:$HOME/local/bin
export HOST_NAME=`cat /proc/sys/kernel/hostname`
mkdir -p $DashboardsDir/Logs
$HOME/local/bin/ctest -j 4 \
-S $HOME/VistA-installation-scripts/Scripts/runDashboardBuildWithoutMUnit.cmake \
-VV > $DashboardsDir/Logs/build.log
