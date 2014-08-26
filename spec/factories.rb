require 'factory_girl'
require 'faker'

FactoryGirl.define do

  factory :user do
    name {Faker::Name.name}
  end

  factory :song do
    title {Faker::Lorem.sentence}
    genre
  end

  factory :genre do
    name {Faker::Lorem.sentence}
  end

  factory :vote do
    votes {(1..10).to_a.sample}
    song
    user
  end

end
