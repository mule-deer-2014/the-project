require 'active_record'

class CreateSongsVotes < ActiveRecord::Migration
  def change
    create_table :songs_votes do |t|
      t.integer :song_id
      t.integer :vote_id
      t.timestamps
    end
  end
end
