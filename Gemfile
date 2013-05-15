source 'https://rubygems.org'

gem 'rails', '3.2.1'
# gem 'bootstrap-sass', '2.1'
gem "twitter-bootstrap-rails"
gem 'jquery-rails'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'therubyracer'
  gem 'less-rails'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end



group :test, :development do
	#gem 'turn'
	gem 'rspec-rails'
	gem 'capybara'
	gem 'guard'
  gem 'guard-spork'
  gem 'spork'
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

group :production do
  # gem 'sqlite3'
  gem 'pg'#, '0.12.2'
end

# group :test do
#   gem 'rb-inotify', :require => false
#   gem 'rb-fsevent', :require => false
#   gem 'rb-fchange', :require => false
# end


# gem 'wdm', '~> 0.1'