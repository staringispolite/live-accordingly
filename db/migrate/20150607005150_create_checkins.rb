class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :habit_id
      t.datetime :time
      t.integer :happiness_score

      t.timestamps
    end
  end
end
