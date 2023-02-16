#!/bin/bash
#====================================================
# SCRIPT: ELH SERVER QUICK DEPLOY FOR X-UI
# DEVELOPED BY: netbro201031
# UPDATE DATE: 2021.11.06
# THIS REPO SPECIALLY MADE FOR ELH.NETWOXCLOUD SERVERS.
#====================================================

# Update System
sudo apt update 
# Upgrade System
sudo apt upgrade -y
# Install Firewalld
sudo apt-get install firewalld -y
# Open Ports
sudo firewall-cmd --zone=public --permanent --add-port=22/tcp #SSH
sudo firewall-cmd --zone=public --permanent --add-port=54321/tcp # User 1
sudo firewall-cmd --zone=public --permanent --add-port=54322/tcp # User 2
sudo firewall-cmd --zone=public --permanent --add-port=54323/tcp # User 3
sudo firewall-cmd --zone=public --permanent --add-port=54324/tcp # User 4
sudo firewall-cmd --zone=public --permanent --add-port=54325/tcp # User 5
sudo firewall-cmd --zone=public --permanent --add-port=54326/tcp # User 6
sudo firewall-cmd --zone=public --permanent --add-port=54327/tcp # User 7
sudo firewall-cmd --zone=public --permanent --add-port=54328/tcp # User 8
sudo firewall-cmd --zone=public --permanent --add-port=54329/tcp # User 9
sudo firewall-cmd --zone=public --permanent --add-port=54330/tcp # User 10
sudo firewall-cmd --zone=public --permanent --add-port=80/tcp # HTTP
sudo firewall-cmd --zone=public --permanent --add-port=443/tcp # HTTPs
# Reload Firewalld
sudo firewall-cmd --reload
# Adding Cron Jobs
(crontab -l && echo "#ELHX-UI") | crontab -
(crontab -l && echo "@reboot systemctl start firewalld") | crontab -
# Setup Time Zone
sudo timedatectl set-timezone Asia/Colombo
# Setup Automatic Reboot @ Every day 5 a.m.
(crontab -l && echo "0 5 * * * /sbin/reboot") | crontab -
#SSL
apt update
apt install snapd
snap install core; snap refresh core
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot
# End
echo "VPS Make Done !"
# Remove opcmake file
rm -r make.sh
