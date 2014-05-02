#!/usr/bin/env sh

####
# Installs packages listed on: https://gorails.com/deploy/ubuntu/12.04
# Along with postgres
####

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev libcurl4-openssl-dev python-software-properties
sudo apt-get install nodejs

./setup_ruby.sh
