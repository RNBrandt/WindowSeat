# Window Seat ✈️ [![Build Status](https://travis-ci.org/RNBrandt/WindowSeat.svg?branch=master)](https://travis-ci.org/RNBrandt/WindowSeat)
Live app: [window-seat.club](https://window-seat.club) 

## Introduction 
Window Seat is an app for the savvy traveler.

1. Add your flight number, confirmation number, and boarding time for an upcoming Southwest flight.
2. We check you in exactly 24 hours before boarding
3. Snag that window seat, relax, and enjoy the view 😎

## Stack
- Ruby on Rails 5
- PostgreSQL
- Redis
- Bootstrap 3
- SASS
- Sidekiq

## Testing
- RSpec
- Capybara
- FactoryGirl

## Running the App
- `bundle install`
- Open a new tab 
- Start Redis: `redis-server`
- Open a new tab
- Create databases: `bin/rails db:create`
- Run migrations: `bin/rails db:migrate`
- Start rails server: `bin/rails server`
- Open [http://localhost:3000/](http://localhost:3000/)

❗️ NOTE: If you would like to take advantage of Window Seat's scheduled check-in feature, you'll need to keep a server continuously running. Don't want to deal with deployment headaches? Use our service and sign up for an account at [window-seat.club](https://window-seat.club) instead. 

## Contributors
- [Reuben Brandt](https://github.com/RNBrandt)
- [Camille Villa](https://github.com/camillevilla)