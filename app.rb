['sinatra', 'pry-byebug', 'better_errors'].each { |mod| require mod }
require 'sinatra/reloader' if development?

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path(__dir__)
end

get '/' do
  'I am Tai'
end
