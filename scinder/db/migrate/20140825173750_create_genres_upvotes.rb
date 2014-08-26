class CreateGenresUpvotes < ActiveRecord::Migration
  def change
    create_table :genres_upvotes do |t|
      t.integer :upvote_id
      t.integer :genre_id
    end
  end
end
