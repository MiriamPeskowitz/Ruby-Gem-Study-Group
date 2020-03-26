# this file behaves like an environment file, 
# could be environment.rb or could use require_all gem 

require 'open-uri'
require 'nokogiri'
require 'pry'

require "covid/version"
require "menu"
require "country"
require "scraper"

module Covid
  class Error < StandardError; end
  # Your code goes here...
end
