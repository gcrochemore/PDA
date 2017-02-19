class CreateResumeHasSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :resume_has_skills do |t|
      t.references :resume, foreign_key: true
      t.references :skill, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
