require 'bundler/inline'

gemfile do
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'pry'
end

Minitest::Reporters.use!

require 'minitest/autorun'
