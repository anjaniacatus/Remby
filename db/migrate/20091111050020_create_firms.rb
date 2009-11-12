class CreateFirms < ActiveRecord::Migration
  def self.up
    create_table :firms do |t|
      t.string :name
      t.string :permalink
      t.string :baseline
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :firms
  end
end
