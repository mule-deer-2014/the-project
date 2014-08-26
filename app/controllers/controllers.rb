require 'sinatra'
require'awesome_print'
# I get the following error if I extrapolate admin_input from /api route. Why?
# SystemStackError - stack level too deep: /Users/MrChan/Desktop/DBC/week_7/the-project/app/controllers/controllers.rb:5
# def admin_input
#  case admin_input
#     when 'select_user'
#       puts 'Please enter user_id'
#       user_id = gets.chomp
#       redirect "/api/users/#{user_id}"
#     when 'all_users'
#       redirect '/api/users'
#   end
# end

# ROUTES
get '/' do 
  redirect '/api'
end

get '/api' do 
  ap 'Hello user!', options = {:color => {:string => :pale}}
  ap 'Welcome to our API!',  options = {:color => {:string => :greenish}}
  ap 'Please enter a command...', options = {:color => {:string => :purple}}
  ap "select_user, all_users",  options = {:color => {:string => :redish}}
  admin_input = gets.chomp
  case admin_input
    when 'select_user'
      ap 'Please enter user_id' ,  options = {:color => {:string => :blue}}
      user_id = gets.chomp
      redirect "/api/users/#{user_id}"
    when 'all_users'
      redirect '/api/users'
  end
  # admin_input <= This is the recursive? call from line 4.
end

get '/api/users/:id' do
  user_id = params[:id]
  user = User.find(user_id)
  ap "Id: #{user.id}, Name: #{user.name}" 
  # Change above to a json object
end

get '/api/users' do 
  users = User.all 
  users.each do |user|
      ap "Id: #{user.id}, Name: #{user.name}"
      # Change above to a json object
  end
end




#EXAMPLE ROUTES FOR NON-API
# get '/users/new' do 
#   puts 'Please enter a new name'
#   user_input = gets.chomp
#   User.create(name: user_input)
# end

# get '/users' do
#   puts 'this is displays all users'
#   users = User.all
#   users.each do |user|
#     puts "Id: #{user.id}, Name: #{user.name}"
#   end
# end

# get '/users/:id' do
#   user_id = params[:id] 
#   user = User.find(user_id)
#   puts "Id: #{user.id}, Name: #{user.name}"
# end