class AddColumnsToScheme < ActiveRecord::Migration[5.0]
  def change
    add_column :schemes, :workout_id, :integer
    add_column :schemes, :exercise_id, :integer
  end
end
