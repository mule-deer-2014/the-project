require 'faker'

genders = ["male", "female"]
genre_samples = ["rock", "punk", "pop", "soul", "80s"]

5.times do
  User.create(name: Faker::Name.name, gender: genders.sample)
end

20.times do |x|
  song = Song.create(title: Faker::Company.name, song_id: x+1)

  5.times do
    song.votes.create(user_id: rand(1..5), genre_name: genre_samples.sample, up_vote: true, down_vote: nil)
  end
end
