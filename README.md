# LAMP stack built with Docker Compose

~~This is a basic LAMP stack environment built using Docker Compose. It consists following:~~

* PHP
* Apache
* MySQL

install docker-compose https://docs.docker.com/docker-for-mac/ <br>

clone environment, cd into folder run bash script using command ./run-install.sh<br>
to create custom vhost run sudo ./build-vhost.sh {custom_host} {custom host folder_name} and enter your root password<br>

run first vhost as './build-vhost.sh base.moodle.local base-moodle'
and then 'run docker exec 7.2.1-webserver-moodle bash service apache2 reload'
visit 'http://base.moodle.local' in your browser

#apache2
docker exec  7.2.1-webserver-moodle bash service apache2 reload<br>

#mysql
docker exec -it 7.2.1-webserver-moodle bash /etc/init.d/mysql start</br>
docker exec -it 7.2.1-webserver-moodle bash /etc/init.d/mysql stop</br>
