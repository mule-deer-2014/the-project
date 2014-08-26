require 'httparty'
class UserInfo
	def initialize(user_id)
		@user_id = user_id
	end

	def best_genre()
		HTTParty.get("http://localhost:9393/users/#{@user_id}/bestgenre").parsed_response
	end

	def worst_genre()
		HTTParty.get("http://localhost:9393/users/#{@user_id}/worstgenre").parsed_response
	end
end