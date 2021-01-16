class CreateMilitaryTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :military_times do |t|
      t.integer :military_time
      t.string :standard_time

      t.timestamps
    end
  end
end
