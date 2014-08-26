class Votes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :song
      t.integer :votes
    end
  end
end
