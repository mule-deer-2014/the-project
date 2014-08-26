class Songs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.belongs_to :genre
    end
  end
end
