require 'httparty'
require 'json'

class FiveDayForecast

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5'

  def five_day_forecast(cityid, api_key)
    @five_day_forecast = JSON.parse(self.class.get("/forecast?id=#{cityid}&APPID=#{api_key}").body)
  end

  def retrive_list
    @five_day_forecast['list']
  end

  def retrive_all_temp
    temp_array = []
    retrive_list.each do |data|
      temp_array << data['main']['temp']
    end
    temp_array
  end

  def retrive_all_min_temp
    min_temp_array = []
    retrive_list.each do |data|
      min_temp_array << data['main']['temp_min']
    end
    min_temp_array
  end

  def retrive_all_max_temp
    max_temp_array = []
    retrive_list.each do |data|
      max_temp_array << data['main']['temp_max']
    end
    max_temp_array
  end

  def retrive_all_pressure
    pressure_array = []
    retrive_list.each do |data|
      pressure_array << data['main']['pressure']
    end
    pressure_array
  end

  def retrive_all_sea_level
    sea_level_array = []
    retrive_list.each do |data|
      sea_level_array << data['main']['sea_level']
    end
    sea_level_array
  end

  def retrive_ground_level
    ground_level_array = []
    retrive_list.each do |data|
      ground_level_array << data['main']['grnd_level']
    end
    ground_level_array
  end

  def retrive_humidity
    humidity_array = []
    retrive_list.each do |data|
      humidity_array << data['main']['humidity']
    end
    humidity_array
  end

  def retrive_temp_kf
    temp_kf_array = []
    retrive_list.each do |data|
      temp_kf_array << data['main']['humidity']
    end
    temp_kf_array
  end

  def retrive_weather_id
    weather_id_array = []
    retrive_list.each do |data|
      weather_id_array << data['weather'][0]['id']
    end
    weather_id_array
  end

  def retrive_weather_main
    weatehr_main_array = []
    retrive_list.each do |data|
      weatehr_main_array << data['weather'][0]['main']
    end
    weatehr_main_array
  end

  def retrive_weather_description
    weather_description = []
    retrive_list.each do |data|
      weather_description << data['weather'][0]['description']
    end
    weather_description
  end

  def retrive_weather_icon
    weather_icon_array = []
    retrive_list.each do |data|
      weather_icon_array << data['weather'][0]['icon']
    end
    weather_icon_array
  end

  def retrive_clouds_data
    cloud_data_array = []
    retrive_list.each do |data|
      cloud_data_array << data['clouds']['all']
    end
    cloud_data_array
  end

  def retrive_wind_speed
    wind_speed_array = []
    retrive_list.each do |data|
      wind_speed_array << data['wind']['speed']
    end
    wind_speed_array
  end

  def retrive_wind_deg
    wind_speed_deg = []
    retrive_list.each do |data|
      wind_speed_deg << data['wind']['deg']
    end
    wind_speed_deg
  end

  def retrive_dt_text
    dt_text = []
    retrive_list.each do |data|
      dt_text << data['dt_text']
    end
    dt_text
  end

end
