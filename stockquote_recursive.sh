#!/bin/bash

timeout=10
noofstocks="$#"
s3s=()
schis=()
for s in "$@"
do
s2=$(echo $s | cut -d'.' -f1 | sed 's/^0*//')
s3=$(printf "%05d" $s2)
schi=$(curl --connect-timeout $timeout -s "http://www.aastocks.com/tc/stocks/quote/frame-quote.aspx?symbol=$s3" -H "Referer: http://www.aastocks.com/tc/stocks/quote/quick-quote.aspx?symbol=$s3&S=Y" --compressed |  sed -e 's/var/\'$'\nvar/g' | grep "^var \_Quote" | cut -d',' -f1 | cut -d':' -f2 | sed 's/"//g')
s3s+=( $s3 )
schis+=( $schi )
done

while [ 1 ]
do clear
echo "Source: aastocks"
for ((x=0;x<${noofstocks};x++))
do
p=$(curl --connect-timeout $timeout -s http://www.aastocks.com/tc/resources/datafeed/getrtqsymbol.ashx?s=${s3s[x]} --compressed)
echo "-------------------------"; echo "${s3s[x]} ${schis[x]}"; echo "$p"
done
echo "sleep 10s...."; sleep 10
done

