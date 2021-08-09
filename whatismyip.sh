curl -s 'https://www.whatismyip.com/' | grep "^My Public IPv4" | awk -F '>|<' '{print $5}'
