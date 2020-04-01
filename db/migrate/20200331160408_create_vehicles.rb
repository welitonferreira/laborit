class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :value
      t.references :brand, null: false, foreign_key: true
      t.references :model, null: false, foreign_key: true
      t.string :yearModel
      t.string :fuel

      t.timestamps
    end
  end
end
