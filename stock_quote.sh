#!/bin/bash

for s in "$@"
do
echo "------------------------"
echo "processing $s..........."
s2=$(echo $s | cut -d'.' -f1 | sed 's/^0*//')
s3=$(printf "%05d" $s2)
schi=$(curl -s http://www.aastocks.com/tc/ltp/rtquote.aspx?symbol=$s3 | grep "HK Stock Free" | awk -F '&nbsp;' '{print $2 $1 $3}')
echo "from aastock:$schi"
saaq=$(curl -s http://www.aastocks.com/tc/resources/datafeed/getrtqsymbol.ashx?s=$s3)
echo "from aastock:$saaq"
done

