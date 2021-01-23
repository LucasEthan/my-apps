class CreateCraps < ActiveRecord::Migration[6.0]
  def change
    create_table :craps do |t|

      t.timestamps
    end
  end
end
