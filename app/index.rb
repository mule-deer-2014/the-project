require 'sinatra'
require 'active_record'
# require_relative '../views'

# $LOAD_PATH.unshift(File.expand_path('.'))
# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/cloudofhearts_development')

get '/' do
  # "Helloer"
  erb :index
end
