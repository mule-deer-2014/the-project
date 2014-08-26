new_user = User.create(name: "Matt")
new_genre = Genre.create(name: "Rock")
new_song = Song.create(title: "Hey Jude")
new_genre.songs << new_song
new_votes = Vote.create(votes: 1)
new_user.votes << new_votes
new_song.votes << new_votes

another_user = User.create(name: "Melissa")
another_genre = Genre.create(name: "Alternative")
another_song = Song.create(title: "Sunday Morning")
another_genre.songs << another_song
another_votes = Vote.create(votes: 1)
another_user.votes << another_votes
another_song.votes << another_votes