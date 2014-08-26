require 'sinatra'

get '/' do 
  puts 'Hello user!'
  puts 'Welcome to our API!'
  puts 'Please enter a command...'
  @input = gets.chomp
  redirect "/command/#{@input}"
end

get '/command/:input' do
  puts "I'm in command! #{params[:input]}"
end