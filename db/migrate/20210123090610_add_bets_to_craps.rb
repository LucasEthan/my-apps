class AddBetsToCraps < ActiveRecord::Migration[6.0]
  def change
    add_column :craps, :bet, :integer, null: false
  end
end
