require_relative 'spec_helper'
Dotenv.load('.env')
describe Weatherio do 

  before(:all) do 
    @api_key = ENV['API_KEY']
    @city = CityGenerator.new
    @city_data =  @city.get_random_city(rand(0..209579))
    @cityid = @city_data['id']
    @currentweather = Weatherio.new.current_weather
    @currentweather.retrieve_curent_weather(@cityid,@api_key)
  end

  it 'coordinates should give back a hash' do
    expect(@currentweather.retrieve_coord).to be_kind_of(Hash)
  end

  it 'should correctly retrieve lonngitute' do
    expect(@currentweather.retrieve_longitude).to be_kind_of(Float)
    expect(@currentweather.retrieve_longitude).to be_between(-180, 180)
  end

  it 'should correctly retrieve latitude' do
    expect(@currentweather.retrieve_latitude).to be_kind_of(Float)
    expect(@currentweather.retrieve_longitude).to be_between(-90, 90)
  end

  it 'should retrieve the weather internal parameter' do
    expect(@currentweather.retrieve_weather_id).to be_kind_of(Integer)
  end

  it 'should retrieve weather main parameter' do
    expect(@currentweather.retrieve_weather_main).to be_kind_of(String)
  end

  it 'should retrieve icon id' do
    expect(@currentweather.retrieve_wather_icon).to be_kind_of(String)
  end

  it 'should retrieve base' do
    expect(@currentweather.retrieve_base).to be_kind_of(String)
  end

  it 'should correctly retrieve temerature' do
    expect(@currentweather.retrieve_temp).to be_kind_of(Float)
  end

  it 'should correctly retrieve pressure' do
    expect(@currentweather.retrieve_pressure).to be_kind_of(Integer)
    expect(@currentweather.retrieve_longitude).to be_between(0, 1050)
  end

  it 'should correctly retrieve humidity' do
    expect(@currentweather.retrieve_humidity).to be_kind_of(Integer)
    expect(@currentweather.retrieve_longitude).to be_between(-180, 180)

  end

  it 'should correctly retrieve minimum temperature' do
    expect(@currentweather.retrieve_minimum_temp).to be_kind_of(Float)
  end

  it 'should correctly retrieve maximum temperature' do
    expect(@currentweather.retrieve_maximum_temp).to be_kind_of(Float)
  end

  it 'should correctly retrieve visibility' do
    expect(@currentweather.retrieve_visibility).to be_kind_of(Integer)
  end

  it 'should correctly retrieve wind speed' do
    expect(@currentweather.retrieve_wind_speed).to be_kind_of(Float) | be_kind_of(Integer)
  end

  it 'should correctly retrieve wind degree' do
    expect(@currentweather.retrieve_wind_degree).to be_kind_of(Integer) | be_kind_of(Float)
  end

  it 'should correctly retrieve cloudiness' do
    expect(@currentweather.retrieve_cloudiness).to be_kind_of(Integer)
  end

  it 'should correctly retrieve time of datacalculation' do
    expect(@currentweather.retrieve_time_of_datacalculation).to be_kind_of(Integer)
  end

  it 'should correctly retrieve sys type' do
    expect(@currentweather.retrieve_sys_type).to be_kind_of(Integer)
  end

  it 'should correctly retrieve sys id' do
    expect(@currentweather.retrieve_sys_id).to be_kind_of(Integer)
  end

  it 'should correctly retrieve sys messege' do
    expect(@currentweather.retrieve_sys_message).to be_kind_of(Float)
  end

  it 'should correctly retrieve sys country' do
    expect(@currentweather.retrieve_sys_country).to be_kind_of(String)
  end

  it 'should correctly retrieve sys sunrise' do
    expect(@currentweather.retrieve_sys_sunrise).to be_kind_of(Integer)
  end

  it 'should correctly retrieve_id' do
    expect(@currentweather.retrieve_id).to be_kind_of(Integer)
  end

  it 'should correctly retrieve name' do
    expect(@currentweather.retrieve_name).to be_kind_of(String)
    expect(@currentweather.retrieve_name).to eq @city_data['name']
  end

  it 'should correctly retrieve cod' do
    expect(@currentweather.retrieve_cod).to be_kind_of(Integer)
  end

end