class CreateCraps < ActiveRecord::Migration[6.0]
  def change
    create_table :craps do |t|
      t.boolean :win, null: false
      t.integer :rolls, array: true, null: false
      t.timestamps
    end
  end
end
