class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.references :resume, foreign_key: true
      t.string :name
      t.string :scholl
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
