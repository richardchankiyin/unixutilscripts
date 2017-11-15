echo "from aastocks:"
curl -s "http://www.aastocks.com/tc/resources/datafeed/getstockindex.ashx?type=1" | sed -e 's/{/\'$'\n{/g' | sed -e 's/}/}\'$'\n/g' | grep '^{'

echo "from bloomberg:"
echo "------HSI-------"
curl -s "https://www.bloomberg.com/markets/api/quote-page/HSI:IND" | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'

echo "-----HSCEI-----"
curl -s "https://www.bloomberg.com/markets/api/quote-page/HSCEI:IND" | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'

