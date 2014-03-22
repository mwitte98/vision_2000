source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.4'
gem 'bootstrap-sass', '3.1.1.0'
gem 'bcrypt-ruby', '3.1.5'
gem 'faker', '1.3.0'
gem 'will_paginate', '3.0.5'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'sprockets_better_errors', '~> 0.0.4'
gem 'sprockets', '<= 2.11.0'

group :development, :test do
  gem 'sqlite3', '1.3.9'
  gem 'rspec-rails', '2.14.1'
  # The following optional lines are part of the advanced setup.
  gem 'guard-rspec', '4.2.8'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', :git => 'git://github.com/guard/guard-spork.git'
  gem 'childprocess', '0.5.1'
end

group :test do
  gem 'selenium-webdriver', '2.40.0'
  gem 'capybara', '2.2.1'
  gem 'factory_girl_rails', '4.4.1'
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'rb-notifu', '0.0.4'
  # gem 'win32console', '1.3.2'
  gem 'wdm', '0.1.0'
end

gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '2.5.0'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.1.0'
gem 'turbolinks', '2.2.1'
gem 'jbuilder', '2.0.4'

group :doc do
  gem 'sdoc', '0.4.0', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end