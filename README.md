# LAMP stack built with Docker Compose

![Landing Page](https://preview.ibb.co/gOTa0y/LAMP_STACK.png)

~~This is a basic LAMP stack environment built using Docker Compose. It consists following:~~

* PHP
* Apache
# you will need to run MySQL on your local machine

Adapted from a LAMP stack, Apache and PHP7.2 only

how to get your localhost IP for the docker install

# RUN ifconfig en0 | awk '/inet/ {print $2}'

you will need to add your IP to the allowed IP ranges for your MySQL install

# CREATE USER 'root'@'192.%' IDENTIFIED BY 'root';
# GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.%';

To start container clone repo, cd into folder
# run docker-compose up -d
# once complete run docker ps
# to jump into container run docker exec -it <container_name> /bin/bash
# clone OLC into www on your machine, create host jump onto container create host and apache conf

runs in port 84, eg localhost:84
can be changed in the docker compose file to run on whichever port you are interested in, the docker apache port is set to 80, so you can map any port you want to the docker instance

