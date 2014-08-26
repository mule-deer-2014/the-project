class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :ip_address
    end
  end
end
