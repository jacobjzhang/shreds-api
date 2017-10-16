class Exercise < ApplicationRecord
  has_many :schemes
  has_many :workouts, :through => :schemes

end
