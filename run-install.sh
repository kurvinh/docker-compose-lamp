#!/bin/bash
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install openldap libiconv
brew update
brew install mariadb
brew services start mariadb
brew doctor
docker-compose up -d
docker exec  7.2.1-webserver-moodle bash /var/docker-scripts/mysql.sh #mysql init
