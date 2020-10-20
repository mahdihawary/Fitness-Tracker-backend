class CreateRoutineExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :routine_exercises do |t|
      t.belongs_to :exercise, null: false, foreign_key: true
      t.belongs_to :routine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
