echo "from aastocks:"
curl -s "http://www.aastocks.com/tc/resources/datafeed/getstockindex.ashx?type=1" | sed -e 's/{/\'$'\n{/g' | sed -e 's/}/}\'$'\n/g' | grep '^{'

