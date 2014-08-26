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
    upvote nil
    downvote nil
    user_id nil
    song_id nil
  end
end
