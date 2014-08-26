require "spec_helper"

FactoryGirl.define do
  factory :user do
    username "ekeric13"
    password "stargazer10"
    name "Eric Kennedy"
    device_id "123.45.6789"
  end
end


describe User do

  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without a username" do
    expect(FactoryGirl.build(:user, username: nil)).to be_valid
  end

  it "is invalid without a password" do
    expect(FactoryGirl.build(:user, password: nil)).to be_valid
  end
end
