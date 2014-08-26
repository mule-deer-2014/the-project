class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :songs


  def self.getMetrics
  end

end
