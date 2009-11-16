class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :title
      t.string :name
      t.string :level
      t.text :description
      t.references :profile

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
