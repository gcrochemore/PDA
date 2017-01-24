class CreateInteractionsTypes < ActiveRecord::Migration
  def change
    create_table :interactions_types do |t|
      t.string :name
      t.string :icon
      
      t.timestamps null: false
    end
  end
end
