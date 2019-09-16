api_key="`cat ${HOME}/root/work/record/pc/account/rapidapikey`"
curl --request GET \
 --url 'https://community-open-weather-map.p.rapidapi.com/weather?lang=ja&units=metric&mode=html&q=Sapporo%2Cjp' \
 --header 'x-rapidapi-host: community-open-weather-map.p.rapidapi.com' \
 --header "x-rapidapi-key: ${api_key}" > open_weather_map.html
zenity --text-info --html --filename=open_weather_map.html

