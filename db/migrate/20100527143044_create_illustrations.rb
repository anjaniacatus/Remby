class CreateIllustrations < ActiveRecord::Migration
  def self.up
    create_table :illustrations do |t|
      t.string :illustrated_type
      t.integer :illustrated_id
      t.integer :image_id

      t.timestamps
    end
  end

  def self.down
    drop_table :illustrations
  end
end
