class AddTypeToExerciseInstance < ActiveRecord::Migration[5.0]
  def change
    add_column :exercise_instances, :type, :string
  end
end
