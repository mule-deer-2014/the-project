require 'sinatra'

post '/users' do
  user = User.create(name: params[:name], gender: params[:gender])
end

post '/songs' do
  song = Song.create(title: params[:title], song_id: params[:song_id])
end

post '/votes' do
  song = Song.find(params[:song_id])
  if song
    params[:genres].each do |genre|
      vote = song.votes.new
      vote.user_id = params[:user_id]
      vote.song_id = params[:song_id]
      vote.genre_name = genre
      vote.up_vote = params[:up_vote] if params[:up_vote] != nil
      vote.down_vote = params[:down_vote] if params[:down_vote] != nil
      vote.save
    end
  end
end
