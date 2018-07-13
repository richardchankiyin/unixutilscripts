echo "------DJI-------"
curl -s "https://www.bloomberg.com/markets/api/quote-page/INDU:IND" -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'

echo "-----S&P500-----"
curl -s "https://www.bloomberg.com/markets/api/quote-page/SPX:IND" -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'

echo "----NASDAQ-----"
curl -s "https://www.bloomberg.com/markets/api/quote-page/CCMP:IND" -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' | sed -e 's/\"price/\'$'\n\"price/g' | sed -e 's/\"percent/\'$'\n"percent/g' | grep -m 3 '^\"price\|^\"percent'
