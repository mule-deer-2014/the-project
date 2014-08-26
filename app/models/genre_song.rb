class GenreSong < ActiveRecord::Base
  # Remember to create a migration!
  has_and_belongs_to_many :songs
  has_and_belongs_to_many :genres
end

