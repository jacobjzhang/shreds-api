class Scheme < ApplicationRecord
  has_one :exercise
  belongs_to :workout

  def exercises
    Exercise.where(scheme_id: self.id)
  end

  def set_reps
    { :set => self.set, :reps => self.reps }
  end
end
