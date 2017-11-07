echo "------DJI-------"
curl -s "https://www.bloomberg.com/markets/api/quote-page/INDU:IND" | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'

echo "-----S&P500-----"
curl -s "https://www.bloomberg.com/markets/api/quote-page/SPX:IND" | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'

echo "----NASDAQ-----"
curl -s "https://www.bloomberg.com/markets/api/quote-page/CCMP:IND" | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'
