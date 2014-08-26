require 'faker'
require 'factory_girl'


10.times { User.create(:username => Faker::Lorem.word) }

User.all.each do |user|
	user.upvotes.create()
	user.downvotes.create()
end

Upvote.all.each do |upvote|
	upvote.genres.create(:name => Faker::Lorem.word)
end

Downvote.all.each do |downvote|
	downvote.genres << Genre.find(rand(1..10))
end



####NINA!! I couldn't figure out how to get FactoryGirl to work with
# many to many relationships, so I just commented it out. We can discuss
# this in more detail tomorrow. Love, Katia.


# FactoryGirl.define do
# 	factory :user do
# 		username {Faker::Lorem.word}
# 	end
# 	factory :genre do
# 		name {Faker::Lorem.name}
# 	end
# 	factory :upvote do 
# 		user
# 		genre
# 	end
# 	factory :downvote do
# 		user
# 		genre
# 	end
# end


# 10.times do
# 	user = FactoryGirl.create :user
# 	rand(4).times{
# 		genre = FactoryGirl.create :genre
# 		rand(4).times {
# 			FactoryGirl.create :upvote, :genre => genre
# 		}
# 	}
# end


