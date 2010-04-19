class CreateInterests < ActiveRecord::Migration
  def self.up
    create_table :interests do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :interests
  end
end
