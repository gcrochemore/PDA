class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :house_number
      t.string :street
      t.string :city
      t.string :postal_code
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
