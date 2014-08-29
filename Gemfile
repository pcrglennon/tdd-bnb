source 'https://rubygems.org'

gem 'rails', '4.1.4'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.7'
gem 'unicorn'

group :test do
  gem 'sqlite3'
end

group :development, :production do
  gem 'pg'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'guard-rspec', require: false
  gem 'spring-commands-rspec'
  gem 'pry'
end
