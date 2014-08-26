class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :song

  def upvote?
    self.vote_type == "upvote"
  end

  def downvote?
    self.vote_type == "downvote"
  end
end
