require 'httparty'
require 'json'

class FiveDayForecast

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5'

  def five_day_forecast(cityid, api_key)
    @five_day_forecast = JSON.parse(self.class.get("/forecast?id=#{cityid}&APPID=#{api_key}").body)
  end

  def retrieve_list
    @five_day_forecast['list']
  end

  def retrieve_all_temp
    temp_array = []
    retrieve_list.each do |data|
      temp_array << data['main']['temp']
    end
    temp_array
  end

  def retrieve_all_min_temp
    min_temp_array = []
    retrieve_list.each do |data|
      min_temp_array << data['main']['temp_min']
    end
    min_temp_array
  end

  def retrieve_all_max_temp
    max_temp_array = []
    retrieve_list.each do |data|
      max_temp_array << data['main']['temp_max']
    end
    max_temp_array
  end

  def retrieve_all_pressure
    pressure_array = []
    retrieve_list.each do |data|
      pressure_array << data['main']['pressure']
    end
    pressure_array
  end

  def retrieve_all_sea_level
    sea_level_array = []
    retrieve_list.each do |data|
      sea_level_array << data['main']['sea_level']
    end
    sea_level_array
  end

  def retrieve_ground_level
    ground_level_array = []
    retrieve_list.each do |data|
      ground_level_array << data['main']['grnd_level']
    end
    ground_level_array
  end

  def retrieve_humidity
    humidity_array = []
    retrieve_list.each do |data|
      humidity_array << data['main']['humidity']
    end
    humidity_array
  end

  def retrieve_temp_kf
    temp_kf_array = []
    retrieve_list.each do |data|
      temp_kf_array << data['main']['humidity']
    end
    temp_kf_array
  end

  def retrieve_weather_id
    weather_id_array = []
    retrieve_list.each do |data|
      weather_id_array << data['weather'][0]['id']
    end
    weather_id_array
  end

  def retrieve_weather_main
    weatehr_main_array = []
    retrieve_list.each do |data|
      weatehr_main_array << data['weather'][0]['main']
    end
    weatehr_main_array
  end

  def retrieve_weather_description
    weather_description = []
    retrieve_list.each do |data|
      weather_description << data['weather'][0]['description']
    end
    weather_description
  end

  def retrieve_weather_icon
    weather_icon_array = []
    retrieve_list.each do |data|
      weather_icon_array << data['weather'][0]['icon']
    end
    weather_icon_array
  end

  def retrieve_clouds_data
    cloud_data_array = []
    retrieve_list.each do |data|
      cloud_data_array << data['clouds']['all']
    end
    cloud_data_array
  end

  def retrieve_wind_speed
    wind_speed_array = []
    retrieve_list.each do |data|
      wind_speed_array << data['wind']['speed']
    end
    wind_speed_array
  end

  def retrieve_wind_deg
    wind_speed_deg = []
    retrieve_list.each do |data|
      wind_speed_deg << data['wind']['deg']
    end
    wind_speed_deg
  end

  def retrieve_dt_text
    dt_text = []
    retrieve_list.each do |data|
      dt_text << data['dt_text']
    end
    dt_text
  end

end

test = FiveDayForecast.new
p test.five_day_forecast('2643743', '2d602ef4929c9c1bebfbadc8b0065017')