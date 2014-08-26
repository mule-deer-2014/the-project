require 'sinatra'
require 'sinatra/activerecord'
require 'thin'

get '/' do
  "Yay! My bike is fixed!"
end
