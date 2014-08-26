class Song < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many :votes
  has_many :users, :through => :votes
  belongs_to :profile



end
