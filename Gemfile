source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'kaminari'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Formatting mini-framework. Hirb.enable in console
  gem 'hirb'
end

group :test do
	gem 'minitest-utils', require: "minitest/utils"
  gem 'rack-test', require: "rack/test"
  gem 'pry'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
