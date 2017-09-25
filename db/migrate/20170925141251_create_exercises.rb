class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :dificulty
      t.belongs_to :author, index: true

      t.timestamps
    end
  end
end
