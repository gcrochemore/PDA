class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :name
      t.string :url
      t.string :publisher
      t.datetime :date
      t.float :price
      t.references :property

      t.timestamps null: false
    end
  end
end
