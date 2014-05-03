#!/usr/bin/env sh

if ! which heroku
    then echo "To deploy you'll need to install and setup the heroku toolchain.";
    else git pull; git push heroku master; heroku run rake db:migrate; heroku restart;
fi
