#!/bin/bash
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install openldap libiconv
brew update
#brew install mariadb
brew install git
brew services start mariadb
brew doctor
docker-compose up -d
docker exec  7.2.1-webserver-moodle bash /var/docker-scripts/mysql.sh #mysql init
cd www/ && git clone -b MOODLE_35_STABLE git@github.com:moodle/moodle.git base-moodle && cd ../
