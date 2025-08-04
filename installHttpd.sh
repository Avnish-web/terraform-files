#!/bin/bash
apt update -y
apt install -y apache2
systemctl start apache2
systemctl enable apache2

cat <<EOF > /var/www/html/index.html
<html><h1>Hey Avnish Here</h1></html>
EOF


# make sure in your security group http port 80 is open 
// hit that url in browser 
# http://<your instances >
