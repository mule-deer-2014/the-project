class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes
  has_many :songs, through: :votes
end
