#!bin/bash
sudo su
apt install httpd -y
cd /var/www/html
echo "<html><h1>Hey Avnish Here</h1></html>" > index.html
service httpd start
