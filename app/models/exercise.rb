class Exercise < ApplicationRecord

  validates_presence_of :name, :difficulty
end
