class Song < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes
  has_many :users, through: :votes
  belongs_to :genre

  def count_votes
    self.votes.reduce{|sum,vote| sum + vote.votes }
  end

  def vote_type(up_or_down)
    if up_or_down = "up"
      self.votes << Vote.create(votes: 1)
    elsif up_or_down = "down"
      self.votes << Vote.create(votes: -1)
    end
  end

  # def count_votes
  #   self.votes.select{|vote| vote.vote_type == true}.length - self.votes.select{|vote| vote.vote_type == false}.length
  # end

  # def vote_type(up_or_down)
  #   if up_or_down = "up"
  #     self.votes << Vote.create(vote_type: true)
  #   elsif up_or_down = "down"
  #     self.votes << Vote.create(vote_type: false)
  #   end
  # end
end
