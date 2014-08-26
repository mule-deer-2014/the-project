class CreateGenresDownvotes < ActiveRecord::Migration
  def change
    create_table :genres_downvotes do |t|
      t.integer :downvote_id
      t.integer :genre_id
    end
  end
end
