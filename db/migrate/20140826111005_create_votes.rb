class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |v|
      v.integer  :user_id
      v.boolean  :is_upvote
      v.string   :genres

      v.timestamps
  end
end
