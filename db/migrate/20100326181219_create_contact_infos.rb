class CreateContactInfos < ActiveRecord::Migration
  def self.up
    create_table :contact_infos do |t|
      t.integer :contactable_id
      t.string :contactable_type
      t.integer :value_format
      t.string :value
      t.string :localisation

      t.timestamps
    end
    ContactInfo.create_translation_table! :description => :string
 end

  def self.down
    ContactInfo.drop_translation_table!
    drop_table :contact_infos
  end
end
