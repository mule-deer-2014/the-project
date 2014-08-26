class Genre < ActiveRecord::Base
  has_many :users
  has_many :votes, through: :user
end

