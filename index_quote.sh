#echo "from yahoo:"
#curl "http://download.finance.yahoo.com/d/quotes.csv?s=^HSI+^HSCE+^HSIL&f=snl1c"

echo "from bloomberg:"
echo "------HSI-------"
curl -s "https://www.bloomberg.com/markets/api/quote-page/HSI:IND" | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'

echo "-----HSCEI-----"
curl -s "https://www.bloomberg.com/markets/api/quote-page/HSCEI:IND" | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'
