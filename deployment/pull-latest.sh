#!/usr/bin/env sh

####
# Automates the process of pulling the latest production branch.
#  ./pull-latest.sh server -- finishes by running a rails server in production mode (for testing)
#  ./pull-latest.sh deploy -- will go ahead and deploy the latest branch to Heroku
###

if [ `which rbenv` ]; then
    RUBY_DIR=~/.rbenv/versions/2.1.1/bin/
    git pull
    $RUBY_DIR/bundle install
    $RUBY_DIR/rake db:migrate
    if [ "$1" = "deploy" ];
        then ./deploy-to-heroku.sh
    fi
    if [ "$1" = "server" ];
        then $RUBY_DIR/rails server -e production;
    fi
else
    echo "This script requires rbenv.";
fi
