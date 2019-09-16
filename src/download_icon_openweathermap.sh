run() {
    get_icon_url() { echo "http://api.openweathermap.org/img/w/${1}.png"; }
    local icon=`sqlite3 :memory: "select json_extract(readfile('open_weather_map.json'), '$.weather[0].icon');"`
    local url="`get_icon_url "${icon}"`"
    wget "${url}"
}
run

