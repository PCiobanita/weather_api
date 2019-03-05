require_relative 'spec_helper'
Dotenv.load('.env')
describe Weatherio do 

  before(:all) do 
    @api_key = ENV['API_KEY']
    @city = CityGenerator.new
    @cityid =  @city.get_specific_city('Novinki', 'RU')
    @five_day_forecast = Weatherio.new.five_day_forecast
    @five_day_forecast.five_day_forecast(@cityid,@api_key)
  end

  it 'should retrieve all temperatures' do 
    @five_day_forecast.retrieve_all_temp do |temp|
      expect(temp).to be_kind_of(Float)
    end
  end

  it 'should retrieve all min temperatures' do 
    @five_day_forecast.retrieve_all_min_temp do |min_temp|
      expect(min_temp).to be_kind_of(Float)
    end
  end

  it 'should retrieve all max temperatures' do 
    @five_day_forecast.retrieve_all_max_temp do |max_temp|
      expect(max_temp).to be_kind_of(Float)
    end
  end

  it 'should retrieve all presures' do 
    @five_day_forecast.retrieve_all_pressure do |pressure|
      expect(pressure).to be_kind_of(Float) | be_kind_of(Integer)
    end
  end

  it 'should retrieve all sea levels' do 
    @five_day_forecast.retrieve_all_sea_level do |sea_level|
      expect(sea_level).to be_kind_of(Float)
    end
  end

  it 'should retrieve all ground levels' do 
    @five_day_forecast.retrieve_ground_level do |ground_level|
      expect(ground_level).to be_kind_of(Float) | be_kind_of(Integer)
    end
  end

  it 'should retrieve all humidity levels' do 
    @five_day_forecast.retrieve_humidity do |humidity|
      expect(humidity).to be_kind_of(Float)
    end
  end

  it 'should retrieve all temp kf' do 
    @five_day_forecast.retrieve_temp_kf do |temp_kf|
      expect(temp_kf).to be_kind_of(Float)
    end
  end

  it 'should retrieve all weather id' do 
    @five_day_forecast.retrieve_weather_id do |weatehr_id|
      expect(weatehr_id).to be_kind_of(Float)
    end
  end

  it 'should retrieve all weather main' do 
    @five_day_forecast.retrieve_weather_main do |weather_main|
      expect(weather_main).to be_kind_of(Float)
    end
  end

  it 'should retrieve all weather description' do 
    @five_day_forecast.retrieve_weather_main do |weather_description|
      expect(weather_description).to be_kind_of(Float)
    end
  end

  it 'should retrieve all weather icon' do 
    @five_day_forecast.retrieve_weather_icon do |weather_icon|
      expect(weather_icon).to be_kind_of(String)
    end
  end

  it 'should retrieve all cloud data' do 
    @five_day_forecast.retrieve_clouds_data do |cloud_data|
      expect(cloud_data).to be_kind_of(Integer)
    end
  end

  it 'should retrieve all wind_speed' do 
    @five_day_forecast.retrieve_wind_speed do |wind_speed|
      expect(wind_speed).to be_kind_of(Integer)
    end
  end

  it 'should retrieve all wind_deg' do 
    @five_day_forecast.retrieve_wind_speed do |wind_deg|
      expect(wind_deg).to be_kind_of(Float)
    end
  end

  it 'should retrieve all dt_text' do 
    @five_day_forecast.retrieve_wind_speed do |dt_text|
      expect(dt_text).to be_kind_of(String)
    end
  end

end