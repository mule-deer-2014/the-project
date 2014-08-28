require 'sinatra'
require 'pp'
require 'sinatra/base'
require 'sinatra/reloader'

post '/events' do
  pp params
end

get '/' do
  pp params
end
