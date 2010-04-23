class CreateExperiences < ActiveRecord::Migration
  def self.up
    create_table :experiences do |t|
      t.integer :compagny_id
      t.integer :cv_id
      t.string :jobtitle
      t.integer :job_id
      t.string :duration
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :experiences
  end
end
