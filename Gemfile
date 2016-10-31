source 'https://rubygems.org/'
ruby '2.3.1'

gem 'rails', '5.0.0.1'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~>3.3.5'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'rubocop'
gem 'devise'
gem 'font-awesome-sass'
gem 'listen'
gem 'refile', git: 'https://github.com/refile/refile', require: 'refile/rails'
gem 'refile-mini_magick', git: 'https://github.com/refile/refile-mini_magick'
gem 'refile-s3'
gem 'sinatra', git: 'https://github.com/sinatra/sinatra', branch: 'master'
gem 'puma'
gem 'dotenv'
gem 'wavesurfer-rails'
gem 'rack-cors'
group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.0'
  gem 'pry-rails'
  gem 'shoulda'
  gem 'valid_attribute'
end

group :development do
  gem 'web-console'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'coveralls', require: false
  gem 'launchy', require: false
  gem 'database_cleaner'
end

group :production do
  gem 'rails_12factor'
end
