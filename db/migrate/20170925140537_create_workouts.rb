class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :created_by
      t.date :created_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
