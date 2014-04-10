source 'https://rubygems.org'
ruby '2.1.1' #For heroku purposes
# Also using rubygems-bundler outside of Gemfile control to obviate 'bundle exec'

gem 'coffee-rails'                        # Use CoffeeScript for .js.coffee assets and views
gem 'devise'                              # Flexible authentication solution for Rails based on Warden
gem 'haml-rails'                          # Markup haiku
gem 'jbuilder'                            # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails'                        # Use jquery as the JavaScript library
gem 'mysql2'                              # Use MySql as the database for Active Record
gem 'rails', '~> 4.1'                     # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rename'                              # This will let you rename the app to what you actually want it to be
gem 'sass-rails'                          # Use SCSS for stylesheets
gem 'turbolinks'                          # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'therubyracer'                        # Javascript Engine
gem 'unicorn-rails'                       # Use unicorn as web server
gem 'uglifier', '>= 1.3.0'                # Use Uglifier as compressor for JavaScript assets


group :test, :development do
  gem 'capybara'                          # Capybara tests web applications by simulating how a real user interacts with the app
  gem 'cucumber-rails', require: false    # As a user, with some gerhkins, I want pickles.
  gem 'database_cleaner'                  # keep the data clean between test runs in cucumber/capybara
  gem 'factory_girl_rails'                # factories > fixtures, usually
  gem 'forgery'                           # Easy to make fake test data this way
  gem 'guard-livereload'                  # reload browser for view changes when guard is running
  gem 'guard-rails'                       # Guard to run tests in a terminal everytime the file changes. ABT, Always Be Testing!
  gem 'guard-rspec', require: false       # Run RSpec under Guard
  gem 'guard-spork'
  gem 'guard-teaspoon'                    # Run Teaspoon under Guard
  gem 'jasmine'                           # Jasmine for JS testing
  gem 'mocha', require: false             # Better stubs and mocks than RSpec
  gem 'poltergeist'                       # Headless browser driver for capybara tests
  gem 'pry'                               # debugging awesomeness
  gem 'pry-nav'                           # Ruby debugger style navigation for pry
  gem 'rb-fsevent'                        # OS X File Service events, used by Guard.
  gem 'rspec-rails'                       # Rspec for Ruby testing
  gem 'selenium-webdriver'                # allows for non-headless browser automation
  gem 'simplecov', require: false         # Measure code coverage
  gem 'site_prism'                        # Page object pattern for capybara tests
  gem 'teaspoon', git: 'https://github.com/modeset/teaspoon.git' # Teaspoon for running Jasmine tests
  gem 'vcr'                               # Record live stubs of web requests
  gem 'webmock'                           # Block all live web requests in tests, plus used by VCR
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
