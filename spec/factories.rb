FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    password_hash Faker::Internet.password
    username Faker::Internet.user_name
    gender ["male","female"].sample
  end

  factory :genre do
    name ["ska,metal,rap,country"].sample
  end

  factory :song do
    name Faker::Lorem.word
  end

  factory :vote do
    upvote
    downvote
    user_id
    song_id
  end
end
