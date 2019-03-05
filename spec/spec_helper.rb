require 'json'
require_relative '../lib/generator/random_city_generator'
require_relative '../lib/weatherio'
require 'dotenv'

RSpec.configure do |config|
  config.formatter = :documentation
end
