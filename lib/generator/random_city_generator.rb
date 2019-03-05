require_relative '../jsonParsing'

class CityGenerator

  def initialize
    @json_data = ParseJson.new.parsing_data('city_list.json')
  end

  def create_array
    cityid_array = []
    @json_data.each do |city|
      cityid_array << city['id']
    end
    cityid_array
  end

  def get_specific_city(cityname, country)
    cityid = 0
    @json_data.each do |city|
      if city['name'] == cityname && city['country'] == country
        cityid = city['id']
      end
    end
    cityid
  end

  def get_random_city(city_number)
    @json_data[city_number]
  end
end
