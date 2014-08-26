require_relative '../spec/factories'

10.times do
  FactoryGirl.create(:user)
end
