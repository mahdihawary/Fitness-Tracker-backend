class AddColumnToExercise < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :kind, :string
  end
end
