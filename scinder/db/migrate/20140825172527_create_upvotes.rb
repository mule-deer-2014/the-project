class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      # t.belongs_to :user
      #t.has_many :genres
    end
  end
end
