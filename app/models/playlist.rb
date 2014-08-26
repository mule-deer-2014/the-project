class Playlist < ActiveRecord::Base
  # Remember to create a migration!
  has_and_belongs_to_many :users
  has_and_belongs_to_many :songs
end
