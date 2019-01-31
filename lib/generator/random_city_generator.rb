require_relative '../jsonParsing'

class CityGenerator

  def initialize
    @json_data = ParseJson.new.parsing_data('city_list.json')
  end

  def get_random_city
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

  def get_random_city_and_country
    @array = get_random_city
    @random_number = rand(0..209579)
    @cityname = []
    @countryname = ''
    @json_data.each do |city|
      if city['id'] == @array[@random_number]
        @cityname << city['name']
        @cityname << city['country']
      end
    end
 p @cityname
  end
end
