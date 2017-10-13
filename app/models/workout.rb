class Workout < ApplicationRecord
  has_many :schemes
  has_many :exercises, :through => :schemes, dependent: :destroy
end
