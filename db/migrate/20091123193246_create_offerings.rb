class CreateOfferings < ActiveRecord::Migration
  def self.up
    create_table :offerings do |t|
      t.string :ref
      t.string :object
      t.text :conditions
      t.datetime :dead_line
      t.references :society
      t.string :content_type
      t.integer :size
      t.string :filename

      t.timestamps
    end
  end

  def self.down
    drop_table :offerings
  end
end
