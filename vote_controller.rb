require 'sinatra'
require 'sinatra/activerecord'
require 'thin'
require './config/environments'

get '/' do
  "Yay! My bike is fixed!"
end


get '/song' do
  if sessions[:user_id]
    # serve them a song
end

# create a new vote
post '/users/:id/votes' do
  if params[:vote_type] == "upvote"
    is_upvote = true
  else
    is_upvote = false
  end

  Vote.create({user_id = params[:id], is_upvote = some_var, genres = params[:genres]})
end
