# symmetrical-octo-disco
Make VPS
```
wget https://raw.githubusercontent.com/speedforce-demo/symmetrical-octo-disco/main/make.sh; chmod +x make.sh; ./make.sh
```

Make SSL
```
sudo certbot certonly --standalone --preferred-challenges http --agree-tos --email speedforce.demo@gmail.com -d .xui.speedforce.us.eu.org
```

Make DDNS
```
wget https://raw.githubusercontent.com/speedforce-demo/symmetrical-octo-disco/main/cloudflare-xui.sh
```
Edit DDNS
```
nano cloudflare-xui.sh
```
Chmod
```
chmod +x cloudflare-xui.sh
```

Add Cronjob
```
(crontab -l && echo "*/1 * * * * /bin/bash /home/ubuntu/cloudflare.sh") | crontab -
```
