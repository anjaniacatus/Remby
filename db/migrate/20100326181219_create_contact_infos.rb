class CreateContactInfos < ActiveRecord::Migration
  def self.up
    create_table :contact_infos do |t|
      t.integer :contactable_id
      t.string :contactable_type


      t.timestamps
    end
   end

  def self.down
      drop_table :contact_infos
  end
end
