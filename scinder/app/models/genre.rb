class Genre < ActiveRecord::Base
  has_and_belongs_to_many :upvotes
  has_and_belongs_to_many :downvotes
end
