class CreateVehicleKilometricStatements < ActiveRecord::Migration
  def change
    create_table :vehicle_kilometric_statements do |t|
      t.references :vehicle, index: true, foreign_key: true
      t.datetime :date
      t.float :mileage
      t.float :use_duration

      t.timestamps null: false
    end
  end
end
