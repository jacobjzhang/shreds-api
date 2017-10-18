class Workout < ApplicationRecord
  has_many :schemes
  has_many :exercises, :through => :schemes, dependent: :destroy

  def schemes
    Scheme.where(workout_id: self.id)
  end

  def exercises
    Exercise.where(workout_id: self.id)
  end
end
