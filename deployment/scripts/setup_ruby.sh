#!/usr/bin/env sh

#####
# Ubuntu 14.04 does not have ruby 2.1.1 by default so we need to set it up manually.
####

curl -L https://get.rvm.io | bash -s stable
. ~/.rvm/scripts/rvm
rvm install 2.1.1
rvm use 2.1.1 --default
ruby -v

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
