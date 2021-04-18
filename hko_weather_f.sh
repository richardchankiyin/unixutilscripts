content=$(curl -s http://www.hko.gov.hk/textonly/v2/forecast/nday.htm --compressed)

# get cartoon and then related forecast of that day
for ((x=1;x<10;x++))
do
 cartoon="$(echo "$content" | grep -m$x '^Day [0-9]' | tail -1)"
 header="$(echo "$content" | grep -m$x '^Date\/Month' | tail -1)"
 echo  $header
 echo "-----------------------------------"
 forecast=$(echo "$content" | grep -A 8 "$header")
 echo $forecast  $cartoon
done
