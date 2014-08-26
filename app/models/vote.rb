class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :song
  belongs_to :user
end
