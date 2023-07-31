#!/bin/bash
# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'
echo -e "${magenta}                                                       Tool created by Yashwanth${clear}"
echo ""
echo ""
echo ""

echo "                                         <|RECONNAISSANCE & WEB VULNERABILITY SCANNER|>"
echo ""
echo ""
echo -e "${green}Loading...${clear}"
sleep 2
echo "                                                       |Select a Tool|"
echo -e "${cyan}1.Get Website Info"
echo "2.Scan Firewall"
echo "3.Scan Wordpress"
echo "4.Website Recon"
echo "5.Scan for open ports"
echo "6.Monitor the network traffic"
echo "7.OSINT"
echo "8.Scan Vulnerability"
echo "9.Exploit Target"
echo "10.Configure Honeypot"
read tool
if [[ $tool == 1 ]]; then
echo "                                                          Whatweb"
echo "Loading..."
sleep 2
echo "Enter the ip or url"
read url
whatweb $url
elif [[ $tool == 2 ]]; then
echo "                                                           Wafw00f"
echo "Loading"
sleep 2
echo "Enter the ip or url"
read ip
wafw00f $ip
elif [[ $tool == 3 ]]; then
echo "                                                            Wpscan"
echo "Loading..."
sleep 2
echo "Enter wordpress URL"
read wpurl
wpscan --url $wpurl
elif [[ $tool == 4 ]]; then
echo "                                                          Recon-ng"
echo "Loading..."
sleep 2
recon-ng
elif [[ $tool == 5 ]]; then
echo "                                                        Networkmapper"
echo "Loading..."
sleep 2
echo "Enter the url or ipaddress"
read address
nmap -sV $address
elif [[ $tool == 6 ]]; then
echo "                                                           Wireshark"
echo "Loading..."
sleep 2
sudo wireshark
elif [[ $tool == 7 ]]; then
echo "                                                            Infosint"
echo "Loading.."
sleep 2
python3 /home/kali/mytool/Infosint/Infosint.py
elif [[ $tool == 8 ]]; then
echo "                                                            Burpsuite"
echo "Loading..."
sleep 2
sudo burpsuite
elif [[ $tool == 9 ]]; then
echo "                                                           Metasploit"
echo "Loading..."
sleep 2
service postgresql start
sudo msfconsole
elif [[ $tool == 10 ]]; then
echo "                                                       Honeypot Configuration"
echo "Loading..."
sleep 2
echo "1.Start Honeypot"
echo "2.Configure Honeypot ip"
read honeypot
if [[ $honeypot == 1 ]]; then
python3 /home/kali/mytool/honeypot/honeypot.py
elif [[ $honeypot == 2 ]]; then
nano /home/kali/mytool/honeypot/honeypot.py
fi
fi



