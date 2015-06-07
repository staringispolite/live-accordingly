class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.integer :weekly_frequency

      t.timestamps
    end
  end
end
