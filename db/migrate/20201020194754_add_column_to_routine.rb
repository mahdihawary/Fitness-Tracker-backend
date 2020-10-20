class AddColumnToRoutine < ActiveRecord::Migration[6.0]
  def change
    add_reference :routines, :user, null: false, foreign_key: true
  end
end
