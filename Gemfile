source 'https://rubygems.org'



gem 'rails', '4.1.0'
gem 'pg', '~> 0.17.1'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development



group :production do
  gem 'rails_12factor'
end

group :test, :development do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'fabrication'
  gem "factory_girl_rails", "~> 4.0"
  gem 'pry'
  gem 'rspec'
  gem 'rspec-rails'
end

group :test do
  gem 'coveralls'
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'launchy'
end