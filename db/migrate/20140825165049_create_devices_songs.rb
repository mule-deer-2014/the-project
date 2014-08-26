class CreateDevicesSongs < ActiveRecord::Migration
  def change
    create_table :device_songs do |t|
      t.integer :device_id
      t.integer :song_id
      t.boolean :vote, :default => false
    end
  end
end
