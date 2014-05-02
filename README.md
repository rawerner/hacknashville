HackNashville 5 eMentoring Application
==========


Overview
---------------------
A web application that connects Nashville's Women Technologists with young women in high school and college.

###Quick MVP Design Points:
- Mentee will register and create a profile
- Mentor will register and create profile
- Mentor has option to sign in with LinkedIn
- Mentees will be able to filter mentor list
- Mentees will initiate contact with Mentors by requesting a mentor
- Mentors can accept or decline a mentee request
- Mentors must give a reason for declining a request
- Mentors when accepting requests will need to assign an end date of the mentorship
- All communication will be driven by email (masking?) on our first iteration.

###The /doc file has resources for you

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
- [PostgreSQL - 0.17.1](http://www.postgresql.org/)

#### Testing
- [Cucumber](https://rubygems.org/gems/cucumber)
- [RSpec](https://rubygems.org/gems/rspec)

#### Source Control
- [Git](http://git-scm.com/)
- [GitHub](https://github.com/)

#### Deployment
- [Amazon Web Services](http://aws.amazon.com/)
- See deployment/README.md for additional info about provisioning & deployment

###Installing Ruby 2.1.1 & postgreSQL locally (Assumes you are using RVM & Homebrew)

- run `rvm list` to make sure ruby 2.1.1 is installed and in use.
- run `brew update` then `brew doctor`
- install postgresql `brew install postgresql`
- run `initdb /usr/local/var/postgres -E utf8`  to create a database
- install lunchy `gem install lunchy`
- run `lunchy start postgres`


###Directions to get started with project files

- fork this repository - https://github.com/rawerner/hacknashville
- clone your fork locally and make feature branches to work off of
- run `bundle update` then `bundle install`
- run `rails server`
- run `bin/rake db:create db:migrate`
- view localhost:3000 in your browser


###Working on a feature for the project?

1. update your remote repository from upstream [How to?](https://blogs.atlassian.com/2013/07/git-upstreams-forks/)
2. update your local code `git pull origin master`
2. Create a branch to work on named after your feature. `git checkout -b branchname`
2. code code code your little heart out


###Ready to merge your feature code into the main repo?

Commit and push your feature branch to your remote fork on github and create a pull request


###Running The Application

````bash
$ git clone <your fork>
$ bundle install
$ ruby app.rb
````


###Compiling The Assets
````bash
$ bundle exec guard
````

Guard will watch for any changes that you make to app/assets and publish them to public/assets


