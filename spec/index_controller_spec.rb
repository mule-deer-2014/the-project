require "spec_helper"
require_relative "../config/environment"

describe "POST /signup" do
  it "creates a new user" do
    expect {
      post '/signup', user: FactoryGirl.attributes_for(:user)
    }.to change(User, :count)
  end
end


# describe "POST /signin", :type => :controller do
#   it "signs in a new user" do
#     #act
#     post '/signin', user: FactoryGirl.attributes_for(:user)
#     #assert
#     session[:user] = user.id
#   end
# end
