require 'factory_girl'
require 'faker'

FactoryGirl.define do 
  
  factory :user do 
    name {Faker::Name.name}
  end

  factory :song do 
    title {Faker::Lorem.sentence}
    genre_id
  end

  factory :genre do 
    name {Faker::Lorem.sentence}
  end

  factory :vote do 
    user_id
    song_id
    votes
  end

end