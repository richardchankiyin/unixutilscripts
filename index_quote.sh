#!/bin/bash
timeout=5
echo "from aastocks:"
curl --connect-timeout $timeout -s "http://www.aastocks.com/tc/resources/datafeed/getstockindex.ashx?type=1" | sed -e 's/{/\'$'\n{/g' | sed -e 's/}/}\'$'\n/g' | grep '^{'

