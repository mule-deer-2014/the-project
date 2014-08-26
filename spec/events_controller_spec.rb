require 'spec_helper'

describe 'Events Controller' do
  describe 'Create user' do
    it 'Should respond ok' do
      #arrange
      #act
      post '/users', {name: "Yohan", gender: "male"}
      #assert
      expect(last_response.status).to eq(200)
    end

    it 'Should create and save new user to db' do
      #arrange
      #act
      #assert
      expect{
        post '/users', {name: "Yohan", gender: "male"}
      }.to change{User.count}
    end
  end

  describe "Create Song" do
    it 'Should respond ok' do
      post '/songs', {title: "YOLO", song_id: 24}
      #assert
      expect(last_response.status).to eq(200)
    end

    it 'Should create and save new user to db' do
      #arrange
      #act
      #assert
      expect{
        post '/songs', {title: "YOLO", song_id: 24}
      }.to change{Song.count}
    end
  end

  describe "Song Votes" do
    it "Should respond ok" do
      song = Song.create(title: "YOLO", song_id: 24)
      user = User.create(name: "Yohan", gender: "male")

      post '/votes', {user_id: user.id, song_id: song.song_id, genres: ["rock", "punk-rock"], up_vote: true}
      expect(last_response.status).to eq(200)
    end

    it "should record a vote" do
      #arrange
      song = Song.create(title: "YOLO", song_id: 24)
      user = User.create(name: "Yohan", gender: "male")
       expect{
        post "/votes", {user_id: user.id, song_id: song.song_id, genres: ["rock", "punk-rock"], up_vote: true}
      }.to change{Vote.count}
    end

    it "should record an up_vote" do
      #arrange
      song = Song.create(title: "YOLO", song_id: 24)
      user = User.create(name: "Yohan", gender: "male")

      post "/votes", {user_id: user.id, song_id: song.song_id, genres: ["rock", "punk-rock"], up_vote: true}

      expect(Vote.last.up_vote).to eq(true)
      expect(Vote.last.down_vote).to eq(nil)
    end

    it "should record an down_vote" do
      #arrange
      song = Song.create(title: "YOLO", song_id: 24)
      user = User.create(name: "Yohan", gender: "male")

      post "/votes", {user_id: user.id, song_id: song.song_id, genres: ["rock", "punk-rock"], down_vote: true}

      expect(Vote.last.up_vote).to eq(nil)
      expect(Vote.last.down_vote).to eq(true)
    end
  end
end
