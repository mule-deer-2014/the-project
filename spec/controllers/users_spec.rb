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
    it { should have_many(:votes)}
    it { should have_many(:songs).through(:votes) }
    it { should have_one(:profile) }
  end

  describe Song do
    it { should belong_to(:profile) }
    it { should have_many(:votes) }
    it {should have_many(:users).through(:votes) }
    it {should have_and_belong_to_many(:genres)}
  end

  describe Profile do
    it { should belong_to(:user) }
    it { should have_many(:songs) }
  end

  describe Genre do
    it {should have_and_belong_to_many(:songs)}
  end
end


