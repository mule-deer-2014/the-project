require_relative "../../config/environment"

get "/" do
  erb :index
end

post "/signin" do
  user = User.find_by_username(params[:username])
  session[:user] = user.id

  p params
end

post "/signup" do
  user = User.create(username: params[:username], password: params[:password], name: params[:name])
  session[:user] = user.id

  user.to_json
end


