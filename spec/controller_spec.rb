require_relative 'spec_helper.rb'

describe 'controllers.rb' do 
  describe '/' do 
    it 'exists' do 
      get '/'
      expect(last_response.status).to eq(302)
    end
  end

  describe '/api' do 
    # How do I test a conditional?
  end

  describe '/api/users/:id' do 
    # This route takes a params. What is the setup?
  end

  describe '/api/users' do
    #This route returns a json object. How do I test that?
  end
end