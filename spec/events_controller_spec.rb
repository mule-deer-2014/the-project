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
      post '/songs/:id'
      expect(last_response.status).to eq(200)
    end

    it "should record a vote" do
      #arrange
      song = Song.create(title: "YOLO", song_id: 24)
      user = User.create(name: "Yohan", gender: "male")
       expect{
        post "/songs/#{song.song_id}", {user_id: user.id}
      }.to change{Vote.count}
    end
  end
end