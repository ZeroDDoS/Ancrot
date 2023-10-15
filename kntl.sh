#!/bin/bash

# Daftar URL API yang akan diakses
api_urls=("https://api.example.com/data1" "https://api.example.com/data2" "https://api.example.com/data3")

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
