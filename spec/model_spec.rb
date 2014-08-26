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