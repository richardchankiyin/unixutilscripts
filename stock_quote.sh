s=$1 
s1=$(curl -s "http://download.finance.yahoo.com/d/quotes.csv?s=$s&f=snl1")
echo "from yahoo:$s1"
s2=$(echo $s | awk -F '.' '{print $1}' | sed 's/^0*//')
s3=$(printf "%05d" $s2)
schi=$(curl -s http://www.aastocks.com/tc/ltp/rtquote.aspx?symbol=$s3 | grep "HK Stock Free" | awk -F '&nbsp;' '{print $2 $1 $3}')
echo "from aastock:$schi"
saaq=$(curl -s http://www.aastocks.com/tc/resources/datafeed/getrtqsymbol.ashx?s=$s3)
echo "from aastock:$saaq"
