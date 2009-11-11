class CreateQualifications < ActiveRecord::Migration
  def self.up
    create_table :qualifications do |t|
      t.string :name
      t.string :school
      t.date :obtain_at
      t.integer :study_duration
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :qualifications
  end
end
