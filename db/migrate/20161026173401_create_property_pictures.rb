class CreatePropertyPictures < ActiveRecord::Migration
  def change
    create_table :property_pictures do |t|
      t.string :name
      t.string :url
      t.references :property

      t.timestamps null: false
    end
  	change_table :properties do |t|
      t.references :property_picture
    end
  end
end
