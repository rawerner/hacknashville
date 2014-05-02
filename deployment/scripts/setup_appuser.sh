#!/usr/bin/env sh

####
# Create a user just for our app
####

sudo adduser $RDS_USERNAME
sudo adduser $RDS_USERNAME sudo
su $RDS_USERNAME
