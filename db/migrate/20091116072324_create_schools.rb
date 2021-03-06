class CreateSchools < ActiveRecord::Migration
  def self.up
    create_table :schools do |t|
      t.string :ref
      t.string :name
      t.text :description
      t.date :founded_on_year

      t.timestamps
    end
  end

  def self.down
    drop_table :schools
  end
end
