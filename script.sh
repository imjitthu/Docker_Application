#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

chmod +x ssl_renew.sh

sudo crontab -e 

*/5 * * * * /home/sammy/wordpress/ssl_renew.sh >> /var/log/cron.log 2>&1
tail -f /var/log/cron.log

cd /home/sammy/wordpress/
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP webserver
$DOCKER system prune -af

echo "installing Required"
yum update -y
yum install certbot -y
yum install haproxy -y

nano ssl_renew.sh

curl -sSLo nginx-conf/options-ssl-nginx.conf https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/_internal/tls_configs/options-ssl-nginx.conf

certbot certonly --webroot --webroot-path=/var/www/html --email contact@techlurn.org --agree-tos --no-eff-email --staging -d techlurn.org -d www.techlurn.org

/etc/letsencrypt/live/www.techlurn.org
cat /etc/letsencrypt/live/techlurn.org/cert.pem /etc/letsencrypt/live/techlurn.org/privkey.pem > /etc/letsencrypt/live/techlurn.org/cert_privkey..pem
mv /etc/letsencrypt/live/techlurn.org/all..pem /etc/letsencrypt/live/techlurn.org/cert_privkey.pem

vim /etc/haproxy/haproxy.cfg


# [ root@techlurno /tmp/WordPress_SSL_Docker ]# certbot certonly --webroot --webroot-path=/var/www/html --email contact@techlurn.org --agree-tos --no-eff-email --staging -d techlurn.org -d www.techlurn.org
# Saving debug log to /var/log/letsencrypt/letsencrypt.log
# Requesting a certificate for techlurn.org and www.techlurn.org

# Successfully received certificate.
# Certificate is saved at: /etc/letsencrypt/live/techlurn.org/fullchain.pem
# Key is saved at:         /etc/letsencrypt/live/techlurn.org/privkey.pem
# This certificate expires on 2022-12-11.
# These files will be updated when the certificate renews.
# Certbot has set up a scheduled task to automatically renew this certificate in the background.