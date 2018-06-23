#!/bin/bash

type=$(uname)
monthoftoday=$(date +%Y%m)
if [ "$type" = "Darwin" ]; then
monthoftmr=$(date -v +1d +%Y%m)
else
monthoftmr=$(date --date="+1d" +%Y%m)
fi

if [ "$monthoftoday" = "$monthoftmr" ]; then echo "N" ; else echo "Y"; fi
