class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      # t.belongs_to :user
      #t.has_many :genres
    end
  end
end
