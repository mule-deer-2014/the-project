require_relative '../spec_helper'
require_relative '../factories'

describe 'User' do
  before do
    User.destroy_all
    Song.destroy_all
    Vote.destroy_all
    Genre.destroy_all
    genres = ["jazz", "pop", "rock", "metal", "punk", "reggae", "ska", "classical", "hip-hop", "rap", "latin", "world"]

    @user = User.create(username: Faker::Internet.user_name)
    @song1 = Song.create(title: Faker::Lorem.word )
    @genre1 = Genre.create(name: genres.sample)
    @song1.genres << @genre1
    @song2 = Song.create(title: Faker::Lorem.word )
    @genre2 = Genre.create(name: genres.sample)
    @song2.genres << @genre2
    @vote1 = Vote.create(vote_type:"upvote", user_id:@user.id, song_id:@song1.id)
    @vote2 = Vote.create(vote_type:"downvote", user_id:@user.id, song_id:@song2.id)
    @user.reload
    @song1.reload
    @song2.reload
  end

  it 'can return user likes' do
    expect(@user.likes).to eq({@song1.genres.first.name.to_sym => 1})
  end
end
