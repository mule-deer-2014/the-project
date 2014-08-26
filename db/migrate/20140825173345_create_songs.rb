class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :user

      t.string :soundcloud_id
      t.string :title
      t.string :artist
      t.timestamps
    end
  end
end
