class DeviceSong < ActiveRecord::Base
  has_many :devices
  has_many :songs
end
