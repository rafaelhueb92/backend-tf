openssl s_client -servername token.actions.githubusercontent.com -showcerts -connect token.actions.githubusercontent.com:443 </dev/null 2>/dev/null | \
openssl x509 -fingerprint -noout -sha1 | awk -F'=' '{print tolower($2)}' | tr -d ':'
