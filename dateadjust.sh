#!/bin/bash

if [ "$#" -ne 1 ]; then echo "usage [sh] [days forward/backward like +10 or -5]"; exit -1; fi 

type="$(uname)"
adjust="$1"
if [ "$type" = "Darwin" ]; then
echo "$(date -v ${adjust}d +%Y%m%d)"
else
echo $(date --date="$adjust day" +%Y%m%d)
fi
