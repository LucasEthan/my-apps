class CreateFunds < ActiveRecord::Migration[6.0]
  def change
    create_table :funds do |t|
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
