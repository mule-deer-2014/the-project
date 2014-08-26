require_relative '../spec/factories'

user_ids = 20
genre_ids = 5
song_ids = 100
vote_count = 200

user_ids.times do
  FactoryGirl.create(:user)
end

genre_ids.times do
  FactoryGirl.create(:genre)
end

song_ids.times do
  FactoryGirl.create(:song)
end

vote_count.times do
  FactoryGirl.create(:vote, [:upvote, :downvote].sample => [true, false].sample, :user_id => rand(1..user_ids), :song_id => rand(1..song_ids))
end
