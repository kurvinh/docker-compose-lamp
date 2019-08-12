# LAMP stack built with Docker Compose

~~This is a basic LAMP stack environment built using Docker Compose. It consists following:~~

* PHP
* Apache
* MySQL

clone the repo, cd into the root folder, run docker-compose up -d <br>

install docker-compose https://docs.docker.com/docker-for-mac/ <br>

#apache2
docker exec  7.2.1-webserver-moodle bash service apache2 reload</br>

git clone moodle into the /www folder

#moodle CRON
crontab -e from terminal it won't work if you use a 3rd party terminal emulator like zsh
install the below cron, and change the folder name for each project

#*/1 * * * * /usr/local/bin/php /var/www/html/online-campus/admin/cli/cron.php > /tmp/cron_online-campus-local.log

#connecting to mysql instance from host
to get the docker IP from the external 
run <br>
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 5.7-mysql-dev<br>
that IP is the one you will use for the DB your moodle instance will connect to
