#!/bin/bash
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install openldap libiconv
brew update
brew install mariadb
brew services start mariadb
brew doctor
