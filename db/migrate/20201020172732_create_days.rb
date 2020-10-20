class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :exercise, null: false, foreign_key: true
      t.date :date
      t.integer :weight
      t.integer :rep
      t.integer :set
      t.float :distance
      t.integer :time

      t.timestamps
    end
  end
end
