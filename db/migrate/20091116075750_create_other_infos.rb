class CreateOtherInfos < ActiveRecord::Migration
  def self.up
    create_table :other_infos do |t|
      t.string :name
      t.string :permalink
      t.text :description
      t.references :profile

      t.timestamps
    end
  end

  def self.down
    drop_table :other_infos
  end
end
