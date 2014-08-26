require 'factory_girl'
require 'faker'

FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    password { Faker::Internet.password }
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end

  factory :song do
    title { Faker::Lorem.word }
    artist { Faker::Name.name }
  end

  factory :genre do
    name {["jazz", "pop", "rock", "metal", "punk", "reggae", "ska", "classical", "hip-hop", "rap", "latin", "world"].sample}
    songs
  end

  factory :vote do
    type {['upvote', 'downvote'].sample}
    user
    song
  end
end

