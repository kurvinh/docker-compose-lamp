#!/bin/bash
#xcode-select --install
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew install openldap libiconv
#brew update
#brew install mariadb
#brew services start mariadb
#brew install git
#brew doctor
docker-compose up -d
cd www/ && git clone -b MOODLE_35_STABLE https://github.com/moodle/moodle.git base-moodle && cd ../ #use HTTPS for base install
