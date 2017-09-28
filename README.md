# README

![Exchange App](https://github.com/tamsantos/exchange-challenge/blob/master/app/assets/images/screen.png?raw=true)


## About

This application was develop for practice how to connect API using Ruby on Rails.
With this application you can convert and compare currencies.

[See it in Heroku](https://exchange-onebitcode-challenge.herokuapp.com/)

### How does it work?

You can select a currency from a list of otpions and type the amount you whant to convert and the application does the convertion. The results are from the [fixer.io API](http://fixer.io/)

## First Setup

You can download or clone this repository and run the following commands:
 
 ```sh
 1. docker-compose build
 2. docker-compose run --rm website bundle install
 3. docker-compose run --rm website bundle exec rails db:create
 4. docker-compose run --rm website bundle exec rails db:migrate
 5. docker-compose up
 ```


## TODO

* Improve the home_specs.rb test
