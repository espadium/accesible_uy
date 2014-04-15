source 'https://rubygems.org'
ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
group :development do
	gem 'sqlite3'
	gem 'debugger', '~> 1.6.6'
end

group :production do
  gem 'pg', '0.17.1'
  gem 'rails_12factor' # For compiling assets under Heroku
end

# Code analysis tools
gem 'rubocop', '>= 0.20.1'
gem 'rails_best_practices'
gem 'reek'
gem 'psych', '>= 2.0.5'

gem 'rails_admin'

gem 'haml-rails'
gem 'sass-rails', '~> 4.0.1'
gem 'compass-rails', '~> 1.1.2'

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'factory_girl'
end

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem "devise"
gem 'kaminari'
gem 'friendly_id', '~> 5.0.0'
