require 'active_record'

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :username
      t.string :gender
      t.timestamps
    end
  end
end
