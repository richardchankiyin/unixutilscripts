#!/bin/bash

year="$(date +%Y)"
if [ "$#" -gt 0 ];then year="$1"; fi

echo "public holiday in Year $year"
curl -s https://www.gov.hk/en/about/abouthk/holiday/$year.htm | grep 'class="date"' | sed 's/<td class="date" width="33%">//g;s/<\/td>//g;s/&nbsp;/ /g;s/^ *//g'| tail -n +2
