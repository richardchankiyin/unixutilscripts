# unixutilscripts
there are some unix util scripts for HK specific applications like stock quote and weather information checking

- stock_quote.sh <code1> <code2> ... (code1, code2 in format XXXX.HK) will grab realtime quote from aastocks
- stock_quote_recursive.sh <code1> <code2> ... will grab realtime quote from aastocks recursively
- hko_weather.sh today HK weather
- hko_weather_f.sh coming 9 days HK weather forecast
- whatismyip.sh checking your IPv4 and IPv6
- index_quote.sh show HSI, HSCEI index
- index_quote_us.sh show DJI, S&P500 and NASDAQ (deprecated)
- push2slack_wh.sh using slack webhook to push notification to slack
- ccy_quote.sh <ccypair e.g. EURUSD) will return current rate
- ccy_quote_dbs.sh <ccy> <hkd/usd> will return fx rate against hkd/usd based on dbs hk quotation
- publicholiday.sh <Year> will return the hk public holiday in that year
- isendofmonth.sh will check today is end of month or not. If yes, display "Y" and else "N"
- dateadjust.sh will have a cross platform date adjustment result with output as format %Y%m%d 
