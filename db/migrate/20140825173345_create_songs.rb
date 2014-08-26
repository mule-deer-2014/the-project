class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.belongs_to :profile
      t.timestamps
    end
  end
end
