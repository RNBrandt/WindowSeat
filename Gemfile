source 'https://rubygems.org'
ruby "2.3.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'figaro'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'momentjs-rails'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use stripe for payment processing
gem 'stripe'

# Use Twilio
gem 'twilio-ruby'

# Use sidekiq for running background jobs
gem 'sidekiq'

# Need daemons to start delayed_job
gem 'daemons'

# Use workless to use less workers on heroku
gem "workless", "~> 1.2.2"

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
# Use Devise for authentication and authorization
gem 'devise'

gem 'omniauth'
# Use Capistrano for deployment
#gem 'capistrano-rails', group: :development

# Use capybara and selenium to access web content
gem 'capybara'

#gem 'selenium-webdriver', '~> 2.29.0'

gem 'mechanize', '~> 2.7', '>= 2.7.4'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem 'factory_girl_rails'

  #Use rspec for testing
  gem 'rspec-rails'

  #Use SQLite for dev and testing
  gem 'sqlite3'

  # Use database cleaner for maintaining test database
  gem 'database_cleaner'

  # Use launchy for debugging feature tests
  gem 'launchy'

  #Use shoulda matchers for easier rspec syntax
  gem 'shoulda-matchers', '~> 3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
