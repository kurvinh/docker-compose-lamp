# LAMP stack built with Docker Compose

~~This is a basic LAMP stack environment built using Docker Compose. It consists following:~~

* PHP
* Apache
* MySQL

clone environment, cd into folder run bash script using command ./run-install.sh
to create custom vhost run sudo ./build-vhost.sh {custom_host} {custom host folder_name} and enter your root password 

#apache2
docker exec  7.2.1-webserver-moodle bash service apache2 reload

#mysql
docker exec -it 7.2.1-webserver-moodle bash /etc/init.d/mysql start
docker exec -it 7.2.1-webserver-moodle bash /etc/init.d/mysql stop
