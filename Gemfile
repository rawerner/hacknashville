ruby '2.1.1'
source 'https://rubygems.org'

gem 'rails', '4.1.0'
gem 'pg'
gem 'sass'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'twitter-bootstrap-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'devise'

group :development do
end

group :production do
  gem 'rails_12factor'
end

group :test, :development do
  gem 'pry'
  gem 'spork-rails', github: 'sporkrb/spork-rails' # rubygems version not rails 4 compatible
end

group :test do
  gem 'coveralls'
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl'
  gem 'rspec-rails'
  gem 'database_cleaner'
end
