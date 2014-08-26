module MusicMatcher
  def self.up_votes(votes)
    genre_up_votes = Hash.new(0)
    votes.each do |vote|
      if vote.up_vote
        genre_up_votes[vote.genre_name] += 1
      end
    end
    genre_up_votes
  end

  def self.down_votes(votes)
    genre_down_votes = Hash.new(0)
    votes.each do |vote|
      if vote.down_vote
        genre_down_votes[vote.genre_name] += 1
      end
    end
    genre_down_votes
  end

end
