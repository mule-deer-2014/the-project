class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
       t.integer :user_id
       t.integer :genre_id
       t.boolean :up_vote, :down_vote
    end
  end
end
