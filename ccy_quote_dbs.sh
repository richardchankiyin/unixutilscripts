#!/bin/bash

if [ "$#" -lt 2 ]; then echo "usage: ./ccy_quote_dbs.sh <ccy> <hkd/usd>"; ccy1="cnyonshore"; ccy2="usd"; else ccy1="$1"; ccy2="$2"; fi

# as dbs does not support cnh/cny, a conversion should be done
if [ "$ccy1" == "cnh" ]; then ccy1="cnyoffshore"; fi
if [ "$ccy1" == "cny" ]; then ccy1="cnyonshore"; fi

content="$(curl -s https://hk.dbs.com/ecPortalWeb/Rates/ExchangeRate.aspx?Lang=en-us)"

lastupcontent="$(echo "$content" | sed -e 's/<\/span>/\'$'\n<\/span>/g' | grep 'id="lblLastUpdate"' | sed 's/<span class="time-stamp">//;s/<span id="lblLastUpdate">//' )"

echo $lastupcontent

echo "currency pair: $ccy1/$ccy2"

ratescontent="$(echo "$content" | sed -e 's/<\/table>/\'$'\n<\/table>/g' | grep -i "id='$ccy1'" | sed -e 's/<td/\'$'\n<td/g' | grep '<p>[0-9]*.[0-9]*</p>' | awk -F '<p>' '{print $2}' | awk -F '</p>' '{print $1}')"

#echo $ratescontent
if [ "$ccy2" = "hkd" ]; then echo $ratescontent | sed 's/ /\'$'\n/g' | head -2; else echo $ratescontent | sed 's/ /\'$'\n/g' | tail -2; fi 


