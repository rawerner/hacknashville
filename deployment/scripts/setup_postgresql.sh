#!/usr/bin/env sh

####
# Installs postgres and creates a role/db for the current user
####

sudo apt-get install postgresql postgresql-server-dev-all

echo "CREATE USER $RDS_USERNAME WITH PASSWORD '$RDS_PASSWORD'; CREATE DATABASE $RDS_USERNAME;" | sudo -u postgres psql
echo "ALTER USER $RDS_USERNAME CREATEDB;" | sudo -u postgres psql

../../bin/rake db:create db:migrate
