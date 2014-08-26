class Votes < ActiveRecord::Migration
  def change
    t.integer :user_id
    t.integer :song_id
    t.integer :votes
  end
end
