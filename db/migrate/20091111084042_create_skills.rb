class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :permalink
      t.string :name
      t.string :level
      t.text :description
      t.integer :profile_id
      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
