class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.string :name
      t.string :level
      t.text :comment
      t.references :profile
      t.timestamps
    end
  end

  def self.down
    drop_table :languages
  end
end
