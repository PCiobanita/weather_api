require_relative 'spec_helper'
Dotenv.load('.env')
describe Weatherio do 

  before(:all) do 
    @api_key = ENV['API_KEY']
    @city = CityGenerator.new
    @cityid =  @city.get_random_city[rand(0..209579)]
    @currentweather = Weatherio.new.current_weather
    @currentweather.retrive_curent_weather(@cityid,@api_key)
  end

  it 'coordinates should give back a hash' do
    expect(@currentweather.retrive_coord).to be_kind_of(Hash)
  end

  it 'should correctly retrive lonngitute' do
    expect(@currentweather.retrive_longitude).to be_kind_of(Float)
    expect(@currentweather.retrive_longitude).to be_between(-180, 180)
  end

  it 'should correctly retrive latitude' do
    expect(@currentweather.retrive_latitude).to be_kind_of(Float)
    expect(@currentweather.retrive_longitude).to be_between(-90, 90)
  end

  it 'should retrive the weather internal parameter' do
    expect(@currentweather.retrive_weather_id).to be_kind_of(Integer)
  end

  it 'should retrive weather main parameter' do
    expect(@currentweather.retrive_weather_main).to be_kind_of(String)
  end

  it 'should retrive icon id' do
    expect(@currentweather.retrive_wather_icon).to be_kind_of(String)
  end

  it 'should retrive base' do
    expect(@currentweather.retrive_base).to be_kind_of(String)
  end

  it 'should correctly retrive temerature' do
    expect(@currentweather.retrive_temp).to be_kind_of(Float)
  end

  it 'should correctly retrive pressure' do
    expect(@currentweather.retrive_pressure).to be_kind_of(Integer)
    expect(@currentweather.retrive_longitude).to be_between(0, 1050)
  end

  it 'should correctly retrive humidity' do
    expect(@currentweather.retrive_humidity).to be_kind_of(Integer)
    expect(@currentweather.retrive_longitude).to be_between(-180, 180)

  end

  it 'should correctly retrive minimum temperature' do
    expect(@currentweather.retrive_minimum_temp).to be_kind_of(Float)
  end

  it 'should correctly retrive maximum temperature' do
    expect(@currentweather.retrive_maximum_temp).to be_kind_of(Float)
  end

  it 'should correctly retrive visibility' do
    expect(@currentweather.retrive_visibility).to be_kind_of(Integer)
  end

  it 'should correctly retrive wind speed' do
    expect(@currentweather.retrive_wind_speed).to be_kind_of(Float) | be_kind_of(Integer)
  end

  it 'should correctly retrive wind degree' do
    expect(@currentweather.retrive_wind_degree).to be_kind_of(Integer) | be_kind_of(Float)
  end

  it 'should correctly retrive cloudiness' do
    expect(@currentweather.retrive_cloudiness).to be_kind_of(Integer)
  end

  it 'should correctly retrive time of datacalculation' do
    expect(@currentweather.retrive_time_of_datacalculation).to be_kind_of(Integer)
  end

  it 'should correctly retrive sys type' do
    expect(@currentweather.retrive_sys_type).to be_kind_of(Integer)
  end

  it 'should correctly retrive sys id' do
    expect(@currentweather.retrive_sys_id).to be_kind_of(Integer)
  end

  it 'should correctly retrive sys messege' do
    expect(@currentweather.retrive_sys_message).to be_kind_of(Float)
  end

  it 'should correctly retrive sys country' do
    expect(@currentweather.retrive_sys_country).to be_kind_of(String)
  end

  it 'should correctly retrive sys sunrise' do
    expect(@currentweather.retrive_sys_sunrise).to be_kind_of(Integer)
  end

  it 'should correctly retrive_id' do
    expect(@currentweather.retrive_id).to be_kind_of(Integer)
  end

  it 'should correctly retrive name' do
    expect(@currentweather.retrive_name).to be_kind_of(String)
  end

  it 'should correctly retrive cod' do
    expect(@currentweather.retrive_cod).to be_kind_of(Integer)
  end

end