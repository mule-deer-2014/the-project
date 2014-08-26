class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id, :song_id
      t.string :genre_name
      t.boolean :up_vote, :down_vote
    end
  end
end
