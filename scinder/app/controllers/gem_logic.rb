get '/users/:id/bestgenre' do
	genre_ratings = {}
	user = User.find(params[:id])
	Genre.all.each do |genre|
		genre_ratings["#{genre.name}"] = 0
	end
	# genre_ratings
	user.upvotes.each do |upvote|
		genres = upvote.genres
		genres.each do |genre|
			genre_ratings["#{genre.name}"] += 1
		end
	end
	genre_ratings.each { |genre_name, upvotes| return genre_name if upvotes == genre_ratings.values.max }
end

get '/users/:id/worstgenre' do
	genre_ratings = {}
	user = User.find(params[:id])
	Genre.all.each do |genre|
		genre_ratings["#{genre.name}"] = 0
	end
	user.downvotes.each do |downvote|
		genres = downvote.genres
		genres.each do |genre|
			genre_ratings["#{genre.name}"] += 1
		end
	end
	genre_ratings.each { |genre_name, upvotes| return genre_name if upvotes == genre_ratings.values.max }
end

get '/' do
	"Hello World"
end