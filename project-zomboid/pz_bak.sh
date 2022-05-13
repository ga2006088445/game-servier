#!/bin/bash

WEEK=`date +%w_%H`
BAKDIRPATH=$1
OUTPUTNAME=$2
tar cvf "${OUTPUTNAME}_${WEEK}.tar" "$BAKDIRPATH"


# bash /data/game-servier/project-zomboid/pz_bak.sh /data/game-servier/project-zomboid/Saves/ /data/pzBak/bak

# bash /data/game-servier/project-zomboid/pz_bak.sh /data/game-servier/project-zomboid/Saves/ /data/pzBak/bak