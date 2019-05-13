#!/bin/bash
echo "adding $1 to local /etc/hosts file";
echo "127.0.0.1       $1" >> /etc/hosts
echo "<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot "/var/www/html/$2"
    ServerName $1
        <Directory "/var/www/html/$2">
                AllowOverride all
        </Directory>
</VirtualHost>" > ./config/vhosts/$1.conf
