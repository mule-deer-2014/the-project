class CreateDownvotesGenres < ActiveRecord::Migration
  def change
    create_table :downvotes_genres do |t|
      t.integer :downvote_id
      t.integer :genre_id
    end
  end
end
