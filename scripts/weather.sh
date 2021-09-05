#!/usr/bin/env bash
printf "%.f °C" $(curl -s \
    "https://api.openweathermap.org/data/2.5/weather?id=$OWM_CITY_ID&appid=$OWM_API_KEY&units=metric" \
    | jq .main.temp)
