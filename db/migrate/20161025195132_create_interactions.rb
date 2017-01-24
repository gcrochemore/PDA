class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :name
      t.references :interactions_type
      t.datetime :date
      t.string :comments
      t.references :property

      t.timestamps null: false
    end
  end
end
