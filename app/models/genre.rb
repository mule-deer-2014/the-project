class Genre < ActiveRecord::Base
  # Remember to create a migration!
  has_many :songs
end
