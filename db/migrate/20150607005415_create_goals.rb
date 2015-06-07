class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.text :meaning
      t.integer :progress_percent
      t.boolean :is_active

      t.timestamps
    end
  end
end
