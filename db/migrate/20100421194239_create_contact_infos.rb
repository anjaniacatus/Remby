class CreateContactInfos < ActiveRecord::Migration
  def self.up
    create_table :contact_infos do |t|
      t.string :value
      t.string :value_format
      t.text :description
      t.string :contactable_type
      t.integer :contactable_id
     
      t.timestamps
    end
  end

  def self.down
    drop_table :contact_infos
  end
end
