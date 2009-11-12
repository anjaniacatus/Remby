class CreateOfferings < ActiveRecord::Migration
  def self.up
    create_table :offerings do |t|
      t.string :title
      t.string :permalink
      t.text :description
      t.datetime :on_line
      t.datetime :dead_line
      t.references :firm

      t.timestamps
    end
  end

  def self.down
    drop_table :offerings
  end
end
