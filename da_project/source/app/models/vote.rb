class Vote < ActiveRecord::Base
  belongs_to :user
  has_many :genres
end

