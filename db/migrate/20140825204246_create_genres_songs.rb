class CreateGenresSongs < ActiveRecord::Migration
  def change
    create_table :genres_songs do |t|
      t.integer :song_id
      t.integer :genre_id
      t.timestamps
    end
  end
end
