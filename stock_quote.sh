#!/bin/bash
timeout=10
for s in "$@"
do
echo "------------------------"
echo "processing $s..........."
s2=$(echo $s | cut -d'.' -f1 | sed 's/^0*//')
s3=$(printf "%05d" $s2)
schi=$(curl --connect-timeout $timeout -s "http://www.aastocks.com/tc/stocks/quote/frame-quote.aspx?symbol=$s3" -H "Referer: http://www.aastocks.com/tc/stocks/quote/quick-quote.aspx?symbol=$s3&S=Y" --compressed |  sed -e 's/var/\'$'\nvar/g' | grep "^var \_Quote" | cut -d',' -f1 | cut -d':' -f2 | sed 's/"//g')
echo "from aastock:$schi"
saaq=$(curl --connect-timeout $timeout -s http://www.aastocks.com/tc/resources/datafeed/getrtqsymbol.ashx?s=$s3 --compressed)
echo "from aastock:$saaq"
done

