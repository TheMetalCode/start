source 'https://rubygems.org'
# Also using rubygems-bundler outside of Gemfile control to obviate 'bundle exec'

gem 'coffee-rails', '~> 4.0.0'            # Use CoffeeScript for .js.coffee assets and views
gem 'haml-rails' 
gem 'jquery-rails'                        # Use jquery as the JavaScript library
gem 'mysql2'                              # Use sqlite3 as the database for Active Record
gem 'rails', '4.0.3'                      # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '~> 4.0.0'              # Use SCSS for stylesheets
#gem 'uglifier', '>= 1.3.0'                # Use Uglifier as compressor for JavaScript assets
gem 'ember-appkit-rails'

group :test, :development do
  gem 'capybara'                          # Capybara tests web applications by simulating how a real user interacts with the app
  gem 'cucumber-rails', require: false    # As a user, with some gerhkins, I want pickles.
  gem 'devise'                            # Flexible authentication solution for Rails based on Warden
  gem 'guard-rails'                       # Guard to run tests in a terminal everytime the file changes. ABT, Always Be Testing!
  gem 'guard-rspec', require: false       # Run RSpec under Guard
  gem 'guard-teaspoon'                    # Run Teaspoon under Guard
  gem 'jasmine'                           # Jasmine for JS testing
  gem 'rb-fsevent'                        # OS X File Service events, used by Guard.
  gem 'therubyracer'                      # Javascript Engine
  gem 'rspec-rails'                       # Rspec for Ruby testing
  gem 'teaspoon'                          # Teaspoon for running Jasmine tests

end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
