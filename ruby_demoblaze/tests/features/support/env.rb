require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rubygems'
require 'webdrivers'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(Pages)

ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + 
"/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_home']
    config.default_max_wait_time = 15
    
end

