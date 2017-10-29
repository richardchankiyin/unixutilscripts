curl -s "https://www.bloomberg.com/markets/api/quote-page/$1%3ACUR" | sed -e 's/\"price\"/\'$'\n\"price\"/g' | grep '^"price":[0-9]' | cut -d',' -f1 | cut -d':' -f2
