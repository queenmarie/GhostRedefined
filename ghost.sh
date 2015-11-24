#!/bin/bash

clear
#DEFINED COLOR SETTINGS
RED=$(tput setaf 1 && tput bold)
GREEN=$(tput setaf 2 && tput bold)
STAND=$(tput sgr0)
BLUE=$(tput setaf 6 && tput bold)

                                        
cat << EOF
 
		▒█▀▀█ ▒█░▒█ ▒█▀▀▀█ ▒█▀▀▀█ ▀▀█▀▀ 
		▒█░▄▄ ▒█▀▀█ ▒█░░▒█ ░▀▀▀▄▄ ░▒█░░ 
		▒█▄▄█ ▒█░▒█ ▒█▄▄▄█ ▒█▄▄▄█ ░▒█░░ 

EOF

echo "       Choose one of the following options";
echo ""
echo "       1.  Ping a target";
echo "       2.  Launch a whois search";
echo "       3.  Recover subdomains with dnsmap";
echo "       4.  See the path between you and your target with traceroute";
echo "       5.  Retrieve information about a dns";
echo "       6.  Find the administration page of websites";
echo "       7.  Identify different domain and different emails";
echo "       8.  Identify different versions of web programs";
echo "       9.  Launch a scan with NMAP";
echo "       10. Joomla & Wordpress Detector";
echo "       11. Ultimate Footprinting";
echo "       12. Wifite";
echo "       13. Exit script";
echo ""
echo ""
read -p " Please type your choice number : " menuoption
echo ""

if [ $menuoption = "1" ]; then
read -p " Enter your target {google.com} : " target
echo ""
ping -c 4 $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "2" ]; then
read -p " Enter your target {google.com} : " target
echo ""
whois $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "3" ]; then
read -p " Enter your target {google.com} : " target
echo ""
cd /root
dnsmap $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "4" ]; then
read -p " Enter your target {google.com} : " target
echo ""
echo $STAND"Please type the name of your network interface Example: eth0 "
read IFACE;
echo ""
cd /root
tcptraceroute -i $IFACE $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "5" ]; then
read -p " Enter your target {google.com} : " target
echo ""
cd /opt
fierce -dns $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "6" ]; then
cd /opt/tools
perl admin.pl
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "7" ]; then
read -p " Enter your target {google.com} : " target
echo ""
cd /root
theharvester -d $target -l 500 -b google
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "8" ]; then
read -p " Enter your target {google.com} : " target
echo ""
whatweb -v $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "9" ]; then
read -p " Enter your target IP {216.58.211.78} : " target
echo ""
nmap -Pn -F -T4 -sV -A -v $target.txt $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "10" ]; then
read -p " Enter your target IP {216.58.211.78} : " target
echo ""
cd /opt/tools
php jwp.php -j $target
php jwp.php -w $target
echo ""
read -p " Please press enter to return to the menu "
cd /opt
./ghost.sh
else

if [ $menuoption = "11" ]; then
echo "Enter the target EG. domain.org"
read target
echo ""
echo ""
whois $target
echo ""
echo ""
dig $target any
echo ""
echo ""
host -l $target
echo ""
echo ""
echo $STAND"Please type the name of your network interface Example: eth0 "
read IFACE;
echo ""
cd /root
tcptraceroute -i $IFACE $target
echo ""
echo ""
cd /opt/tools
dnsenum --enum -f dns.txt --update a -r $target
echo ""
echo ""
cd /root
dnsmap $target
echo ""
echo ""
cd /root
dnstracer $target
echo ""
echo ""
cd /root
whatweb -v $target
echo ""
echo ""
cd /root
theharvester -d $target -l 500 -b google
echo ""
echo ""
cd /root
wafw00f $target
echo ""
echo ""
cd /opt
fierce -dns $target
echo ""
echo ""
cd /opt/tools
./lbd.sh $target
echo ""
echo ""
cd /opt/tools
perl smtp-user-enum.pl -M VRFY -U users.txt -t $target
echo ""
echo ""
cd /root
nmap -Pn -F -T4 -sV -A -v $target.txt $target
echo ""
echo ""
amap -i $target.txt
echo ""
echo ""
cd /opt/tools
./httprint -h $target -s signatures.txt -P0
echo ""
echo ""
cd /opt/tools
python UAtester.py -u $target -d BC
echo ""
echo ""
read -p " Enter your target IP : " target
cd /opt/tools
php jwp.php -j $target
echo ""
echo ""
cd /opt/tools
php jwp.php -w $target
read -p "Please press ENTER to return to the menu"
cd /opt
./ghost.sh
else

if [ $menuoption = "12" ]; then
echo "something"
cd /tools
python wifite.py
echo ""
else 

if [ $menuoption = "13" ]; then
exit

fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi

