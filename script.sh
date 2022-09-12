#/bin/bash

echo "installing Required"
yum update -y
yum install certbot -y
yum install haproxy -y





certbot certonly --webroot --webroot-path=/var/www/html --email contact@techlurn.org --agree-tos --no-eff-email --staging -d techlurn.org -d www.techlurn.org

cd /etc/letsencrypt/live/www.techlurn.org
cat cert.pem privatekey.pem > all..pem
mv all..pem cert_privatekey.pem

vim /etc/haproxy/haproxy.cfg