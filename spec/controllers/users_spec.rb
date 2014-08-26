require_relative '../spec_helper'
describe "User controller" do
  before do
    User.destroy_all
  end

  describe "GET /users" do

    it "responds successfully" do
      get '/users'
      expect(last_response.status).to eq(200)
    end
    it "returns all users" do
      user1 = User.create()
      user2 = User.create()
      get '/users'
      expect(last_response.body).to eq(User.all.to_json)
    end
  end

  describe "GET /users/:id" do
    before do
      @user = User.create
    end

    it "responds successfully" do
      get "/users/#{@user.id}"
      expect(last_response.status).to eq(200)
    end

    it "returns the user" do
      get "/users/#{@user.id}"
      @user.to_json
    end

  end
end
