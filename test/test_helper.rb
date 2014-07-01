gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
Dir["./lib/*.rb"].each { |file| require "#{file}" }
