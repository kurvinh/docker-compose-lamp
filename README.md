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
visit 'http://base.moodle.local' in your browser</br>

#apache2
docker exec  7.2.1-webserver-moodle bash service apache2 reload</br>

#mysql
docker exec -it 7.2.1-webserver-moodle bash /etc/init.d/mysql start</br>
docker exec -it 7.2.1-webserver-moodle bash /etc/init.d/mysql stop</br>
docker exec -it 7.2.1-webserver-moodle bash /etc/init.d/mysql reload</br>

#moodle CRON
crontab -e from terminal it won't work if you use a 3rd party terminal emulator like zsh
install the below cron, and change the folder name for each project
*/1 * * * * docker exec -it 7.2.1-webserver-moodle sh -c "/usr/local/bin/php /var/www/html/base-moodle/admin/cli/cron.php"

connecting to mysql instance from host

#CREATE USER 'root'@'%' IDENTIFIED BY 'root';
#GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';

cd /etc/mysql/mariadb.conf.d
vim 50-server.cnf
and then comment out the bind-address #bind-address       = 127.0.0.1
the restart and try the command with your specific port
if you cannot restart change the ip to 0.0.0.0 
will try and add this to the image at some point 
