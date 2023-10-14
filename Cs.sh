url="https://"

send_request() { 
    curl -s "$url"
}

#infinite loop to send req
while true, do
   send_request
   sleep 120 # 10 = 60 seconds
done
