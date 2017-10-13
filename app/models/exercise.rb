module Exercise
  def self.table_name_prefix
    'exercise_'
  end

  has_many :schemes
  has_many :workouts, :through => :schemes
end
