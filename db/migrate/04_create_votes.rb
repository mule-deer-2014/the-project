require 'active_record'

class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :upvote
      t.boolean :downvote
      t.integer :user_id
      t.integer :song_id
      t.timestamps
    end
  end
end
