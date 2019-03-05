require 'json'

class ParseJson
  
  attr_accessor :json_data

  def parsing_data(json)
    JSON.parse(File.read(json))
  end


end
