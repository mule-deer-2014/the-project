require 'sinatra'
require_relative '../../lib/music_matcher.rb'

get '/' do
  redirect '/users'
end

get '/users' do
  @users = User.all
  erb :index
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :user
end

get '/users/:id/up_votes' do
  #Get records from DB
  votes = Vote.where(user_id: params[:id])
  #pass those records to our gem
  matches = MusicMatcher.up_votes(votes)
  p matches
  erb :up_votes, layout: false, :locals => {votes: matches}

end

get '/users/:id/down_votes' do
  #Get records from DB
  votes = Vote.where(user_id: params[:id])
  #pass those records to our gem
  matches = MusicMatcher.down_votes(matches)

end
