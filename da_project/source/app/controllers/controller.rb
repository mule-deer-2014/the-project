# require 'pg'
# require 'active_record'
# require 'sinatra'
require_relative "../../config/environment"

# system("createdb poundcloud_development")


# db = URI.parse("postgres://localhost/poundcloud_development")

# ActiveRecord::Base.establish_connection(
#   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
#   :host     => db.host,
#   :username => db.user,
#   :password => db.password,
#   :database => db.path[1..-1],
#   :encoding => 'utf8'
# )

# # class CreateVotes < ActiveRecord::Migration
# #   def change
# #     create table :votes do |t|
# #        t.string :name
# #        t.boolean :up_vote, :down_vote
# #     end
# #   end
# # end

# vote = CreateVotes.new("name")


# ActiveRecord::Migrator("path")


# configure do
#   enable :sessions
# end


get "/" do
  "hello world!"
end

get '/devices' do
  #shows a list of all devices
end

get'/device/:id/votes' do
  #show a list of votes per device with genres
end























