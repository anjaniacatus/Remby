class CreateOfferings < ActiveRecord::Migration
  def self.up
    create_table :offerings do |t|
      t.string :name
      t.text :description
      t.string :author
      t.datetime :Date

      t.timestamps
    end
  end

  def self.down
    drop_table :offerings
  end
end
