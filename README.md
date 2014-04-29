HackNashville 5 eMentoring Application
==========


Overview
---------------------
A web application that connects Nashville's Women Technologists with young women in high school and college.


Technology Stack
---------------------

#### Front End
- [HTML - 5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5)
- [Sass - 3.3.6](https://rubygems.org/gems/sass) (not SCSS)
- [Compass - 0.12.6](http://compass-style.org/)
- [JavaScript - 1.8.5](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
- [jQuery - 1.11.0](http://jquery.com/)

#### Back End
- [Ruby - 2.1.1](https://www.ruby-lang.org/)
- [Rails - 4.1.0](http://rubyonrails.org/)

#### Database
- [PostgreSQL - 0.17.1](http://www.postgresql.org/) run

#### Source Control
- [Git](http://git-scm.com/)
- [GitHub](https://github.com/)

#### Deployment
- [Amazon Web Services](http://aws.amazon.com/)
- [Heroku](https://www.heroku.com/)


Installing postgresql locally for testing
---------------------
- run `rvm list` to make sure ruby 2.1.1 is installed and in use.
- run `brew update` then `brew doctor`
- install postgresql `brew install postgresql`
- run `initdb /usr/local/var/postgres -E utf8`  to create a database
- install lunchy `gem install lunchy`
- run `lunchy start postgres`

Directions to get started with project files
---------------------
- Clone this repository - git@github.com:rawerner/hacknashville.git
- run `bundle update` then `bundle install`
- run `rails server`
- run `bin/rake db:create db:migrate`
- view localhost:3000 in browser
- To start coding a feature make your own branch for every feature - git checkout -b branchname
- When ready to merge feature code then push branch to github and create a pull request - https://github.com/rawerner/hacknashville/pulls


Running The Application
---------------------
````bash
$ git clone <your fork>
$ bundle install
$ ruby app.rb
````


Compiling The Assets
---------------------
````bash
$ bundle exec guard
````

Guard will watch for any changes that you make to app/assets and publish them to public/assets


