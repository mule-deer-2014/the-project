require "genre_gem/version"

module GenreGem

  class << self
    def most_upvotes data
      vote_total = {}
      data.each do |vote_data|
        next if vote_data[:type] != 'upvote'
        if vote_total.has_key?(vote_data[:genre])
          vote_total[vote_data[:genre]] += 1
        else
          vote_total[vote_data[:genre]] = 1
        end
      end
      vote_total.max_by{ |k,v| v }[0]
    end

    def most_downvotes data
      vote_total = {}
      data.each do |vote_data|
        next if vote_data[:type] != 'downvote'
        if vote_total.has_key?(vote_data[:genre])
          vote_total[vote_data[:genre]] += 1
        else
          vote_total[vote_data[:genre]] = 1
        end
      end
      p vote_total
      vote_total.max_by{ |k,v| v }[0]
    end

    # def retrieve_threshold
    #   @threshold
    # end

    def threshold_genres data, threshold
      genre_votes = {}
      data.each do |vote_data|
        next if vote_data[:type] != 'upvote'
        if genre_votes.has_key?(vote_data[:genre])
          genre_votes[vote_data[:genre]] += 1
        else
          genre_votes[vote_data[:genre]] = 1
        end
      end
      #possibly change later
      minimum_threshold = (data.length * threshold).ceil
      genre_votes.select {|k,v| v >= minimum_threshold}.map {|k,v| k }
    end
  end

end


#

# database_array_of_hashes = [
# {:user => "user1", :song => "If You Seek Amy", :genre => "Pop", :type => "downvote"},
# {:user => "user2", :song => "MeowMix", :genre => "Rock", :type => "downvote"},
# {:user => "user2", :song => "MeowMix", :genre => "Rock", :type => "downvote"},

# {:user => "user3", :song => "Living on a prayer", :genre => "Rock", :type => "upvote"},
# {:user => "user4", :song => "Ian Bui", :genre => "Rock", :type => "upvote"},
# {:user => "user5", :song => "Jammin Nation", :genre => "Raggae", :type => "upvote"},
# {:user => "user5", :song => "Cypress Hill", :genre => "Rap", :type => "downvote"}

# ]

# p GenreGem.most_downvotes(database_array_of_hashes)
# p GenreGem.threshold_genres(database_array_of_hashes, 0.75)


# # -------------
# GenreGem.most_upvotes(uyfuyfukyfgyiul)

# temp = GenreGem::Whatever.new(array_of_hashes)
# temp.most_upvotes
# temp.most_downvotes




# METHODS
#   - most_upvotes by particular user ... return a genre
#   - most_downvotes by a particular user ... return a genre
#   - set_threshold ... default is X%, we can also change it based on needs of our app
#   - retrieve_threshold ... give threshold number
#   - threshold_genres ... return an array of genres that meet the threshold
