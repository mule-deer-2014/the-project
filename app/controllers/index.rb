get '/users' do
  content_type :json
  User.all.to_json
end

get '/users/:id' do
  content_type :json
  User.find(params[:id]).to_json
end
