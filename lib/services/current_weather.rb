require 'httparty'
require 'json'

class CurrentWeather
  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5'

  def retrive_curent_weather(cityid, api_key)
    @curent_weather = JSON.parse(self.class.get("/weather?id=#{cityid}&APPID=#{api_key}").body)
  end

  def retrive_coord
    @curent_weather['coord']
  end

  def retrive_longitude
    retrive_coord['lon']
  end
  
  def retrive_latitude
    retrive_coord['lat']
  end

  def retrive_weather
    @curent_weather['weather'][0]
  end

  def retrive_weather_id
    retrive_weather['id']
  end
  
  def retrive_weather_main
    retrive_weather['main']
  end

  def retrive_weather_description
    retrive_weather['description']
  end

  def retrive_wather_icon
    retrive_weather['icon']
  end

  def retrive_base
    @curent_weather['base']
  end

  def retrive_main_information
    @curent_weather['main']
  end

  def retrive_temp
    retrive_main_information['temp']
  end

  def retrive_pressure
    retrive_main_information['pressure']
  end

  def retrive_humidity
    retrive_main_information['humidity']
  end

  def retrive_minimum_temp
    retrive_main_information['temp_min']
  end

  def retrive_maximum_temp
    retrive_main_information['temp_max']
  end

  def retrive_visibility
    @curent_weather['visibility']
  end

  def retrive_wind
    @curent_weather['wind']
  end

  def retrive_wind_speed
    retrive_wind['speed']
  end

  def retrive_wind_degree
    retrive_wind['deg']
  end

  def retrive_cloudiness
    @curent_weather['clouds']['all']
  end

  def retrive_time_of_datacalculation
    @curent_weather['dt']
  end

  def retrive_sys
    @curent_weather['sys']
  end

  def retrive_sys_type
    retrive_sys['type']
  end

  def retrive_sys_id
    retrive_sys['id']
  end

  def retrive_sys_message
    retrive_sys['message']
  end

  def retrive_sys_country
    retrive_sys['country']
  end

  def retrive_sys_sunrise
    retrive_sys['sunrise']
  end

  def retrive_sys_sunset
    retrive_sys['sunset']
  end

  def retrive_id
    @curent_weather['id']
  end

  def retrive_name
    @curent_weather['name']
  end

  def retrive_cod
    @curent_weather['cod']
  end


end
