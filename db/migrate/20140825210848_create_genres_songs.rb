class CreateGenresSongs < ActiveRecord::Migration
  def change
    create_table :genres_songs do |t|
      t.belongs_to :genre
      t.belongs_to :song
    end
  end
end
