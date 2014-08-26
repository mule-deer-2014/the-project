require 'sinatra'

get '/' do 
  redirect '/api'
end

get '/api' do 
  puts 'Hello user!'
  puts 'Welcome to our API!'
  puts 'Please enter a command...'
  puts 'select_user, all_users'
  admin_input = gets.chomp
  case admin_input
    when 'select_user'
      puts 'Please enter user_id'
      user_id = gets.chomp
      redirect "/api/users/#{user_id}"
    when 'all_users'
      redirect '/api/users'
  end
end

get '/api/users/:id' do
  user_id = params[:id]
  user = User.find(user_id)
  puts "Id: #{user.id}, Name: #{user.name}"
  # Change above to a json object
end

get '/api/users' do 
  users = User.all 
  users.each do |user|
    puts "Id: #{user.id}, Name: #{user.name}"
  end
end

# ROUTES FOR NON-API
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