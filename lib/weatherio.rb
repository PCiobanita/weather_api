require_relative 'services/current_weather'
require_relative 'services/fiveday_forecast'

class Weatherio

  def current_weather
    CurrentWeather.new
  end

  def five_day_forecast
    FiveDayForecast.new
  end

end