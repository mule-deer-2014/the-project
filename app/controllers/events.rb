require 'sinatra'

post '/users' do
  user = User.create(name: params[:name], gender: params[:gender])
end

post '/songs' do
  song = Song.create(title: params[:title], song_id: params[:song_id])
end

post '/songs/:id' do
  my_song = Song.find(params[:id])
  if my_song
    my_song.votes.create
end
