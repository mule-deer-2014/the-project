FactoryGirl.define do
  factory :event, class: Hash do
    session_id Faker::Internet.ip_v6_address

    factory :upvote do
      type "upvote"

      factory :upvote_single do
        genre ["salsa"]
      end

      factory :upvote_plural do
        genre ["klezmer", "punk"]
      end
    end

    factory :downvote do
      type "downvote"

      factory :downvote_single do
        genre ["salsa"]
      end

      factory :downvote_plural do
        genre ["klezmer", "punk"]
      end
    end
  end
end


