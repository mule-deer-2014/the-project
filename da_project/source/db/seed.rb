require 'faker'
require 'factory_girl'

#create usernames for devices
10.times { Device.create (:username => Faker::Lorem.word) }

#create genres

#create votes for genres in devices


