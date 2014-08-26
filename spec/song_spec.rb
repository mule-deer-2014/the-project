require "spec_helper"

FactoryGirl.define do
  factory :song do
    title "So What"
    artist "Miles Davis"
    genre "Jazz"
  end
end


describe User do

  it "has a valid factory" do
    expect(FactoryGirl.build(:song)).to be_valid
  end

  it "is invalid without a title" do
    expect(FactoryGirl.build(:song, title: nil)).to be_valid
  end

  it "is invalid without a artist" do
    expect(FactoryGirl.build(:song, artist: nil)).to be_valid
  end
end
