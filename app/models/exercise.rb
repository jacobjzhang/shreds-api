module Exercise
  def self.table_name_prefix
    'exercise_'
  end

  def relate
    has_many :schemes
    has_many :workouts, :through => :schemes
  end

  def self.included(base)
    base.relate
  end

end
