require 'sinatra'

get '/' do 
  redirect '/api'
end

get '/api' do 
  puts 'Hello user!'
  puts 'Welcome to our API!'
  puts 'Please enter a command...'
  admin_input = gets.chomp
  case admin_input
    when 'new'
      redirect '/api/new'
    when 'edit'
      redirect '/api/edit'
  end
end

get '/api/new' do 
  puts 'this is new'
end

get '/api/edit' do
  puts 'this is edit'
end