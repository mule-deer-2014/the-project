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
  ap ["select_user", "all_users", "select_song", "all_songs", "select_genre", "all_genres", "select_vote", "all_votes"],  options = {:color => {:string => :redish}}
  admin_input = gets.chomp
  case admin_input
    when 'select_user'
      ap 'Please enter user_id' ,  options = {:color => {:string => :blue}}
      user_id = gets.chomp
      redirect "/api/users/#{user_id}"
    when 'all_users'
      redirect '/api/users'
    when 'select_song'
      ap 'Please enter song_id' ,  options = {:color => {:string => :blue}}
      song_id = gets.chomp
      redirect "/api/songs/#{song_id}"
    when 'all_songs'
      redirect '/api/songs'
    when 'select_genre'
      ap 'Please enter genre_id' ,  options = {:color => {:string => :blue}}
      genre_id = gets.chomp
      redirect "/api/genres/#{genre_id}"
    when 'all_genres'
      redirect '/api/genres'
    when 'select_vote'
      ap 'Please enter vote_id' ,  options = {:color => {:string => :blue}}
      vote_id = gets.chomp
      redirect "/api/votes/#{vote_id}"
    when 'all_votes'
      redirect '/api/votes'
  end
  # admin_input <= This is the recursive? call from line 4.
end

# USERS
  get '/api/users/:id' do
    user_id = params[:id]
    user = User.find(user_id)
    content_type :json
    ap user.to_json
  end
  # put below in js app
    # ap "Id: #{user.id}, Name: #{user.name}" 

  get '/api/users' do 
    users = User.all 
    content_type :json 
    ap users.to_json
  end
  # Put below in js app.
    # users.each do |user|
    #     ap "Id: #{user.id}, Name: #{user.name}"
    #     # Change above to a json object'
    # end

# SONGS
  get '/api/songs/:id' do
    song_id = params[:id]
    song = Song.find(song_id)
    content_type :json
    song.to_json
  end 

  get '/api/songs' do 
    songs = Song.all 
    content_type :json
    songs.to_json
  end  

# GENRES
  get '/api/genres/:id' do
    genre_id = params[:id]
    genre = Genre.find(genre_id)
    content_type :json
    genre.to_json
  end

  get '/api/genres' do 
    genres = Genre.all 
    content_type :json
    genres.to_json
  end  

# VOTES
  get '/api/votes/:id' do
    vote_id = params[:id]
    vote = Vote.find(vote_id)
    content_type :json
    vote.to_json
  end

  get '/api/votes' do 
    users = Vote.all 
    content_type :json
    users.to_json
  end

