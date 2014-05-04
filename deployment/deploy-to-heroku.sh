#!/usr/bin/env sh

if ! which heroku
    then echo "To deploy you'll need to install and setup the heroku toolchain.";
    else cd ..; git pull; git push heroku master; heroku run rake db:migrate; heroku run rake assets:precompile; heroku restart;
fi
