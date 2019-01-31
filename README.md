# weather_api

### Description
This application calls from the openweathermap API using two of the services. The current weather for the city of your choice and the 5 day forecaset for the city you choose. I have run unit tests to check that all the data that is being returned is correct.

### Languages used
* Ruby

### Testing frameworks
* RSpec

### How to download
1. https://github.com/PCiobanita/random_generator
2. Follow the link, select DEV brach and clone the project.

## How to use the project
*  In terminal change directory to weatherApiTesting directory folder
*  In terminal run ```bundle install``` to install the gems dependencies from gemfile

## How to run unit test
*  Type rspec in terminal to run the unit tests

### How to use
1. go to your terminal and whilst in the directory of the application type "bundle install" to install all gem dependencies
2. next you need to create an .env file in which you need to create a viariable with your api key(you can get one be registering at https://openweathermap.org/api)
```ruby 
API_KEY= add your key here
```

4. To change city in fiveday_forecast_spec.rb ```@cityid =  @city.get_specific_city('Novinki', 'RU')``` change cityname and country code with desirible ones



