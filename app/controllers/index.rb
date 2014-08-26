get '/' do
  redirect '/users'
end

get '/users' do
  content_type :json
  User.all.to_json
end

get '/users/:id' do
  content_type :json
  @user = User.find(params[:id])
  @preferences = user.preferences
  @favorite = user.favorite
  @least_favorite = user.least_favorite
  content_type :json
  html = erb :user, :layout => false
  {user:user, preferences:preferences, favorite:favorite, least_favorite:least_favorite, html:html}.to_json
end

post '/users' do
  User.create(username:params[:username], name:params[:username], email:params[:email], password:params[:password])
end

post '/users/:user_id/votes' do
  Vote.create(user_id:params[:user_id], song_id:params[:song_id], type:params[:type])
end

