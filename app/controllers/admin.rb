require 'sinatra'
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
  MusicMatcher.up_votes(votes).to_json
end

get '/users/:id/down_votes' do
  #Get records from DB
  votes = Vote.where(user_id: params[:id])
  #pass those records to our gem
  MusicMatcher.down_votes(votes).to_json
end
