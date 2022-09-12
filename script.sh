#!/bin/bash

echo "installing Required"
sudo yum update -y
sudo yum install certbot -y

# COMPOSE="/usr/local/bin/docker-compose --no-ansi"
# DOCKER="/usr/bin/docker"

# chmod +x ssl_renew.sh

# sudo crontab -e 

# */5 * * * * /home/sammy/wordpress/ssl_renew.sh >> /var/log/cron.log 2>&1
# tail -f /var/log/cron.log

# cd /home/sammy/wordpress/
# $COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP webserver
# $DOCKER system prune -af

# nano ssl_renew.sh

# curl -sSLo nginx-conf/options-ssl-nginx.conf https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/_internal/tls_configs/options-ssl-nginx.conf


# [ root@techlurno /tmp/WordPress_SSL_Docker ]# certbot certonly --webroot -w /var/www/html/ --renew-by-default --email contact@techlurn.org --text --agree-tos  -d techlurn.org -d www.techlurn.org
# Saving debug log to /var/log/letsencrypt/letsencrypt.log
# Requesting a certificate for techlurn.org and www.techlurn.org

# Successfully received certificate.
# Certificate is saved at: /etc/letsencrypt/live/techlurn.org-0002/fullchain.pem
# Key is saved at:         /etc/letsencrypt/live/techlurn.org-0002/privkey.pem
# This certificate expires on 2022-12-11.
# These files will be updated when the certificate renews.
# Certbot has set up a scheduled task to automatically renew this certificate in the background.

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# If you like Certbot, please consider supporting our work by:
#  * Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
#  * Donating to EFF:                    https://eff.org/donate-le
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# crontab -e
# Add the following line:

# * */12 * * * root /usr/bin/certbot renew >/dev/null 2>&1