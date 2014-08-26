class Songs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :genre_id
    end
  end
end
