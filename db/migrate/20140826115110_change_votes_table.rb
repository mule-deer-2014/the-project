class ChangeVotesTable < ActiveRecord::Migration
  def change
    change_table :votes do |t|
      t.rename :type, :vote_type
    end
  end
end
