require_relative '../spec_helper'

describe "GET /users" do
  before do
    User.destroy_all
  end

  it "responds successfully" do
    get '/users'
    expect(last_response.status).to eq(200)
  end
  # it "returns all users" do
  #   user1 = User.create()
  #   user2 = User.create()

  #   get '/users'
  #   expect(res)
  # end
end
