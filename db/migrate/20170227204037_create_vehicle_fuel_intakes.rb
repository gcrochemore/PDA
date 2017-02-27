class CreateVehicleFuelIntakes < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_fuel_intakes do |t|
      t.references :vehicle, foreign_key: true
      t.datetime :date
      t.float :volume
      t.float :amount

      t.timestamps
    end
  end
end
