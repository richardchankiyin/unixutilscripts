curl -s 'https://whatismyip.host/'   -H 'authority: whatismyip.host'   -H 'cache-control: max-age=0'   -H 'upgrade-insecure-requests: 1'   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36'   -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'   -H 'sec-fetch-site: none'   -H 'sec-fetch-mode: navigate'   -H 'sec-fetch-user: ?1'   -H 'sec-fetch-dest: document'   -H 'accept-language: en-GB,en-US;q=0.9,en;q=0.8'   --compressed | grep "class=\"ipaddress ipv4\"\|id=\"ipv6address\"" | awk -F'<|>' '{print $3}'
