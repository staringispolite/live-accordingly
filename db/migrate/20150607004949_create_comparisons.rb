class CreateComparisons < ActiveRecord::Migration
  def change
    create_table :comparisons do |t|
      t.integer :winning_habit_id
      t.integer :habit_id_1
      t.integer :habit_id_2

      t.timestamps
    end
  end
end
