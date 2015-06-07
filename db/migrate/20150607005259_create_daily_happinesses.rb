class CreateDailyHappinesses < ActiveRecord::Migration
  def change
    create_table :daily_happinesses do |t|
      t.datetime :time
      t.string :happiness_score

      t.timestamps
    end
  end
end
