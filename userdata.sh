#!/bin/bash

# VARIABLES
WEB_PAGE="https://www.tooplate.com/zip-templates/2132_clean_work.zip"
ZIPFILE="${WEB_PAGE:39}"
FILE="${ZIPFILE%.zip}"  

echo "#############################################################"
echo "Updating packages"
apt-get update
apt install unzip apache2 -y
echo "#############################################################"

echo "#############################################################"
echo "Downloading and unziping"
mkdir /tmp/web
cd /tmp/web
wget $WEB_PAGE
unzip -o $ZIPFILE
cp -r $FILE/* /var/www/html/
echo "#############################################################"
echo

echo "#############################################################"
echo "Restarting server"
systemctl restart apache2
systemctl enable apache2
echo "#############################################################"
echo

echo "#############################################################"
echo "Cleanup"
rm -rf web
echo "#############################################################"
