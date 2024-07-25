if ! pip show cfonts &> /dev/null; then
  pip install cfonts
fi
Black="\033[1;30m"       # Black
Red="\033[1;31m"         # Red
Green="\033[1;32m"       # Green
Yellow="\033[1;33m"      # Yellow
Blue="\033[1;34m"        # Blue
Purple="\033[1;35m"     # Purple
Cyan="\033[1;36m"        # Cyan
White="\033[1;37m"      # White

python -c "from cfonts import render, say; qawe = render('ip scanner', colors=['cyan', 'white'], align='center', font='block'); print(qawe)"
  echo -e "\e[1m\e[32mDevelper\e[0m \e[1m\e[36mqwexsa\e[0m"
echo -e "\e[1;32mDiscord\e[0m \e[1m\e[36mqawe1\e[0m"
echo -e "\e[33m ➛ Welcome to my ip query script, friend. <3\e[0m"
echo -e "\e[36m ➛ ip sorgulama komut dosyama hoşgeldin dostum <3\e[0m"
read -p "IP adresini girin: " ip_address
if ! [[ $ip_address =~ ^([0-9]{1,3}.){3}[0-9]{1,3}$ ]]; then
  echo -e "\033[31mGeçersiz IP adresi. Lütfen doğru bir IP adresi girin.\033[0m"
  exit 1
fi
echo -e "\033[33m\033[1mWhois Bilgileri:\033[0m"
whois $ip_address

echo -e "\033[33m\033[1mTraceroute Bilgileri:\033[0m"
traceroute $ip_address

echo -e "\033[33m\03[1mDNS Bilgileri:\033[0m"
dig $ip_address
echo -e "\033[33m\03[1mNmap taraması yapılıyor:\033[0m"
nmap -p- $ip_address
response=$(curl -s "http://ip-api.com/json/${ip_address}?fields=61439")

country=$(jq -r '.country' <<< "$response")
region=$(jq -r '.region' <<< "$response")
city=$(jq -r '.city' <<< "$response")
isp=$(jq -r '.ip' <<< "$response")
org=$(jq -r '.org' <<< "$response")
as=$(jq -r '.as' <<< "$response")
lat=$(jq -r '.lat' <<< "$response")
lon=$(jq -r '.lon' <<< "$response")

echo -e "\033[33m\033[1mIP Address: $ip_address\033[0m"
echo -e "\033[33m\033[1mCountry: $country\033[0m"
echo -e "\033[33m\033[1mRegion: $region\033[0m"
echo -e "\033[33m\033[1mCity: $city\033[0m"
echo -e "\033[33m\033[1mISP: $isp\033[0m"
echo -e "033[33m\033[1mOrganization: $org\033[0m"
echo -e "\033[33m\033[1mAS: $as\033[0m"
echo -e "\033[33m\033[1mLatitude: $lat\033[0m"
echo -e "\033[33m\033[1mLongitude: $lon\033[0m"
