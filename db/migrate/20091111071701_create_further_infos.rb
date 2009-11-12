class CreateFurtherInfos < ActiveRecord::Migration
  def self.up
    create_table :further_infos do |t|
      t.string :name
      t.string :permalink
      t.text :description
      t.integer :profile_id
      t.timestamps
    end
  end

  def self.down
    drop_table :further_infos
  end
end
