class CreateSchemes < ActiveRecord::Migration[5.0]
  def change
    create_table :schemes do |t|
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end
