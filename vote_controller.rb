require 'sinatra'
require 'sinatra/activerecord'
require 'thin'
require './config/environments'

get '/' do
  "Yay! My bike is fixed!"
end
