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

python -c "from cfonts import render, say; qawe = render('ip scanning', colors=['cyan', 'white'], align='center', font='block'); print(qawe)"
  echo -e "\e[1m\e[32mDevelper\e[0m \e[1m\e[36mqwexsa\e[0m"
echo -e "\e[1;32mDiscord\e[0m \e[1m\e[36mqawe1\e[0m"
echo -e "\e[33m ➛ Welcome to my ip query script, friend. <3\e[0m"
echo -e "\e[36m ➛ ip sorgulama komut dosyama hoşgeldin dostum <3\e[0m"
read -p "$(echo -e "\033[1;34mAre You Turkish?: \033[0m ")" language

case $language in
  yes)
    read -p "$(echo -e "\033[36mIP adresini girin: \033[0m ")" ip_address

    echo -e "\033[33m\033[1mWhois Bilgileri:\033[0m"
    whois $ip_address

   echo -e "\033[33m\033[1mPing Bilgileri:\033[0m"
    ping -c 4 $ip_address

    echo -e "\033[33m\033[1mTraceroute Bilgileri:\033[0m"
    traceroute $ip_address

    echo -e "\033[33m\033[1mDNS Bilgileri:\033[0m"
    dig $ip_address
    ;;
  no)
    read - "$(echo -e "\033[31mEnter IP address: \033[0m ")" ip_address

    echo -e "\033[33m\033[1mWhois information:\033[0m"
    whois $ip_address

    echo -e "\033[33m\033[1mPing information:\033[0m"
    ping -c 4 $ip_address

    echo -e "\033[33m\033[1mTraceoute information:\033[0m"
    traceroute $ip_address

    echo -e "\033[33m\033[1mDNS information:\033[0m"
    dig $ip_address
    ;;
esac
