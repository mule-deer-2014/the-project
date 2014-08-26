require 'sinatra'
require 'pp'
require 'sinatra/base'
require 'sinatra/reloader'
# require_relative '../../config/environment'

get '/' do
  pp params
end

post '/events' do
  pp params[:type]
  vote = Vote.create(:type => params[:type], :genre => params[:genre])
  p vote

end
