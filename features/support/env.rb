require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  $: << File.dirname(__FILE__)+'/../../lib/page_objects'
  require 'cucumber/rails'
  require 'rspec/rails'
  require 'forgery'
  require 'factory_girl'
  require 'webmock/cucumber'
  require 'capybara'
  require 'capybara/rails'
  require 'capybara/cucumber'
  require 'capybara/poltergeist'
  require 'selenium-webdriver'
  require 'site_prism'

  #TODO define some page objects and include them given the below pattern
  # require 'page_objects/my_app'
  # #load every page and section
  # Dir["#{File.dirname(__FILE__)}/../../lib/page_objects/sections/subsections/*_section.rb"].each {|r| load r }
  # Dir["#{File.dirname(__FILE__)}/../../lib/page_objects/sections/*_section.rb"].each {|r| load r }
  # Dir["#{File.dirname(__FILE__)}/../../lib/page_objects/pages/*_page.rb"].each {|r| load r }

  WebMock.allow_net_connect!

  # I don't care about JS errors here, that's for the unit tests
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {js_errors: false})
  end
end

Spork.each_run do

  Capybara.run_server = true
  #TODO set this to whatever port this app uses locally
  #Capybara.server_port = 4001
  Capybara.javascript_driver = :poltergeist

  ActionController::Base.allow_rescue = false

  begin
    DatabaseCleaner.strategy = :transaction
  rescue NameError
    raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
  end

  Before do |scenario|

  end

  After do |scenario|
    DatabaseCleaner.clean
    Rails.application.load_seed
  end
end

module UITestHelpers
  #a polling method for testing web elements
  def eventually
    timeout = 3
    polling_interval = 0.25
    time_limit = Time.now + timeout
    loop do
      begin
        yield
      rescue Exception => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit
      sleep polling_interval
    end
  end
end
