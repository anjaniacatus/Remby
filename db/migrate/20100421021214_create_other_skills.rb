class CreateOtherSkills < ActiveRecord::Migration
  def self.up
    create_table :other_skills do |t|
      t.string :title
      t.text :description
      t.integer :cv_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :other_skills
  end
end
