class CreateEducationInformations < ActiveRecord::Migration
  def self.up
    create_table :education_informations do |t|
      t.string :speciality
      t.text :details
      t.date :started_on_year
      t.integer :study_duration
      t.string :graduation
      t.text :comment
      t.string :permalink
      t.references :domain
      t.references :school
      t.references :profile

      t.timestamps
    end
  end

  def self.down
    drop_table :education_informations
  end
end
