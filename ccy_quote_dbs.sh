#!/bin/bash

if [ "$#" -lt 2 ]; then echo "usage: ./ccy_quote_dbs.sh <ccy1> (<ccy2> <ccy3> ...) <hkd/usd>"; exit -1; fi

againstccy="${!#}"
#echo "${againstccy^^}"
againstccy="$(echo "$againstccy" | awk '{print toupper($0)}')"
if [ "${againstccy}" == "HKD" ]; then againstccy="HKD"; else againstccy="USD"; fi

#echo "$againstccy"
n=$(($# - 2))
#echo $n

c="";
for ((i=1; i<=$n; i++)); do
   c+="${!i}\|";
done
#echo "$c"
m=$(($# - 1))
#echo "$m"
c+="${!m}"
#echo "$c"

if [ $againstccy == "HKD" ]; then 
curl -s "https://www.dbs.com.hk/hk-rates-api/v1/api/hkrates/latestForexRates" | sed 's/{/\'$'\n/g' | sed 's/}/\'$'\n/g' | grep -i "$c" | awk -F ',|:' '{print $2,$6,$4}' | sed 's/"//g'
else
curl -s "https://www.dbs.com.hk/hk-rates-api/v1/api/hkrates/latestForexRates" | sed 's/{/\'$'\n/g' | sed 's/}/\'$'\n/g' | grep -i "$c" | awk -F ',|:' '{print $2,$8,$10}' | sed 's/"//g'
fi

