class CreateInterests < ActiveRecord::Migration
  def self.up
    create_table :interests do |t|
      t.text :description
      t.integer :cv_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :interests
  end
end
