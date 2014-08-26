require_relative '../spec/factories'

user = FactoryGirl.create :user

10.times do
  song = FactoryGirl.create :song
  (1..4).to_a.sample.times do
    song.genres << FactoryGirl.create :genre
  end
  FactoryGirl.create :vote, :user => user, :song => song
end
