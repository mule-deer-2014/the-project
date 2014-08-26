class Song < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes
  has_many :users, through: :votes
end
