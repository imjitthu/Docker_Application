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



certbot certonly --webroot --webroot-path=/var/www/html --email contact@techlurn.org --agree-tos --no-eff-email --staging -d techlurn.org -d www.techlurn.org

cd /etc/letsencrypt/live/www.techlurn.org
cat cert.pem privatekey.pem > all..pem
mv all..pem cert_privatekey.pem

vim /etc/haproxy/haproxy.cfg