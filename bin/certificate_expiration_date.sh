#!/bin/bash

DOM="$1"
PORT="$2"


function test_one() {
  # echo "https://www.cyberciti.biz/faq/find-check-tls-ssl-certificate-expiry-date-from-linux-unix/" 
  if [[ -z $DOM || -z $PORT ]]; then
    echo "Missing DOM or/and PORT"
    echo "Usage: $0 DOM PORT"
    exit 1
  fi
  printf Q | openssl s_client -servername $DOM -connect $DOM:$PORT \
  | openssl x509 -noout -dates
}


function test_two() {
  # https://github.com/se7enack/bash/blob/master/sslcert-expire-datecheck.sh
  echo "curl --insecure -vvI https://\${1} 2>&1 | awk 'BEGIN { cert=0 } /^\\* SSL connection/ { cert=1 } /^\\*/ { if (cert) print }' | grep expire|awk -F \":\" '{print \$2 \"\" \$4}' | awk '{print \$1,\$2,\$4}'" > n.sh
  bash n.sh $1
}


echo "TEST_1"
test_one
echo ""

echo "TEST_2"
test_two $DOM
echo ""

exit 0
