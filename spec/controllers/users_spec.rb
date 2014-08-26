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
## COME BACK TO ME BABY ##
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

  describe "POST /users" do
    before do
      User.destroy_all
    end
    it "responds successfully" do
      post 'users'
      expect(last_response.status).to be(200)
    end

    it "creates a new user" do
      expect{
        post '/users', username: 'tony'
      }.to change{User.count}.by(1)
    end
  end

  describe User do
    it { should have_many(:songs).through(:votes) }
  end
end
