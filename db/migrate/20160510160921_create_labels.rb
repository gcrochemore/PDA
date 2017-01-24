class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :name
      t.references :parent_label, references: :labels
      t.boolean :activated

      t.timestamps
    end
  end
end