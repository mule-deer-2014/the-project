class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :genre_id
      t.integer :user_id
      t.integer :upvotes
      t.integer :downvotes
    end
  end
end
