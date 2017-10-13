class CreateExerciseBenchPresses < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_bench_presses do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :difficulty

      t.timestamps
    end
  end
end
