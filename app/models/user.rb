class User < ActiveRecord::Base
  has_one :profile
  has_many :votes
  has_many :songs, :through => :votes

  def dislikes
    # input: user.votes
    # output: favorite genre, least favorite genre
    songs = self.downvotes.map{ |vote| vote.song }
    genres = songs.map{ |song| song.genres }.flatten
    genre_downvote_count = Hash.new(0)
    genres.each{ |genre| genre_downvote_count[genre.name.to_sym] += 1 }
    genre_downvote_count
  end

  def likes
    songs = self.upvotes.map{ |vote| vote.song }
    genres = songs.map{ |song| song.genres }.flatten
    genre_upvote_count = Hash.new(0)
    genres.each{ |genre| genre_upvote_count[genre.name.to_sym] += 1 }
    genre_upvote_count
  end

  def preferences
    preferences = likes
    dislikes.each do |genre, dislikes_count|
      preferences[genre] -= dislikes_count
    end
    preferences
  end

  def upvotes
    self.votes.select{ |vote| vote.upvote?}
  end

  def downvotes
    self.votes.select{ |vote| vote.downvote? }
  end

  def favorite
    preferences.max_by {|genre, count| count}
  end

  def least_favorite
    preferences.min_by {|genre, count| count}
  end
end
