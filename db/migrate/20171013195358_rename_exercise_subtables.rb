class RenameExerciseSubtables < ActiveRecord::Migration[5.0]
  def change
    rename_table :exercise_bench_presses, :bench_presses
    rename_table :exercise_squats, :squats
  end
end
