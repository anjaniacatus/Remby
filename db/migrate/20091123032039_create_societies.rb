class CreateSocieties < ActiveRecord::Migration
  def self.up
    create_table :societies do |t|
      t.string :name
      t.string :baseline
      t.text :description
      t.integer :category
      t.integer :sector

      t.timestamps
    end
  end

  def self.down
    drop_table :societies
  end
end
