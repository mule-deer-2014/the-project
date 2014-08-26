require_relative 'spec_helper.rb'

describe 'models' do
  before(:each) do
    User.destroy_all
  end

  describe 'User model' do
    it 'is valid with a name' do
      valid_user = User.create(name: "Valid")
      expect(User.all.count).to eq(1)
    end

    it 'is invalid w/o a name' do
      invalid_user = User.create
      expect(User.all.count).to eq(1)
    end
  end

  describe 'Vote model' do
  end

  describe 'Song model' do
  end

  describe 'Genre model' do
  end
end


# require_relative 'spec_helper.rb'
# require 'factory_girl'

# describe 'models' do
#   before(:each) do
#     User.destroy_all
#   end

#   describe 'User model' do
#     it 'creates an object' do
#       valid_user = FactoryGirl.build(:user)
#       expect(valid_user.new_record?).to eq(true)
#     end

#     # it 'has vote association' do
#     #   valid_user = FactoryGirl.build(:user)
#     #   expect(valid_user.votes.new_record?).to eq(true)
#     # end
#     # it 'is invalid w/o a name' do
#     #   invalid_user = User.create
#     #   expect(User.all.count).to eq(1)
#     # end
#   end

#   describe 'Vote model' do
#     # it 'has user association' do
#     #   valid_vote = FactoryGirl.build(:vote)
#     #   expect(valid_vote.user.new_record?).to eq(true)
#     # end
#   end

#   describe 'Song model' do
#     it 'has genre association' do
#       valid_song = FactoryGirl.build(:song)
#       expect(valid_song.genre.new_record?).to eq(true)
#     end
#   end

#   describe 'Genre model' do
#   end
# end
