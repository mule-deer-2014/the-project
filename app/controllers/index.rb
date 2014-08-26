get '/' do

end

get '/users' do
  content_type :json
  User.all.to_json
end

get '/users/:id' do
  content_type :json
  user = User.find(params[:id])
  # votes = user.votes
  User.find(params[:id]).to_json
end

post '/users' do
  User.create(username:params[:username], name:params[:username], email:params[:email], password:params[:password])
end

post '/users/:user_id/votes' do
  Vote.create(user_id:params[:user_id], song_id:params[:song_id], type:params[:type])
end

