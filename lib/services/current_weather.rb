require 'httparty'
require 'json'

class CurrentWeather
  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5'

  def retrieve_curent_weather(cityid, api_key)
    @curent_weather = JSON.parse(self.class.get("/weather?id=#{cityid}&APPID=#{api_key}").body)
  end

  def retrieve_coord
    @curent_weather['coord']
  end

  def retrieve_longitude
    retrieve_coord['lon']
  end
  
  def retrieve_latitude
    retrieve_coord['lat']
  end

  def retrieve_weather
    @curent_weather['weather'][0]
  end

  def retrieve_weather_id
    retrieve_weather['id']
  end
  
  def retrieve_weather_main
    retrieve_weather['main']
  end

  def retrieve_weather_description
    retrieve_weather['description']
  end

  def retrieve_wather_icon
    retrieve_weather['icon']
  end

  def retrieve_base
    @curent_weather['base']
  end

  def retrieve_main_information
    @curent_weather['main']
  end

  def retrieve_temp
    retrieve_main_information['temp']
  end

  def retrieve_pressure
    retrieve_main_information['pressure']
  end

  def retrieve_humidity
    retrieve_main_information['humidity']
  end

  def retrieve_minimum_temp
    retrieve_main_information['temp_min']
  end

  def retrieve_maximum_temp
    retrieve_main_information['temp_max']
  end

  def retrieve_visibility
    @curent_weather['visibility']
  end

  def retrieve_wind
    @curent_weather['wind']
  end

  def retrieve_wind_speed
    retrieve_wind['speed']
  end

  def retrieve_wind_degree
    retrieve_wind['deg']
  end

  def retrieve_cloudiness
    @curent_weather['clouds']['all']
  end

  def retrieve_time_of_datacalculation
    @curent_weather['dt']
  end

  def retrieve_sys
    @curent_weather['sys']
  end

  def retrieve_sys_type
    retrieve_sys['type']
  end

  def retrieve_sys_id
    retrieve_sys['id']
  end

  def retrieve_sys_message
    retrieve_sys['message']
  end

  def retrieve_sys_country
    retrieve_sys['country']
  end

  def retrieve_sys_sunrise
    retrieve_sys['sunrise']
  end

  def retrieve_sys_sunset
    retrieve_sys['sunset']
  end

  def retrieve_id
    @curent_weather['id']
  end

  def retrieve_name
    @curent_weather['name']
  end

  def retrieve_cod
    @curent_weather['cod']
  end


end
test = CurrentWeather.new
test.retrieve_curent_weather('2643743', '2d602ef4929c9c1bebfbadc8b0065017')
p test.retrieve_temp